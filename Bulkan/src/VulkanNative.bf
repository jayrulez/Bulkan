using System;
using System.Collections;
namespace Bulkan
{
	public static class VulkanNative
	{
		public static uint32 VK_API_VERSION_VARIANT(uint32 version) => ((uint32)(version) >> 29);
		public static uint32 VK_API_VERSION_MAJOR(uint32 version) => (((uint32)(version) >> 22) & 0x7FU);
		public static uint32 VK_API_VERSION_MINOR(uint32 version) => (((uint32)(version) >> 12) & 0x3FFU);
		public static uint32 VK_API_VERSION_PATCH(uint32 version) => ((uint32)(version) & 0xFFFU);

		public static uint32 VK_MAKE_API_VERSION(uint32 variant, uint32 major, uint32 minor, uint32 patch) => ((((uint32)(variant)) << 29) | (((uint32)(major)) << 22) | (((uint32)(minor)) << 12) | ((uint32)(patch)));

		public static uint32 VK_API_VERSION_1_0 => VK_MAKE_API_VERSION(0, 1, 0, 0);
		public static uint32 VK_API_VERSION_1_1 => VK_MAKE_API_VERSION(0, 1, 1, 0);
		public static uint32 VK_API_VERSION_1_2 => VK_MAKE_API_VERSION(0, 1, 2, 0);
		public static uint32 VK_API_VERSION_1_3 => VK_MAKE_API_VERSION(0, 1, 3, 0);

		private const CallingConventionAttribute.Kind CallConv = .Stdcall;

		private static NativeLibrary NativeLib;

		private static bool Initialized = false;

		private static List<StringView> LoadedFunctions = new .() ~ delete _;

		private static List<StringView> PreInstanceFunctions = new .()
			{
				"vkCreateInstance",
				"vkEnumerateInstanceExtensionProperties",
				"vkEnumerateInstanceLayerProperties",
				"vkGetInstanceProcAddr"
			} ~ delete _;

		private static List<StringView> InstanceFunctions = new .()
			{
				"vkGetPhysicalDeviceSurfaceFormatsKHR",
				"vkGetPhysicalDeviceSurfaceSupportKHR",
				"vkGetPhysicalDeviceSurfaceCapabilitiesKHR",
				"vkGetPhysicalDeviceSurfacePresentModesKHR",
				"vkDestroySurfaceKHR",
				"vkGetDeviceProcAddr",
				"vkDestroyInstance",
				"vkDestroyDevice",
				"vkGetPhysicalDeviceMemoryProperties",
				"vkGetDeviceGroupPeerMemoryFeatures",
				"vkCreateDevice",
				"vkGetDeviceQueue",
				"vkEnumeratePhysicalDeviceGroups",
				"vkGetPhysicalDeviceProperties",
				"vkGetPhysicalDeviceProperties2",
				"vkGetPhysicalDeviceFeatures",
				"vkGetPhysicalDeviceFeatures2",
				"vkGetPhysicalDeviceQueueFamilyProperties",
				"vkEnumerateDeviceExtensionProperties",
				"vkCreateDebugReportCallbackEXT"
#if BF_PLATFORM_WINDOWS
				"vkCreateWin32SurfaceKHR",
#endif
			} ~ delete _;

		static this()
		{
		}

		static ~this()
		{
			NativeLib.Dispose();
			delete NativeLib;
		}

		public static Result<void> Initialize(String libraryName = null)
		{
			if (!Initialized)
			{
				LoadNativeLibrary(libraryName, out NativeLib);

				Initialized = true;
			}

			return .Ok;
		}

		public static void SetLoadFunctionErrorCallBack(LoanFunctionErrorCallBack callback)
		{
			NativeLib.LoanFunctionErrorCallBack = callback;
		}

		public static Result<void> LoadPreInstanceFunctions(List<String> additionalFunctions = null)
		{
			if (additionalFunctions != null)
			{
				for (var func in additionalFunctions)
				{
					if (func != null && !PreInstanceFunctions.Contains(func))
					{
						PreInstanceFunctions.Add(func);
					}
				}
			}

			LoadFunctions(PreInstanceFunctions);

			LoadedFunctions.AddRange(PreInstanceFunctions);

			return .Ok;
		}

		public static Result<void> LoadInstanceFunctions(VkInstance instance, List<String> additionalFunctions = null)
		{
			if (additionalFunctions != null)
			{
				for (var func in additionalFunctions)
				{
					if (func != null && !InstanceFunctions.Contains(func))
					{
						InstanceFunctions.Add(func);
					}
				}
			}

			SetInstance(instance);

			LoadFunctions(InstanceFunctions);

			LoadedFunctions.AddRange(InstanceFunctions);

			return .Ok;
		}

		public static Result<void> LoadPostInstanceFunctions(VkInstance? instance = null)
		{
			LoadAllFuncions(instance, LoadedFunctions);
			return .Ok;
		}

		private static void LoadNativeLibrary(String libraryName, out NativeLibrary handle)
		{
			NativeLibrary.Load(libraryName ?? GetVulkanName(), out handle);
		}

		private static String GetVulkanName()
		{
#if BF_PLATFORM_WINDOWS 
			return "vulkan-1.dll";
			#elif BF_PLATFORM_LINUX  
			return "libvulkan.so.1";
			#elif BF_PLATFORM_MACOS  
			return "libvulkan.dylib";
#else
			Runtime.FatalError("Unsupported platform.");
#endif
		}
	}
}
