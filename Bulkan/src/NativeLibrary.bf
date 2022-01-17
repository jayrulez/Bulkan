using System;
namespace Bulkan
{
	abstract class NativeLibrary : IDisposable
	{
		private readonly String mLibraryName;
		private readonly uint64 mLibraryHandle;
		internal VkInstance mInstance;

		public uint64 NativeHandle => mLibraryHandle;

		public this(String libraryName)
		{
			mLibraryName = libraryName;

			mLibraryHandle = LoadLibrary(mLibraryName);
			if (mLibraryHandle == default)
			{
				Runtime.FatalError(scope $"Could not load {libraryName}.");
			}
		}

		public abstract uint64 LoadLibrary(StringView libraryName);

		public abstract void FreeLibrary(uint64 libraryHandle);

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
				//Console.WriteLine("Error loading function");
				field = default;
				//Console.WriteLine($"Error loading function {name}");
			}
		}

		public void Dispose()
		{
			FreeLibrary(mLibraryHandle);
		}

		public static void Load(String libraryName, out NativeLibrary handle)
		{
			handle = new WindowsNativeLibrary(libraryName);
		}

		private class WindowsNativeLibrary : NativeLibrary
		{
			public this(String libraryName) : base(libraryName)
			{
			}
			public override uint64 LoadLibrary(StringView libraryName)
			{
				var handle = System.Windows.LoadLibraryA(libraryName.Ptr);
				return (uint64)handle;
			}

			public override void FreeLibrary(uint64 libraryHandle)
			{
				System.Windows.FreeLibrary((System.Windows.HInstance)libraryHandle);
			}

			public override void LoadFunction(StringView functionName, out void* handle)
			{
				handle = System.Windows.GetProcAddress((System.Windows.HModule)NativeHandle, functionName.Ptr);
			}
		}
	}
}
