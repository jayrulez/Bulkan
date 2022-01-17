using Bulkan;
namespace VulkanTriangle
{
	extension VulkanTriangle
	{
		private VkSurfaceKHR surface;

		private void CreateSurface()
		{
			VkWin32SurfaceCreateInfoKHR createInfo = .()
				{
					sType = VkStructureType.VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
					hwnd = NativeWindow,
					hinstance = (void*)(int)System.Windows.GetModuleHandleA(null)
				};

			VkResult result = VulkanNative.vkCreateWin32SurfaceKHR(instance, &createInfo, null, &surface);

			Helpers.CheckErrors(result);
		}
	}
}