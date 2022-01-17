using System;
using System.IO;
namespace Bulkan
{
	using internal Bulkan;

	internal class Libdl
	{
		[Import("libdl")]
		public static extern int dlopen(char8* fileName, int flags);

		[Import("libdl")]
		public static extern int dlsym(int handle, char8* name);

		[Import("libdl")]
		public static extern int dlclose(int handle);

		[Import("libdl")]
		public static extern char8* dlerror();

		public const int RTLD_NOW = 0x002;
	}

	abstract class NativeLibrary : IDisposable
	{
		private readonly String mLibraryName;
		private readonly int mLibraryHandle;
		internal VkInstance mInstance;

		public int NativeHandle => mLibraryHandle;

		public this(String libraryName)
		{
			mLibraryName = libraryName;

			mLibraryHandle = LoadLibrary(mLibraryName);
			if (mLibraryHandle == default)
			{
				Runtime.FatalError(scope $"Could not load {libraryName}.");
			}
		}

		public abstract int LoadLibrary(StringView libraryName);

		public abstract void FreeLibrary(int libraryHandle);

		public abstract void LoadFunction(StringView functionName, out void* handle);

		public void LoadFunction<T>(StringView name, out T field)
		{
			void* funcPtr = null;
			LoadFunction(name, out funcPtr);

			if (funcPtr == null)
			{
				if (mInstance != 0)
				{
					funcPtr = VulkanNative.vkGetInstanceProcAddr(mInstance, name.Ptr);
				}
			}

			if (funcPtr != null)
			{
				field = *(T*)(void*)(int*)&funcPtr;
			} else
			{
				field = default;
				Console.WriteLine(scope $"Error loading function {name}");
			}
		}

		public void Dispose()
		{
			FreeLibrary(mLibraryHandle);
		}

		public static void Load(String libraryName, out NativeLibrary handle)
		{
			handle = ?;

#if BF_PLATFORM_WINDOWS
			handle = new WindowsNativeLibrary(libraryName);
#elif BF_PLATFORM_LINUX || BF_PLATFORM_MACOS
			handle = new UnixNativeLibrary(libraryName);
#else
			Runtime.FatalError("Unsupported platform.");
#endif

		}

		private class WindowsNativeLibrary : NativeLibrary
		{
			public this(String libraryName) : base(libraryName)
			{
			}
			public override int LoadLibrary(StringView libraryName)
			{
				var handle = System.Windows.LoadLibraryA(libraryName.Ptr);
				return (int)handle;
			}

			public override void FreeLibrary(int libraryHandle)
			{
				System.Windows.FreeLibrary((System.Windows.HInstance)libraryHandle);
			}

			public override void LoadFunction(StringView functionName, out void* handle)
			{
				handle = System.Windows.GetProcAddress((System.Windows.HModule)NativeHandle, functionName.Ptr);
			}
		}

		private class UnixNativeLibrary : NativeLibrary
		{
			public this(String libraryName) : base(libraryName)
			{

			}

			public override int LoadLibrary(StringView libraryName)
			{
				Libdl.dlerror();
				int handle = Libdl.dlopen(libraryName.Ptr, Libdl.RTLD_NOW);
				if (handle == 0 && !Path.IsPathRooted(libraryName))
				{
					
				    String baseDir = scope String();
					Environment.GetExecutableFilePath(baseDir);
				    if (!String.IsNullOrWhiteSpace(baseDir))
				    {
						String localPath = scope String();
				       	Path.InternalCombine(localPath, baseDir, libraryName);
				        handle = Libdl.dlopen(localPath, Libdl.RTLD_NOW);
				    }
				}

				return handle;
			}

			public override void FreeLibrary(int libraryHandle)
			{
				Libdl.dlclose(libraryHandle);
			}

			public override void LoadFunction(StringView functionName, out void* handle)
			{
				handle = (void*)Libdl.dlsym(NativeHandle, functionName.Ptr);
			}
		}
	}
}
