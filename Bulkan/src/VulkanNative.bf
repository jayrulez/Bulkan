using System;
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

		private const CallingConventionAttribute.Kind CallConv = .Stdcall;

		public static NativeLibrary NativeLib;

		static this()
		{
			LoadNativeLibrary(out NativeLib);
			LoadFuncionPointers();
		}

		static ~this()
		{
			NativeLib.Dispose();
			delete NativeLib;
		}

		private static void LoadNativeLibrary(out NativeLibrary handle)
		{
			NativeLibrary.Load(GetVulkanName(), out handle);
		}

		private static String GetVulkanName()
		{
			return "vulkan-1.dll";
		}
	}
}
