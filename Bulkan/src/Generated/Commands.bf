using System;
using internal Bulkan;
namespace Bulkan
{
	public extension VulkanNative
	{
		typealias vkCreateInstanceFunction = function VkResult(VkInstanceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkInstance* pInstance);
		private static vkCreateInstanceFunction vkCreateInstance_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateInstance(VkInstanceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkInstance* pInstance)
			=> vkCreateInstance_ptr(pCreateInfo, pAllocator, pInstance);

		typealias vkDestroyInstanceFunction = function void(VkInstance instance, VkAllocationCallbacks* pAllocator);
		private static vkDestroyInstanceFunction vkDestroyInstance_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyInstance(VkInstance instance, VkAllocationCallbacks* pAllocator)
			=> vkDestroyInstance_ptr(instance, pAllocator);

		typealias vkEnumeratePhysicalDevicesFunction = function VkResult(VkInstance instance, uint32* pPhysicalDeviceCount, VkPhysicalDevice* pPhysicalDevices);
		private static vkEnumeratePhysicalDevicesFunction vkEnumeratePhysicalDevices_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumeratePhysicalDevices(VkInstance instance, uint32* pPhysicalDeviceCount, VkPhysicalDevice* pPhysicalDevices)
			=> vkEnumeratePhysicalDevices_ptr(instance, pPhysicalDeviceCount, pPhysicalDevices);

		typealias vkGetPhysicalDeviceFeaturesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures* pFeatures);
		private static vkGetPhysicalDeviceFeaturesFunction vkGetPhysicalDeviceFeatures_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceFeatures(VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures* pFeatures)
			=> vkGetPhysicalDeviceFeatures_ptr(physicalDevice, pFeatures);

		typealias vkGetPhysicalDeviceFormatPropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties* pFormatProperties);
		private static vkGetPhysicalDeviceFormatPropertiesFunction vkGetPhysicalDeviceFormatProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceFormatProperties(VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties* pFormatProperties)
			=> vkGetPhysicalDeviceFormatProperties_ptr(physicalDevice, format, pFormatProperties);

		typealias vkGetPhysicalDeviceImageFormatPropertiesFunction = function VkResult(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties* pImageFormatProperties);
		private static vkGetPhysicalDeviceImageFormatPropertiesFunction vkGetPhysicalDeviceImageFormatProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceImageFormatProperties(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties* pImageFormatProperties)
			=> vkGetPhysicalDeviceImageFormatProperties_ptr(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);

		typealias vkGetPhysicalDevicePropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties* pProperties);
		private static vkGetPhysicalDevicePropertiesFunction vkGetPhysicalDeviceProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceProperties(VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties* pProperties)
			=> vkGetPhysicalDeviceProperties_ptr(physicalDevice, pProperties);

		typealias vkGetPhysicalDeviceQueueFamilyPropertiesFunction = function void(VkPhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, VkQueueFamilyProperties* pQueueFamilyProperties);
		private static vkGetPhysicalDeviceQueueFamilyPropertiesFunction vkGetPhysicalDeviceQueueFamilyProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceQueueFamilyProperties(VkPhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, VkQueueFamilyProperties* pQueueFamilyProperties)
			=> vkGetPhysicalDeviceQueueFamilyProperties_ptr(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);

		typealias vkGetPhysicalDeviceMemoryPropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties* pMemoryProperties);
		private static vkGetPhysicalDeviceMemoryPropertiesFunction vkGetPhysicalDeviceMemoryProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceMemoryProperties(VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties* pMemoryProperties)
			=> vkGetPhysicalDeviceMemoryProperties_ptr(physicalDevice, pMemoryProperties);

		typealias vkGetInstanceProcAddrFunction = function void*(VkInstance instance, char8* pName);
		private static vkGetInstanceProcAddrFunction vkGetInstanceProcAddr_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void* vkGetInstanceProcAddr(VkInstance instance, char8* pName)
			=> vkGetInstanceProcAddr_ptr(instance, pName);

		typealias vkGetDeviceProcAddrFunction = function void*(VkDevice device, char8* pName);
		private static vkGetDeviceProcAddrFunction vkGetDeviceProcAddr_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void* vkGetDeviceProcAddr(VkDevice device, char8* pName)
			=> vkGetDeviceProcAddr_ptr(device, pName);

		typealias vkCreateDeviceFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDeviceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDevice* pDevice);
		private static vkCreateDeviceFunction vkCreateDevice_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDevice(VkPhysicalDevice physicalDevice, VkDeviceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDevice* pDevice)
			=> vkCreateDevice_ptr(physicalDevice, pCreateInfo, pAllocator, pDevice);

		typealias vkDestroyDeviceFunction = function void(VkDevice device, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDeviceFunction vkDestroyDevice_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDevice(VkDevice device, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDevice_ptr(device, pAllocator);

		typealias vkEnumerateInstanceExtensionPropertiesFunction = function VkResult(char8* pLayerName, uint32* pPropertyCount, VkExtensionProperties* pProperties);
		private static vkEnumerateInstanceExtensionPropertiesFunction vkEnumerateInstanceExtensionProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumerateInstanceExtensionProperties(char8* pLayerName, uint32* pPropertyCount, VkExtensionProperties* pProperties)
			=> vkEnumerateInstanceExtensionProperties_ptr(pLayerName, pPropertyCount, pProperties);

		typealias vkEnumerateDeviceExtensionPropertiesFunction = function VkResult(VkPhysicalDevice physicalDevice, char8* pLayerName, uint32* pPropertyCount, VkExtensionProperties* pProperties);
		private static vkEnumerateDeviceExtensionPropertiesFunction vkEnumerateDeviceExtensionProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumerateDeviceExtensionProperties(VkPhysicalDevice physicalDevice, char8* pLayerName, uint32* pPropertyCount, VkExtensionProperties* pProperties)
			=> vkEnumerateDeviceExtensionProperties_ptr(physicalDevice, pLayerName, pPropertyCount, pProperties);

		typealias vkEnumerateInstanceLayerPropertiesFunction = function VkResult(uint32* pPropertyCount, VkLayerProperties* pProperties);
		private static vkEnumerateInstanceLayerPropertiesFunction vkEnumerateInstanceLayerProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumerateInstanceLayerProperties(uint32* pPropertyCount, VkLayerProperties* pProperties)
			=> vkEnumerateInstanceLayerProperties_ptr(pPropertyCount, pProperties);

		typealias vkEnumerateDeviceLayerPropertiesFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkLayerProperties* pProperties);
		private static vkEnumerateDeviceLayerPropertiesFunction vkEnumerateDeviceLayerProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumerateDeviceLayerProperties(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkLayerProperties* pProperties)
			=> vkEnumerateDeviceLayerProperties_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetDeviceQueueFunction = function void(VkDevice device, uint32 queueFamilyIndex, uint32 queueIndex, VkQueue* pQueue);
		private static vkGetDeviceQueueFunction vkGetDeviceQueue_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDeviceQueue(VkDevice device, uint32 queueFamilyIndex, uint32 queueIndex, VkQueue* pQueue)
			=> vkGetDeviceQueue_ptr(device, queueFamilyIndex, queueIndex, pQueue);

		typealias vkQueueSubmitFunction = function VkResult(VkQueue queue, uint32 submitCount, VkSubmitInfo* pSubmits, VkFence fence);
		private static vkQueueSubmitFunction vkQueueSubmit_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueueSubmit(VkQueue queue, uint32 submitCount, VkSubmitInfo* pSubmits, VkFence fence)
			=> vkQueueSubmit_ptr(queue, submitCount, pSubmits, fence);

		typealias vkQueueWaitIdleFunction = function VkResult(VkQueue queue);
		private static vkQueueWaitIdleFunction vkQueueWaitIdle_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueueWaitIdle(VkQueue queue)
			=> vkQueueWaitIdle_ptr(queue);

		typealias vkDeviceWaitIdleFunction = function VkResult(VkDevice device);
		private static vkDeviceWaitIdleFunction vkDeviceWaitIdle_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkDeviceWaitIdle(VkDevice device)
			=> vkDeviceWaitIdle_ptr(device);

		typealias vkAllocateMemoryFunction = function VkResult(VkDevice device, VkMemoryAllocateInfo* pAllocateInfo, VkAllocationCallbacks* pAllocator, VkDeviceMemory* pMemory);
		private static vkAllocateMemoryFunction vkAllocateMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAllocateMemory(VkDevice device, VkMemoryAllocateInfo* pAllocateInfo, VkAllocationCallbacks* pAllocator, VkDeviceMemory* pMemory)
			=> vkAllocateMemory_ptr(device, pAllocateInfo, pAllocator, pMemory);

		typealias vkFreeMemoryFunction = function void(VkDevice device, VkDeviceMemory memory, VkAllocationCallbacks* pAllocator);
		private static vkFreeMemoryFunction vkFreeMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkFreeMemory(VkDevice device, VkDeviceMemory memory, VkAllocationCallbacks* pAllocator)
			=> vkFreeMemory_ptr(device, memory, pAllocator);

		typealias vkMapMemoryFunction = function VkResult(VkDevice device, VkDeviceMemory memory, uint64 offset, uint64 size, uint32 flags, void** ppData);
		private static vkMapMemoryFunction vkMapMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkMapMemory(VkDevice device, VkDeviceMemory memory, uint64 offset, uint64 size, uint32 flags, void** ppData)
			=> vkMapMemory_ptr(device, memory, offset, size, flags, ppData);

		typealias vkUnmapMemoryFunction = function void(VkDevice device, VkDeviceMemory memory);
		private static vkUnmapMemoryFunction vkUnmapMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkUnmapMemory(VkDevice device, VkDeviceMemory memory)
			=> vkUnmapMemory_ptr(device, memory);

		typealias vkFlushMappedMemoryRangesFunction = function VkResult(VkDevice device, uint32 memoryRangeCount, VkMappedMemoryRange* pMemoryRanges);
		private static vkFlushMappedMemoryRangesFunction vkFlushMappedMemoryRanges_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkFlushMappedMemoryRanges(VkDevice device, uint32 memoryRangeCount, VkMappedMemoryRange* pMemoryRanges)
			=> vkFlushMappedMemoryRanges_ptr(device, memoryRangeCount, pMemoryRanges);

		typealias vkInvalidateMappedMemoryRangesFunction = function VkResult(VkDevice device, uint32 memoryRangeCount, VkMappedMemoryRange* pMemoryRanges);
		private static vkInvalidateMappedMemoryRangesFunction vkInvalidateMappedMemoryRanges_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkInvalidateMappedMemoryRanges(VkDevice device, uint32 memoryRangeCount, VkMappedMemoryRange* pMemoryRanges)
			=> vkInvalidateMappedMemoryRanges_ptr(device, memoryRangeCount, pMemoryRanges);

		typealias vkGetDeviceMemoryCommitmentFunction = function void(VkDevice device, VkDeviceMemory memory, uint64* pCommittedMemoryInBytes);
		private static vkGetDeviceMemoryCommitmentFunction vkGetDeviceMemoryCommitment_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDeviceMemoryCommitment(VkDevice device, VkDeviceMemory memory, uint64* pCommittedMemoryInBytes)
			=> vkGetDeviceMemoryCommitment_ptr(device, memory, pCommittedMemoryInBytes);

		typealias vkBindBufferMemoryFunction = function VkResult(VkDevice device, VkBuffer buffer, VkDeviceMemory memory, uint64 memoryOffset);
		private static vkBindBufferMemoryFunction vkBindBufferMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindBufferMemory(VkDevice device, VkBuffer buffer, VkDeviceMemory memory, uint64 memoryOffset)
			=> vkBindBufferMemory_ptr(device, buffer, memory, memoryOffset);

		typealias vkBindImageMemoryFunction = function VkResult(VkDevice device, VkImage image, VkDeviceMemory memory, uint64 memoryOffset);
		private static vkBindImageMemoryFunction vkBindImageMemory_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindImageMemory(VkDevice device, VkImage image, VkDeviceMemory memory, uint64 memoryOffset)
			=> vkBindImageMemory_ptr(device, image, memory, memoryOffset);

		typealias vkGetBufferMemoryRequirementsFunction = function void(VkDevice device, VkBuffer buffer, VkMemoryRequirements* pMemoryRequirements);
		private static vkGetBufferMemoryRequirementsFunction vkGetBufferMemoryRequirements_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetBufferMemoryRequirements(VkDevice device, VkBuffer buffer, VkMemoryRequirements* pMemoryRequirements)
			=> vkGetBufferMemoryRequirements_ptr(device, buffer, pMemoryRequirements);

		typealias vkGetImageMemoryRequirementsFunction = function void(VkDevice device, VkImage image, VkMemoryRequirements* pMemoryRequirements);
		private static vkGetImageMemoryRequirementsFunction vkGetImageMemoryRequirements_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetImageMemoryRequirements(VkDevice device, VkImage image, VkMemoryRequirements* pMemoryRequirements)
			=> vkGetImageMemoryRequirements_ptr(device, image, pMemoryRequirements);

		typealias vkGetImageSparseMemoryRequirementsFunction = function void(VkDevice device, VkImage image, uint32* pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements* pSparseMemoryRequirements);
		private static vkGetImageSparseMemoryRequirementsFunction vkGetImageSparseMemoryRequirements_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetImageSparseMemoryRequirements(VkDevice device, VkImage image, uint32* pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements* pSparseMemoryRequirements)
			=> vkGetImageSparseMemoryRequirements_ptr(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements);

		typealias vkGetPhysicalDeviceSparseImageFormatPropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkSampleCountFlags samples, VkImageUsageFlags usage, VkImageTiling tiling, uint32* pPropertyCount, VkSparseImageFormatProperties* pProperties);
		private static vkGetPhysicalDeviceSparseImageFormatPropertiesFunction vkGetPhysicalDeviceSparseImageFormatProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceSparseImageFormatProperties(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkSampleCountFlags samples, VkImageUsageFlags usage, VkImageTiling tiling, uint32* pPropertyCount, VkSparseImageFormatProperties* pProperties)
			=> vkGetPhysicalDeviceSparseImageFormatProperties_ptr(physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties);

		typealias vkQueueBindSparseFunction = function VkResult(VkQueue queue, uint32 bindInfoCount, VkBindSparseInfo* pBindInfo, VkFence fence);
		private static vkQueueBindSparseFunction vkQueueBindSparse_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueueBindSparse(VkQueue queue, uint32 bindInfoCount, VkBindSparseInfo* pBindInfo, VkFence fence)
			=> vkQueueBindSparse_ptr(queue, bindInfoCount, pBindInfo, fence);

		typealias vkCreateFenceFunction = function VkResult(VkDevice device, VkFenceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence);
		private static vkCreateFenceFunction vkCreateFence_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateFence(VkDevice device, VkFenceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence)
			=> vkCreateFence_ptr(device, pCreateInfo, pAllocator, pFence);

		typealias vkDestroyFenceFunction = function void(VkDevice device, VkFence fence, VkAllocationCallbacks* pAllocator);
		private static vkDestroyFenceFunction vkDestroyFence_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyFence(VkDevice device, VkFence fence, VkAllocationCallbacks* pAllocator)
			=> vkDestroyFence_ptr(device, fence, pAllocator);

		typealias vkResetFencesFunction = function VkResult(VkDevice device, uint32 fenceCount, VkFence* pFences);
		private static vkResetFencesFunction vkResetFences_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkResetFences(VkDevice device, uint32 fenceCount, VkFence* pFences)
			=> vkResetFences_ptr(device, fenceCount, pFences);

		typealias vkGetFenceStatusFunction = function VkResult(VkDevice device, VkFence fence);
		private static vkGetFenceStatusFunction vkGetFenceStatus_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetFenceStatus(VkDevice device, VkFence fence)
			=> vkGetFenceStatus_ptr(device, fence);

		typealias vkWaitForFencesFunction = function VkResult(VkDevice device, uint32 fenceCount, VkFence* pFences, VkBool32 waitAll, uint64 timeout);
		private static vkWaitForFencesFunction vkWaitForFences_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkWaitForFences(VkDevice device, uint32 fenceCount, VkFence* pFences, VkBool32 waitAll, uint64 timeout)
			=> vkWaitForFences_ptr(device, fenceCount, pFences, waitAll, timeout);

		typealias vkCreateSemaphoreFunction = function VkResult(VkDevice device, VkSemaphoreCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSemaphore* pSemaphore);
		private static vkCreateSemaphoreFunction vkCreateSemaphore_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateSemaphore(VkDevice device, VkSemaphoreCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSemaphore* pSemaphore)
			=> vkCreateSemaphore_ptr(device, pCreateInfo, pAllocator, pSemaphore);

		typealias vkDestroySemaphoreFunction = function void(VkDevice device, VkSemaphore semaphore, VkAllocationCallbacks* pAllocator);
		private static vkDestroySemaphoreFunction vkDestroySemaphore_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroySemaphore(VkDevice device, VkSemaphore semaphore, VkAllocationCallbacks* pAllocator)
			=> vkDestroySemaphore_ptr(device, semaphore, pAllocator);

		typealias vkCreateEventFunction = function VkResult(VkDevice device, VkEventCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkEvent* pEvent);
		private static vkCreateEventFunction vkCreateEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateEvent(VkDevice device, VkEventCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkEvent* pEvent)
			=> vkCreateEvent_ptr(device, pCreateInfo, pAllocator, pEvent);

		typealias vkDestroyEventFunction = function void(VkDevice device, VkEvent event, VkAllocationCallbacks* pAllocator);
		private static vkDestroyEventFunction vkDestroyEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyEvent(VkDevice device, VkEvent event, VkAllocationCallbacks* pAllocator)
			=> vkDestroyEvent_ptr(device, event, pAllocator);

		typealias vkGetEventStatusFunction = function VkResult(VkDevice device, VkEvent event);
		private static vkGetEventStatusFunction vkGetEventStatus_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetEventStatus(VkDevice device, VkEvent event)
			=> vkGetEventStatus_ptr(device, event);

		typealias vkSetEventFunction = function VkResult(VkDevice device, VkEvent event);
		private static vkSetEventFunction vkSetEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkSetEvent(VkDevice device, VkEvent event)
			=> vkSetEvent_ptr(device, event);

		typealias vkResetEventFunction = function VkResult(VkDevice device, VkEvent event);
		private static vkResetEventFunction vkResetEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkResetEvent(VkDevice device, VkEvent event)
			=> vkResetEvent_ptr(device, event);

		typealias vkCreateQueryPoolFunction = function VkResult(VkDevice device, VkQueryPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkQueryPool* pQueryPool);
		private static vkCreateQueryPoolFunction vkCreateQueryPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateQueryPool(VkDevice device, VkQueryPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkQueryPool* pQueryPool)
			=> vkCreateQueryPool_ptr(device, pCreateInfo, pAllocator, pQueryPool);

		typealias vkDestroyQueryPoolFunction = function void(VkDevice device, VkQueryPool queryPool, VkAllocationCallbacks* pAllocator);
		private static vkDestroyQueryPoolFunction vkDestroyQueryPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyQueryPool(VkDevice device, VkQueryPool queryPool, VkAllocationCallbacks* pAllocator)
			=> vkDestroyQueryPool_ptr(device, queryPool, pAllocator);

		typealias vkGetQueryPoolResultsFunction = function VkResult(VkDevice device, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount, uint dataSize, void* pData, uint64 stride, VkQueryResultFlags flags);
		private static vkGetQueryPoolResultsFunction vkGetQueryPoolResults_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetQueryPoolResults(VkDevice device, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount, uint dataSize, void* pData, uint64 stride, VkQueryResultFlags flags)
			=> vkGetQueryPoolResults_ptr(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);

		typealias vkCreateBufferFunction = function VkResult(VkDevice device, VkBufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBuffer* pBuffer);
		private static vkCreateBufferFunction vkCreateBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateBuffer(VkDevice device, VkBufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBuffer* pBuffer)
			=> vkCreateBuffer_ptr(device, pCreateInfo, pAllocator, pBuffer);

		typealias vkDestroyBufferFunction = function void(VkDevice device, VkBuffer buffer, VkAllocationCallbacks* pAllocator);
		private static vkDestroyBufferFunction vkDestroyBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyBuffer(VkDevice device, VkBuffer buffer, VkAllocationCallbacks* pAllocator)
			=> vkDestroyBuffer_ptr(device, buffer, pAllocator);

		typealias vkCreateBufferViewFunction = function VkResult(VkDevice device, VkBufferViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBufferView* pView);
		private static vkCreateBufferViewFunction vkCreateBufferView_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateBufferView(VkDevice device, VkBufferViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBufferView* pView)
			=> vkCreateBufferView_ptr(device, pCreateInfo, pAllocator, pView);

		typealias vkDestroyBufferViewFunction = function void(VkDevice device, VkBufferView bufferView, VkAllocationCallbacks* pAllocator);
		private static vkDestroyBufferViewFunction vkDestroyBufferView_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyBufferView(VkDevice device, VkBufferView bufferView, VkAllocationCallbacks* pAllocator)
			=> vkDestroyBufferView_ptr(device, bufferView, pAllocator);

		typealias vkCreateImageFunction = function VkResult(VkDevice device, VkImageCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImage* pImage);
		private static vkCreateImageFunction vkCreateImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateImage(VkDevice device, VkImageCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImage* pImage)
			=> vkCreateImage_ptr(device, pCreateInfo, pAllocator, pImage);

		typealias vkDestroyImageFunction = function void(VkDevice device, VkImage image, VkAllocationCallbacks* pAllocator);
		private static vkDestroyImageFunction vkDestroyImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyImage(VkDevice device, VkImage image, VkAllocationCallbacks* pAllocator)
			=> vkDestroyImage_ptr(device, image, pAllocator);

		typealias vkGetImageSubresourceLayoutFunction = function void(VkDevice device, VkImage image, VkImageSubresource* pSubresource, VkSubresourceLayout* pLayout);
		private static vkGetImageSubresourceLayoutFunction vkGetImageSubresourceLayout_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetImageSubresourceLayout(VkDevice device, VkImage image, VkImageSubresource* pSubresource, VkSubresourceLayout* pLayout)
			=> vkGetImageSubresourceLayout_ptr(device, image, pSubresource, pLayout);

		typealias vkCreateImageViewFunction = function VkResult(VkDevice device, VkImageViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImageView* pView);
		private static vkCreateImageViewFunction vkCreateImageView_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateImageView(VkDevice device, VkImageViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImageView* pView)
			=> vkCreateImageView_ptr(device, pCreateInfo, pAllocator, pView);

		typealias vkDestroyImageViewFunction = function void(VkDevice device, VkImageView imageView, VkAllocationCallbacks* pAllocator);
		private static vkDestroyImageViewFunction vkDestroyImageView_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyImageView(VkDevice device, VkImageView imageView, VkAllocationCallbacks* pAllocator)
			=> vkDestroyImageView_ptr(device, imageView, pAllocator);

		typealias vkCreateShaderModuleFunction = function VkResult(VkDevice device, VkShaderModuleCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkShaderModule* pShaderModule);
		private static vkCreateShaderModuleFunction vkCreateShaderModule_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateShaderModule(VkDevice device, VkShaderModuleCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkShaderModule* pShaderModule)
			=> vkCreateShaderModule_ptr(device, pCreateInfo, pAllocator, pShaderModule);

		typealias vkDestroyShaderModuleFunction = function void(VkDevice device, VkShaderModule shaderModule, VkAllocationCallbacks* pAllocator);
		private static vkDestroyShaderModuleFunction vkDestroyShaderModule_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyShaderModule(VkDevice device, VkShaderModule shaderModule, VkAllocationCallbacks* pAllocator)
			=> vkDestroyShaderModule_ptr(device, shaderModule, pAllocator);

		typealias vkCreatePipelineCacheFunction = function VkResult(VkDevice device, VkPipelineCacheCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineCache* pPipelineCache);
		private static vkCreatePipelineCacheFunction vkCreatePipelineCache_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreatePipelineCache(VkDevice device, VkPipelineCacheCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineCache* pPipelineCache)
			=> vkCreatePipelineCache_ptr(device, pCreateInfo, pAllocator, pPipelineCache);

		typealias vkDestroyPipelineCacheFunction = function void(VkDevice device, VkPipelineCache pipelineCache, VkAllocationCallbacks* pAllocator);
		private static vkDestroyPipelineCacheFunction vkDestroyPipelineCache_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyPipelineCache(VkDevice device, VkPipelineCache pipelineCache, VkAllocationCallbacks* pAllocator)
			=> vkDestroyPipelineCache_ptr(device, pipelineCache, pAllocator);

		typealias vkGetPipelineCacheDataFunction = function VkResult(VkDevice device, VkPipelineCache pipelineCache, uint* pDataSize, void* pData);
		private static vkGetPipelineCacheDataFunction vkGetPipelineCacheData_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPipelineCacheData(VkDevice device, VkPipelineCache pipelineCache, uint* pDataSize, void* pData)
			=> vkGetPipelineCacheData_ptr(device, pipelineCache, pDataSize, pData);

		typealias vkMergePipelineCachesFunction = function VkResult(VkDevice device, VkPipelineCache dstCache, uint32 srcCacheCount, VkPipelineCache* pSrcCaches);
		private static vkMergePipelineCachesFunction vkMergePipelineCaches_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkMergePipelineCaches(VkDevice device, VkPipelineCache dstCache, uint32 srcCacheCount, VkPipelineCache* pSrcCaches)
			=> vkMergePipelineCaches_ptr(device, dstCache, srcCacheCount, pSrcCaches);

		typealias vkCreateGraphicsPipelinesFunction = function VkResult(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkGraphicsPipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines);
		private static vkCreateGraphicsPipelinesFunction vkCreateGraphicsPipelines_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateGraphicsPipelines(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkGraphicsPipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines)
			=> vkCreateGraphicsPipelines_ptr(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);

		typealias vkCreateComputePipelinesFunction = function VkResult(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkComputePipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines);
		private static vkCreateComputePipelinesFunction vkCreateComputePipelines_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateComputePipelines(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkComputePipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines)
			=> vkCreateComputePipelines_ptr(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);

		typealias vkDestroyPipelineFunction = function void(VkDevice device, VkPipeline pipeline, VkAllocationCallbacks* pAllocator);
		private static vkDestroyPipelineFunction vkDestroyPipeline_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyPipeline(VkDevice device, VkPipeline pipeline, VkAllocationCallbacks* pAllocator)
			=> vkDestroyPipeline_ptr(device, pipeline, pAllocator);

		typealias vkCreatePipelineLayoutFunction = function VkResult(VkDevice device, VkPipelineLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineLayout* pPipelineLayout);
		private static vkCreatePipelineLayoutFunction vkCreatePipelineLayout_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreatePipelineLayout(VkDevice device, VkPipelineLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineLayout* pPipelineLayout)
			=> vkCreatePipelineLayout_ptr(device, pCreateInfo, pAllocator, pPipelineLayout);

		typealias vkDestroyPipelineLayoutFunction = function void(VkDevice device, VkPipelineLayout pipelineLayout, VkAllocationCallbacks* pAllocator);
		private static vkDestroyPipelineLayoutFunction vkDestroyPipelineLayout_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyPipelineLayout(VkDevice device, VkPipelineLayout pipelineLayout, VkAllocationCallbacks* pAllocator)
			=> vkDestroyPipelineLayout_ptr(device, pipelineLayout, pAllocator);

		typealias vkCreateSamplerFunction = function VkResult(VkDevice device, VkSamplerCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSampler* pSampler);
		private static vkCreateSamplerFunction vkCreateSampler_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateSampler(VkDevice device, VkSamplerCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSampler* pSampler)
			=> vkCreateSampler_ptr(device, pCreateInfo, pAllocator, pSampler);

		typealias vkDestroySamplerFunction = function void(VkDevice device, VkSampler sampler, VkAllocationCallbacks* pAllocator);
		private static vkDestroySamplerFunction vkDestroySampler_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroySampler(VkDevice device, VkSampler sampler, VkAllocationCallbacks* pAllocator)
			=> vkDestroySampler_ptr(device, sampler, pAllocator);

		typealias vkCreateDescriptorSetLayoutFunction = function VkResult(VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorSetLayout* pSetLayout);
		private static vkCreateDescriptorSetLayoutFunction vkCreateDescriptorSetLayout_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDescriptorSetLayout(VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorSetLayout* pSetLayout)
			=> vkCreateDescriptorSetLayout_ptr(device, pCreateInfo, pAllocator, pSetLayout);

		typealias vkDestroyDescriptorSetLayoutFunction = function void(VkDevice device, VkDescriptorSetLayout descriptorSetLayout, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDescriptorSetLayoutFunction vkDestroyDescriptorSetLayout_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDescriptorSetLayout(VkDevice device, VkDescriptorSetLayout descriptorSetLayout, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDescriptorSetLayout_ptr(device, descriptorSetLayout, pAllocator);

		typealias vkCreateDescriptorPoolFunction = function VkResult(VkDevice device, VkDescriptorPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorPool* pDescriptorPool);
		private static vkCreateDescriptorPoolFunction vkCreateDescriptorPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDescriptorPool(VkDevice device, VkDescriptorPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorPool* pDescriptorPool)
			=> vkCreateDescriptorPool_ptr(device, pCreateInfo, pAllocator, pDescriptorPool);

		typealias vkDestroyDescriptorPoolFunction = function void(VkDevice device, VkDescriptorPool descriptorPool, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDescriptorPoolFunction vkDestroyDescriptorPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDescriptorPool(VkDevice device, VkDescriptorPool descriptorPool, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDescriptorPool_ptr(device, descriptorPool, pAllocator);

		typealias vkResetDescriptorPoolFunction = function VkResult(VkDevice device, VkDescriptorPool descriptorPool, uint32 flags);
		private static vkResetDescriptorPoolFunction vkResetDescriptorPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkResetDescriptorPool(VkDevice device, VkDescriptorPool descriptorPool, uint32 flags)
			=> vkResetDescriptorPool_ptr(device, descriptorPool, flags);

		typealias vkAllocateDescriptorSetsFunction = function VkResult(VkDevice device, VkDescriptorSetAllocateInfo* pAllocateInfo, VkDescriptorSet* pDescriptorSets);
		private static vkAllocateDescriptorSetsFunction vkAllocateDescriptorSets_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAllocateDescriptorSets(VkDevice device, VkDescriptorSetAllocateInfo* pAllocateInfo, VkDescriptorSet* pDescriptorSets)
			=> vkAllocateDescriptorSets_ptr(device, pAllocateInfo, pDescriptorSets);

		typealias vkFreeDescriptorSetsFunction = function VkResult(VkDevice device, VkDescriptorPool descriptorPool, uint32 descriptorSetCount, VkDescriptorSet* pDescriptorSets);
		private static vkFreeDescriptorSetsFunction vkFreeDescriptorSets_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkFreeDescriptorSets(VkDevice device, VkDescriptorPool descriptorPool, uint32 descriptorSetCount, VkDescriptorSet* pDescriptorSets)
			=> vkFreeDescriptorSets_ptr(device, descriptorPool, descriptorSetCount, pDescriptorSets);

		typealias vkUpdateDescriptorSetsFunction = function void(VkDevice device, uint32 descriptorWriteCount, VkWriteDescriptorSet* pDescriptorWrites, uint32 descriptorCopyCount, VkCopyDescriptorSet* pDescriptorCopies);
		private static vkUpdateDescriptorSetsFunction vkUpdateDescriptorSets_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkUpdateDescriptorSets(VkDevice device, uint32 descriptorWriteCount, VkWriteDescriptorSet* pDescriptorWrites, uint32 descriptorCopyCount, VkCopyDescriptorSet* pDescriptorCopies)
			=> vkUpdateDescriptorSets_ptr(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies);

		typealias vkCreateFramebufferFunction = function VkResult(VkDevice device, VkFramebufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFramebuffer* pFramebuffer);
		private static vkCreateFramebufferFunction vkCreateFramebuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateFramebuffer(VkDevice device, VkFramebufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFramebuffer* pFramebuffer)
			=> vkCreateFramebuffer_ptr(device, pCreateInfo, pAllocator, pFramebuffer);

		typealias vkDestroyFramebufferFunction = function void(VkDevice device, VkFramebuffer framebuffer, VkAllocationCallbacks* pAllocator);
		private static vkDestroyFramebufferFunction vkDestroyFramebuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyFramebuffer(VkDevice device, VkFramebuffer framebuffer, VkAllocationCallbacks* pAllocator)
			=> vkDestroyFramebuffer_ptr(device, framebuffer, pAllocator);

		typealias vkCreateRenderPassFunction = function VkResult(VkDevice device, VkRenderPassCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass);
		private static vkCreateRenderPassFunction vkCreateRenderPass_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateRenderPass(VkDevice device, VkRenderPassCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass)
			=> vkCreateRenderPass_ptr(device, pCreateInfo, pAllocator, pRenderPass);

		typealias vkDestroyRenderPassFunction = function void(VkDevice device, VkRenderPass renderPass, VkAllocationCallbacks* pAllocator);
		private static vkDestroyRenderPassFunction vkDestroyRenderPass_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyRenderPass(VkDevice device, VkRenderPass renderPass, VkAllocationCallbacks* pAllocator)
			=> vkDestroyRenderPass_ptr(device, renderPass, pAllocator);

		typealias vkGetRenderAreaGranularityFunction = function void(VkDevice device, VkRenderPass renderPass, VkExtent2D* pGranularity);
		private static vkGetRenderAreaGranularityFunction vkGetRenderAreaGranularity_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetRenderAreaGranularity(VkDevice device, VkRenderPass renderPass, VkExtent2D* pGranularity)
			=> vkGetRenderAreaGranularity_ptr(device, renderPass, pGranularity);

		typealias vkCreateCommandPoolFunction = function VkResult(VkDevice device, VkCommandPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCommandPool* pCommandPool);
		private static vkCreateCommandPoolFunction vkCreateCommandPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateCommandPool(VkDevice device, VkCommandPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCommandPool* pCommandPool)
			=> vkCreateCommandPool_ptr(device, pCreateInfo, pAllocator, pCommandPool);

		typealias vkDestroyCommandPoolFunction = function void(VkDevice device, VkCommandPool commandPool, VkAllocationCallbacks* pAllocator);
		private static vkDestroyCommandPoolFunction vkDestroyCommandPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyCommandPool(VkDevice device, VkCommandPool commandPool, VkAllocationCallbacks* pAllocator)
			=> vkDestroyCommandPool_ptr(device, commandPool, pAllocator);

		typealias vkResetCommandPoolFunction = function VkResult(VkDevice device, VkCommandPool commandPool, VkCommandPoolResetFlags flags);
		private static vkResetCommandPoolFunction vkResetCommandPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkResetCommandPool(VkDevice device, VkCommandPool commandPool, VkCommandPoolResetFlags flags)
			=> vkResetCommandPool_ptr(device, commandPool, flags);

		typealias vkAllocateCommandBuffersFunction = function VkResult(VkDevice device, VkCommandBufferAllocateInfo* pAllocateInfo, VkCommandBuffer* pCommandBuffers);
		private static vkAllocateCommandBuffersFunction vkAllocateCommandBuffers_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAllocateCommandBuffers(VkDevice device, VkCommandBufferAllocateInfo* pAllocateInfo, VkCommandBuffer* pCommandBuffers)
			=> vkAllocateCommandBuffers_ptr(device, pAllocateInfo, pCommandBuffers);

		typealias vkFreeCommandBuffersFunction = function void(VkDevice device, VkCommandPool commandPool, uint32 commandBufferCount, VkCommandBuffer* pCommandBuffers);
		private static vkFreeCommandBuffersFunction vkFreeCommandBuffers_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkFreeCommandBuffers(VkDevice device, VkCommandPool commandPool, uint32 commandBufferCount, VkCommandBuffer* pCommandBuffers)
			=> vkFreeCommandBuffers_ptr(device, commandPool, commandBufferCount, pCommandBuffers);

		typealias vkBeginCommandBufferFunction = function VkResult(VkCommandBuffer commandBuffer, VkCommandBufferBeginInfo* pBeginInfo);
		private static vkBeginCommandBufferFunction vkBeginCommandBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBeginCommandBuffer(VkCommandBuffer commandBuffer, VkCommandBufferBeginInfo* pBeginInfo)
			=> vkBeginCommandBuffer_ptr(commandBuffer, pBeginInfo);

		typealias vkEndCommandBufferFunction = function VkResult(VkCommandBuffer commandBuffer);
		private static vkEndCommandBufferFunction vkEndCommandBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEndCommandBuffer(VkCommandBuffer commandBuffer)
			=> vkEndCommandBuffer_ptr(commandBuffer);

		typealias vkResetCommandBufferFunction = function VkResult(VkCommandBuffer commandBuffer, VkCommandBufferResetFlags flags);
		private static vkResetCommandBufferFunction vkResetCommandBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkResetCommandBuffer(VkCommandBuffer commandBuffer, VkCommandBufferResetFlags flags)
			=> vkResetCommandBuffer_ptr(commandBuffer, flags);

		typealias vkCmdBindPipelineFunction = function void(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline);
		private static vkCmdBindPipelineFunction vkCmdBindPipeline_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindPipeline(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline)
			=> vkCmdBindPipeline_ptr(commandBuffer, pipelineBindPoint, pipeline);

		typealias vkCmdSetViewportFunction = function void(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkViewport* pViewports);
		private static vkCmdSetViewportFunction vkCmdSetViewport_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetViewport(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkViewport* pViewports)
			=> vkCmdSetViewport_ptr(commandBuffer, firstViewport, viewportCount, pViewports);

		typealias vkCmdSetScissorFunction = function void(VkCommandBuffer commandBuffer, uint32 firstScissor, uint32 scissorCount, VkRect2D* pScissors);
		private static vkCmdSetScissorFunction vkCmdSetScissor_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetScissor(VkCommandBuffer commandBuffer, uint32 firstScissor, uint32 scissorCount, VkRect2D* pScissors)
			=> vkCmdSetScissor_ptr(commandBuffer, firstScissor, scissorCount, pScissors);

		typealias vkCmdSetLineWidthFunction = function void(VkCommandBuffer commandBuffer, float lineWidth);
		private static vkCmdSetLineWidthFunction vkCmdSetLineWidth_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetLineWidth(VkCommandBuffer commandBuffer, float lineWidth)
			=> vkCmdSetLineWidth_ptr(commandBuffer, lineWidth);

		typealias vkCmdSetDepthBiasFunction = function void(VkCommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor);
		private static vkCmdSetDepthBiasFunction vkCmdSetDepthBias_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthBias(VkCommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor)
			=> vkCmdSetDepthBias_ptr(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor);

		typealias vkCmdSetBlendConstantsFunction = function void(VkCommandBuffer commandBuffer, float blendConstants);
		private static vkCmdSetBlendConstantsFunction vkCmdSetBlendConstants_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetBlendConstants(VkCommandBuffer commandBuffer, float blendConstants)
			=> vkCmdSetBlendConstants_ptr(commandBuffer, blendConstants);

		typealias vkCmdSetDepthBoundsFunction = function void(VkCommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds);
		private static vkCmdSetDepthBoundsFunction vkCmdSetDepthBounds_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthBounds(VkCommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds)
			=> vkCmdSetDepthBounds_ptr(commandBuffer, minDepthBounds, maxDepthBounds);

		typealias vkCmdSetStencilCompareMaskFunction = function void(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 compareMask);
		private static vkCmdSetStencilCompareMaskFunction vkCmdSetStencilCompareMask_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetStencilCompareMask(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 compareMask)
			=> vkCmdSetStencilCompareMask_ptr(commandBuffer, faceMask, compareMask);

		typealias vkCmdSetStencilWriteMaskFunction = function void(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 writeMask);
		private static vkCmdSetStencilWriteMaskFunction vkCmdSetStencilWriteMask_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetStencilWriteMask(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 writeMask)
			=> vkCmdSetStencilWriteMask_ptr(commandBuffer, faceMask, writeMask);

		typealias vkCmdSetStencilReferenceFunction = function void(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 reference);
		private static vkCmdSetStencilReferenceFunction vkCmdSetStencilReference_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetStencilReference(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32 reference)
			=> vkCmdSetStencilReference_ptr(commandBuffer, faceMask, reference);

		typealias vkCmdBindDescriptorSetsFunction = function void(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32 firstSet, uint32 descriptorSetCount, VkDescriptorSet* pDescriptorSets, uint32 dynamicOffsetCount, uint32* pDynamicOffsets);
		private static vkCmdBindDescriptorSetsFunction vkCmdBindDescriptorSets_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindDescriptorSets(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32 firstSet, uint32 descriptorSetCount, VkDescriptorSet* pDescriptorSets, uint32 dynamicOffsetCount, uint32* pDynamicOffsets)
			=> vkCmdBindDescriptorSets_ptr(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets);

		typealias vkCmdBindIndexBufferFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkIndexType indexType);
		private static vkCmdBindIndexBufferFunction vkCmdBindIndexBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindIndexBuffer(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkIndexType indexType)
			=> vkCmdBindIndexBuffer_ptr(commandBuffer, buffer, offset, indexType);

		typealias vkCmdBindVertexBuffersFunction = function void(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets);
		private static vkCmdBindVertexBuffersFunction vkCmdBindVertexBuffers_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindVertexBuffers(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets)
			=> vkCmdBindVertexBuffers_ptr(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets);

		typealias vkCmdDrawFunction = function void(VkCommandBuffer commandBuffer, uint32 vertexCount, uint32 instanceCount, uint32 firstVertex, uint32 firstInstance);
		private static vkCmdDrawFunction vkCmdDraw_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDraw(VkCommandBuffer commandBuffer, uint32 vertexCount, uint32 instanceCount, uint32 firstVertex, uint32 firstInstance)
			=> vkCmdDraw_ptr(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance);

		typealias vkCmdDrawIndexedFunction = function void(VkCommandBuffer commandBuffer, uint32 indexCount, uint32 instanceCount, uint32 firstIndex, int32 vertexOffset, uint32 firstInstance);
		private static vkCmdDrawIndexedFunction vkCmdDrawIndexed_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndexed(VkCommandBuffer commandBuffer, uint32 indexCount, uint32 instanceCount, uint32 firstIndex, int32 vertexOffset, uint32 firstInstance)
			=> vkCmdDrawIndexed_ptr(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance);

		typealias vkCmdDrawIndirectFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride);
		private static vkCmdDrawIndirectFunction vkCmdDrawIndirect_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndirect(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride)
			=> vkCmdDrawIndirect_ptr(commandBuffer, buffer, offset, drawCount, stride);

		typealias vkCmdDrawIndexedIndirectFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride);
		private static vkCmdDrawIndexedIndirectFunction vkCmdDrawIndexedIndirect_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndexedIndirect(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride)
			=> vkCmdDrawIndexedIndirect_ptr(commandBuffer, buffer, offset, drawCount, stride);

		typealias vkCmdDispatchFunction = function void(VkCommandBuffer commandBuffer, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ);
		private static vkCmdDispatchFunction vkCmdDispatch_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDispatch(VkCommandBuffer commandBuffer, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ)
			=> vkCmdDispatch_ptr(commandBuffer, groupCountX, groupCountY, groupCountZ);

		typealias vkCmdDispatchIndirectFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset);
		private static vkCmdDispatchIndirectFunction vkCmdDispatchIndirect_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDispatchIndirect(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset)
			=> vkCmdDispatchIndirect_ptr(commandBuffer, buffer, offset);

		typealias vkCmdCopyBufferFunction = function void(VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkBuffer dstBuffer, uint32 regionCount, VkBufferCopy* pRegions);
		private static vkCmdCopyBufferFunction vkCmdCopyBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyBuffer(VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkBuffer dstBuffer, uint32 regionCount, VkBufferCopy* pRegions)
			=> vkCmdCopyBuffer_ptr(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions);

		typealias vkCmdCopyImageFunction = function void(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageCopy* pRegions);
		private static vkCmdCopyImageFunction vkCmdCopyImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyImage(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageCopy* pRegions)
			=> vkCmdCopyImage_ptr(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);

		typealias vkCmdBlitImageFunction = function void(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageBlit* pRegions, VkFilter filter);
		private static vkCmdBlitImageFunction vkCmdBlitImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBlitImage(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageBlit* pRegions, VkFilter filter)
			=> vkCmdBlitImage_ptr(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter);

		typealias vkCmdCopyBufferToImageFunction = function void(VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkBufferImageCopy* pRegions);
		private static vkCmdCopyBufferToImageFunction vkCmdCopyBufferToImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyBufferToImage(VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkBufferImageCopy* pRegions)
			=> vkCmdCopyBufferToImage_ptr(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions);

		typealias vkCmdCopyImageToBufferFunction = function void(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkBuffer dstBuffer, uint32 regionCount, VkBufferImageCopy* pRegions);
		private static vkCmdCopyImageToBufferFunction vkCmdCopyImageToBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyImageToBuffer(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkBuffer dstBuffer, uint32 regionCount, VkBufferImageCopy* pRegions)
			=> vkCmdCopyImageToBuffer_ptr(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions);

		typealias vkCmdUpdateBufferFunction = function void(VkCommandBuffer commandBuffer, VkBuffer dstBuffer, uint64 dstOffset, uint64 dataSize, void* pData);
		private static vkCmdUpdateBufferFunction vkCmdUpdateBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdUpdateBuffer(VkCommandBuffer commandBuffer, VkBuffer dstBuffer, uint64 dstOffset, uint64 dataSize, void* pData)
			=> vkCmdUpdateBuffer_ptr(commandBuffer, dstBuffer, dstOffset, dataSize, pData);

		typealias vkCmdFillBufferFunction = function void(VkCommandBuffer commandBuffer, VkBuffer dstBuffer, uint64 dstOffset, uint64 size, uint32 data);
		private static vkCmdFillBufferFunction vkCmdFillBuffer_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdFillBuffer(VkCommandBuffer commandBuffer, VkBuffer dstBuffer, uint64 dstOffset, uint64 size, uint32 data)
			=> vkCmdFillBuffer_ptr(commandBuffer, dstBuffer, dstOffset, size, data);

		typealias vkCmdClearColorImageFunction = function void(VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearColorValue* pColor, uint32 rangeCount, VkImageSubresourceRange* pRanges);
		private static vkCmdClearColorImageFunction vkCmdClearColorImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdClearColorImage(VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearColorValue* pColor, uint32 rangeCount, VkImageSubresourceRange* pRanges)
			=> vkCmdClearColorImage_ptr(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges);

		typealias vkCmdClearDepthStencilImageFunction = function void(VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearDepthStencilValue* pDepthStencil, uint32 rangeCount, VkImageSubresourceRange* pRanges);
		private static vkCmdClearDepthStencilImageFunction vkCmdClearDepthStencilImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdClearDepthStencilImage(VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearDepthStencilValue* pDepthStencil, uint32 rangeCount, VkImageSubresourceRange* pRanges)
			=> vkCmdClearDepthStencilImage_ptr(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges);

		typealias vkCmdClearAttachmentsFunction = function void(VkCommandBuffer commandBuffer, uint32 attachmentCount, VkClearAttachment* pAttachments, uint32 rectCount, VkClearRect* pRects);
		private static vkCmdClearAttachmentsFunction vkCmdClearAttachments_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdClearAttachments(VkCommandBuffer commandBuffer, uint32 attachmentCount, VkClearAttachment* pAttachments, uint32 rectCount, VkClearRect* pRects)
			=> vkCmdClearAttachments_ptr(commandBuffer, attachmentCount, pAttachments, rectCount, pRects);

		typealias vkCmdResolveImageFunction = function void(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageResolve* pRegions);
		private static vkCmdResolveImageFunction vkCmdResolveImage_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdResolveImage(VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32 regionCount, VkImageResolve* pRegions)
			=> vkCmdResolveImage_ptr(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);

		typealias vkCmdSetEventFunction = function void(VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask);
		private static vkCmdSetEventFunction vkCmdSetEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetEvent(VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask)
			=> vkCmdSetEvent_ptr(commandBuffer, event, stageMask);

		typealias vkCmdResetEventFunction = function void(VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask);
		private static vkCmdResetEventFunction vkCmdResetEvent_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdResetEvent(VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask)
			=> vkCmdResetEvent_ptr(commandBuffer, event, stageMask);

		typealias vkCmdWaitEventsFunction = function void(VkCommandBuffer commandBuffer, uint32 eventCount, VkEvent* pEvents, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, uint32 memoryBarrierCount, VkMemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, VkBufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, VkImageMemoryBarrier* pImageMemoryBarriers);
		private static vkCmdWaitEventsFunction vkCmdWaitEvents_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWaitEvents(VkCommandBuffer commandBuffer, uint32 eventCount, VkEvent* pEvents, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, uint32 memoryBarrierCount, VkMemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, VkBufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, VkImageMemoryBarrier* pImageMemoryBarriers)
			=> vkCmdWaitEvents_ptr(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);

		typealias vkCmdPipelineBarrierFunction = function void(VkCommandBuffer commandBuffer, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, VkDependencyFlags dependencyFlags, uint32 memoryBarrierCount, VkMemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, VkBufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, VkImageMemoryBarrier* pImageMemoryBarriers);
		private static vkCmdPipelineBarrierFunction vkCmdPipelineBarrier_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdPipelineBarrier(VkCommandBuffer commandBuffer, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, VkDependencyFlags dependencyFlags, uint32 memoryBarrierCount, VkMemoryBarrier* pMemoryBarriers, uint32 bufferMemoryBarrierCount, VkBufferMemoryBarrier* pBufferMemoryBarriers, uint32 imageMemoryBarrierCount, VkImageMemoryBarrier* pImageMemoryBarriers)
			=> vkCmdPipelineBarrier_ptr(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);

		typealias vkCmdBeginQueryFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, VkQueryControlFlags flags);
		private static vkCmdBeginQueryFunction vkCmdBeginQuery_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginQuery(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, VkQueryControlFlags flags)
			=> vkCmdBeginQuery_ptr(commandBuffer, queryPool, query, flags);

		typealias vkCmdEndQueryFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query);
		private static vkCmdEndQueryFunction vkCmdEndQuery_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndQuery(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query)
			=> vkCmdEndQuery_ptr(commandBuffer, queryPool, query);

		typealias vkCmdResetQueryPoolFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount);
		private static vkCmdResetQueryPoolFunction vkCmdResetQueryPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdResetQueryPool(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount)
			=> vkCmdResetQueryPool_ptr(commandBuffer, queryPool, firstQuery, queryCount);

		typealias vkCmdWriteTimestampFunction = function void(VkCommandBuffer commandBuffer, VkPipelineStageFlags pipelineStage, VkQueryPool queryPool, uint32 query);
		private static vkCmdWriteTimestampFunction vkCmdWriteTimestamp_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWriteTimestamp(VkCommandBuffer commandBuffer, VkPipelineStageFlags pipelineStage, VkQueryPool queryPool, uint32 query)
			=> vkCmdWriteTimestamp_ptr(commandBuffer, pipelineStage, queryPool, query);

		typealias vkCmdCopyQueryPoolResultsFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount, VkBuffer dstBuffer, uint64 dstOffset, uint64 stride, VkQueryResultFlags flags);
		private static vkCmdCopyQueryPoolResultsFunction vkCmdCopyQueryPoolResults_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyQueryPoolResults(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount, VkBuffer dstBuffer, uint64 dstOffset, uint64 stride, VkQueryResultFlags flags)
			=> vkCmdCopyQueryPoolResults_ptr(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags);

		typealias vkCmdPushConstantsFunction = function void(VkCommandBuffer commandBuffer, VkPipelineLayout layout, VkShaderStageFlags stageFlags, uint32 offset, uint32 size, void* pValues);
		private static vkCmdPushConstantsFunction vkCmdPushConstants_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdPushConstants(VkCommandBuffer commandBuffer, VkPipelineLayout layout, VkShaderStageFlags stageFlags, uint32 offset, uint32 size, void* pValues)
			=> vkCmdPushConstants_ptr(commandBuffer, layout, stageFlags, offset, size, pValues);

		typealias vkCmdBeginRenderPassFunction = function void(VkCommandBuffer commandBuffer, VkRenderPassBeginInfo* pRenderPassBegin, VkSubpassContents contents);
		private static vkCmdBeginRenderPassFunction vkCmdBeginRenderPass_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginRenderPass(VkCommandBuffer commandBuffer, VkRenderPassBeginInfo* pRenderPassBegin, VkSubpassContents contents)
			=> vkCmdBeginRenderPass_ptr(commandBuffer, pRenderPassBegin, contents);

		typealias vkCmdNextSubpassFunction = function void(VkCommandBuffer commandBuffer, VkSubpassContents contents);
		private static vkCmdNextSubpassFunction vkCmdNextSubpass_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdNextSubpass(VkCommandBuffer commandBuffer, VkSubpassContents contents)
			=> vkCmdNextSubpass_ptr(commandBuffer, contents);

		typealias vkCmdEndRenderPassFunction = function void(VkCommandBuffer commandBuffer);
		private static vkCmdEndRenderPassFunction vkCmdEndRenderPass_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndRenderPass(VkCommandBuffer commandBuffer)
			=> vkCmdEndRenderPass_ptr(commandBuffer);

		typealias vkCmdExecuteCommandsFunction = function void(VkCommandBuffer commandBuffer, uint32 commandBufferCount, VkCommandBuffer* pCommandBuffers);
		private static vkCmdExecuteCommandsFunction vkCmdExecuteCommands_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdExecuteCommands(VkCommandBuffer commandBuffer, uint32 commandBufferCount, VkCommandBuffer* pCommandBuffers)
			=> vkCmdExecuteCommands_ptr(commandBuffer, commandBufferCount, pCommandBuffers);

		typealias vkEnumerateInstanceVersionFunction = function VkResult(uint32* pApiVersion);
		private static vkEnumerateInstanceVersionFunction vkEnumerateInstanceVersion_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumerateInstanceVersion(uint32* pApiVersion)
			=> vkEnumerateInstanceVersion_ptr(pApiVersion);

		typealias vkBindBufferMemory2Function = function VkResult(VkDevice device, uint32 bindInfoCount, VkBindBufferMemoryInfo* pBindInfos);
		private static vkBindBufferMemory2Function vkBindBufferMemory2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindBufferMemory2(VkDevice device, uint32 bindInfoCount, VkBindBufferMemoryInfo* pBindInfos)
			=> vkBindBufferMemory2_ptr(device, bindInfoCount, pBindInfos);

		typealias vkBindImageMemory2Function = function VkResult(VkDevice device, uint32 bindInfoCount, VkBindImageMemoryInfo* pBindInfos);
		private static vkBindImageMemory2Function vkBindImageMemory2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindImageMemory2(VkDevice device, uint32 bindInfoCount, VkBindImageMemoryInfo* pBindInfos)
			=> vkBindImageMemory2_ptr(device, bindInfoCount, pBindInfos);

		typealias vkGetDeviceGroupPeerMemoryFeaturesFunction = function void(VkDevice device, uint32 heapIndex, uint32 localDeviceIndex, uint32 remoteDeviceIndex, VkPeerMemoryFeatureFlags* pPeerMemoryFeatures);
		private static vkGetDeviceGroupPeerMemoryFeaturesFunction vkGetDeviceGroupPeerMemoryFeatures_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDeviceGroupPeerMemoryFeatures(VkDevice device, uint32 heapIndex, uint32 localDeviceIndex, uint32 remoteDeviceIndex, VkPeerMemoryFeatureFlags* pPeerMemoryFeatures)
			=> vkGetDeviceGroupPeerMemoryFeatures_ptr(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures);

		typealias vkCmdSetDeviceMaskFunction = function void(VkCommandBuffer commandBuffer, uint32 deviceMask);
		private static vkCmdSetDeviceMaskFunction vkCmdSetDeviceMask_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDeviceMask(VkCommandBuffer commandBuffer, uint32 deviceMask)
			=> vkCmdSetDeviceMask_ptr(commandBuffer, deviceMask);

		typealias vkCmdDispatchBaseFunction = function void(VkCommandBuffer commandBuffer, uint32 baseGroupX, uint32 baseGroupY, uint32 baseGroupZ, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ);
		private static vkCmdDispatchBaseFunction vkCmdDispatchBase_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDispatchBase(VkCommandBuffer commandBuffer, uint32 baseGroupX, uint32 baseGroupY, uint32 baseGroupZ, uint32 groupCountX, uint32 groupCountY, uint32 groupCountZ)
			=> vkCmdDispatchBase_ptr(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ);

		typealias vkEnumeratePhysicalDeviceGroupsFunction = function VkResult(VkInstance instance, uint32* pPhysicalDeviceGroupCount, VkPhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties);
		private static vkEnumeratePhysicalDeviceGroupsFunction vkEnumeratePhysicalDeviceGroups_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumeratePhysicalDeviceGroups(VkInstance instance, uint32* pPhysicalDeviceGroupCount, VkPhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties)
			=> vkEnumeratePhysicalDeviceGroups_ptr(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);

		typealias vkGetImageMemoryRequirements2Function = function void(VkDevice device, VkImageMemoryRequirementsInfo2* pInfo, VkMemoryRequirements2* pMemoryRequirements);
		private static vkGetImageMemoryRequirements2Function vkGetImageMemoryRequirements2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetImageMemoryRequirements2(VkDevice device, VkImageMemoryRequirementsInfo2* pInfo, VkMemoryRequirements2* pMemoryRequirements)
			=> vkGetImageMemoryRequirements2_ptr(device, pInfo, pMemoryRequirements);

		typealias vkGetBufferMemoryRequirements2Function = function void(VkDevice device, VkBufferMemoryRequirementsInfo2* pInfo, VkMemoryRequirements2* pMemoryRequirements);
		private static vkGetBufferMemoryRequirements2Function vkGetBufferMemoryRequirements2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetBufferMemoryRequirements2(VkDevice device, VkBufferMemoryRequirementsInfo2* pInfo, VkMemoryRequirements2* pMemoryRequirements)
			=> vkGetBufferMemoryRequirements2_ptr(device, pInfo, pMemoryRequirements);

		typealias vkGetImageSparseMemoryRequirements2Function = function void(VkDevice device, VkImageSparseMemoryRequirementsInfo2* pInfo, uint32* pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements2* pSparseMemoryRequirements);
		private static vkGetImageSparseMemoryRequirements2Function vkGetImageSparseMemoryRequirements2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetImageSparseMemoryRequirements2(VkDevice device, VkImageSparseMemoryRequirementsInfo2* pInfo, uint32* pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements2* pSparseMemoryRequirements)
			=> vkGetImageSparseMemoryRequirements2_ptr(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);

		typealias vkGetPhysicalDeviceFeatures2Function = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures2* pFeatures);
		private static vkGetPhysicalDeviceFeatures2Function vkGetPhysicalDeviceFeatures2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceFeatures2(VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures2* pFeatures)
			=> vkGetPhysicalDeviceFeatures2_ptr(physicalDevice, pFeatures);

		typealias vkGetPhysicalDeviceProperties2Function = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties2* pProperties);
		private static vkGetPhysicalDeviceProperties2Function vkGetPhysicalDeviceProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceProperties2(VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties2* pProperties)
			=> vkGetPhysicalDeviceProperties2_ptr(physicalDevice, pProperties);

		typealias vkGetPhysicalDeviceFormatProperties2Function = function void(VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties2* pFormatProperties);
		private static vkGetPhysicalDeviceFormatProperties2Function vkGetPhysicalDeviceFormatProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceFormatProperties2(VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties2* pFormatProperties)
			=> vkGetPhysicalDeviceFormatProperties2_ptr(physicalDevice, format, pFormatProperties);

		typealias vkGetPhysicalDeviceImageFormatProperties2Function = function VkResult(VkPhysicalDevice physicalDevice, VkPhysicalDeviceImageFormatInfo2* pImageFormatInfo, VkImageFormatProperties2* pImageFormatProperties);
		private static vkGetPhysicalDeviceImageFormatProperties2Function vkGetPhysicalDeviceImageFormatProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceImageFormatProperties2(VkPhysicalDevice physicalDevice, VkPhysicalDeviceImageFormatInfo2* pImageFormatInfo, VkImageFormatProperties2* pImageFormatProperties)
			=> vkGetPhysicalDeviceImageFormatProperties2_ptr(physicalDevice, pImageFormatInfo, pImageFormatProperties);

		typealias vkGetPhysicalDeviceQueueFamilyProperties2Function = function void(VkPhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, VkQueueFamilyProperties2* pQueueFamilyProperties);
		private static vkGetPhysicalDeviceQueueFamilyProperties2Function vkGetPhysicalDeviceQueueFamilyProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceQueueFamilyProperties2(VkPhysicalDevice physicalDevice, uint32* pQueueFamilyPropertyCount, VkQueueFamilyProperties2* pQueueFamilyProperties)
			=> vkGetPhysicalDeviceQueueFamilyProperties2_ptr(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);

		typealias vkGetPhysicalDeviceMemoryProperties2Function = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties2* pMemoryProperties);
		private static vkGetPhysicalDeviceMemoryProperties2Function vkGetPhysicalDeviceMemoryProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceMemoryProperties2(VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties2* pMemoryProperties)
			=> vkGetPhysicalDeviceMemoryProperties2_ptr(physicalDevice, pMemoryProperties);

		typealias vkGetPhysicalDeviceSparseImageFormatProperties2Function = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint32* pPropertyCount, VkSparseImageFormatProperties2* pProperties);
		private static vkGetPhysicalDeviceSparseImageFormatProperties2Function vkGetPhysicalDeviceSparseImageFormatProperties2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceSparseImageFormatProperties2(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint32* pPropertyCount, VkSparseImageFormatProperties2* pProperties)
			=> vkGetPhysicalDeviceSparseImageFormatProperties2_ptr(physicalDevice, pFormatInfo, pPropertyCount, pProperties);

		typealias vkTrimCommandPoolFunction = function void(VkDevice device, VkCommandPool commandPool, uint32 flags);
		private static vkTrimCommandPoolFunction vkTrimCommandPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkTrimCommandPool(VkDevice device, VkCommandPool commandPool, uint32 flags)
			=> vkTrimCommandPool_ptr(device, commandPool, flags);

		typealias vkGetDeviceQueue2Function = function void(VkDevice device, VkDeviceQueueInfo2* pQueueInfo, VkQueue* pQueue);
		private static vkGetDeviceQueue2Function vkGetDeviceQueue2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDeviceQueue2(VkDevice device, VkDeviceQueueInfo2* pQueueInfo, VkQueue* pQueue)
			=> vkGetDeviceQueue2_ptr(device, pQueueInfo, pQueue);

		typealias vkCreateSamplerYcbcrConversionFunction = function VkResult(VkDevice device, VkSamplerYcbcrConversionCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSamplerYcbcrConversion* pYcbcrConversion);
		private static vkCreateSamplerYcbcrConversionFunction vkCreateSamplerYcbcrConversion_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateSamplerYcbcrConversion(VkDevice device, VkSamplerYcbcrConversionCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSamplerYcbcrConversion* pYcbcrConversion)
			=> vkCreateSamplerYcbcrConversion_ptr(device, pCreateInfo, pAllocator, pYcbcrConversion);

		typealias vkDestroySamplerYcbcrConversionFunction = function void(VkDevice device, VkSamplerYcbcrConversion ycbcrConversion, VkAllocationCallbacks* pAllocator);
		private static vkDestroySamplerYcbcrConversionFunction vkDestroySamplerYcbcrConversion_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroySamplerYcbcrConversion(VkDevice device, VkSamplerYcbcrConversion ycbcrConversion, VkAllocationCallbacks* pAllocator)
			=> vkDestroySamplerYcbcrConversion_ptr(device, ycbcrConversion, pAllocator);

		typealias vkCreateDescriptorUpdateTemplateFunction = function VkResult(VkDevice device, VkDescriptorUpdateTemplateCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorUpdateTemplate* pDescriptorUpdateTemplate);
		private static vkCreateDescriptorUpdateTemplateFunction vkCreateDescriptorUpdateTemplate_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDescriptorUpdateTemplate(VkDevice device, VkDescriptorUpdateTemplateCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorUpdateTemplate* pDescriptorUpdateTemplate)
			=> vkCreateDescriptorUpdateTemplate_ptr(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);

		typealias vkDestroyDescriptorUpdateTemplateFunction = function void(VkDevice device, VkDescriptorUpdateTemplate descriptorUpdateTemplate, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDescriptorUpdateTemplateFunction vkDestroyDescriptorUpdateTemplate_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDescriptorUpdateTemplate(VkDevice device, VkDescriptorUpdateTemplate descriptorUpdateTemplate, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDescriptorUpdateTemplate_ptr(device, descriptorUpdateTemplate, pAllocator);

		typealias vkUpdateDescriptorSetWithTemplateFunction = function void(VkDevice device, VkDescriptorSet descriptorSet, VkDescriptorUpdateTemplate descriptorUpdateTemplate, void* pData);
		private static vkUpdateDescriptorSetWithTemplateFunction vkUpdateDescriptorSetWithTemplate_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkUpdateDescriptorSetWithTemplate(VkDevice device, VkDescriptorSet descriptorSet, VkDescriptorUpdateTemplate descriptorUpdateTemplate, void* pData)
			=> vkUpdateDescriptorSetWithTemplate_ptr(device, descriptorSet, descriptorUpdateTemplate, pData);

		typealias vkGetPhysicalDeviceExternalBufferPropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalBufferInfo* pExternalBufferInfo, VkExternalBufferProperties* pExternalBufferProperties);
		private static vkGetPhysicalDeviceExternalBufferPropertiesFunction vkGetPhysicalDeviceExternalBufferProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceExternalBufferProperties(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalBufferInfo* pExternalBufferInfo, VkExternalBufferProperties* pExternalBufferProperties)
			=> vkGetPhysicalDeviceExternalBufferProperties_ptr(physicalDevice, pExternalBufferInfo, pExternalBufferProperties);

		typealias vkGetPhysicalDeviceExternalFencePropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalFenceInfo* pExternalFenceInfo, VkExternalFenceProperties* pExternalFenceProperties);
		private static vkGetPhysicalDeviceExternalFencePropertiesFunction vkGetPhysicalDeviceExternalFenceProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceExternalFenceProperties(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalFenceInfo* pExternalFenceInfo, VkExternalFenceProperties* pExternalFenceProperties)
			=> vkGetPhysicalDeviceExternalFenceProperties_ptr(physicalDevice, pExternalFenceInfo, pExternalFenceProperties);

		typealias vkGetPhysicalDeviceExternalSemaphorePropertiesFunction = function void(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, VkExternalSemaphoreProperties* pExternalSemaphoreProperties);
		private static vkGetPhysicalDeviceExternalSemaphorePropertiesFunction vkGetPhysicalDeviceExternalSemaphoreProperties_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceExternalSemaphoreProperties(VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, VkExternalSemaphoreProperties* pExternalSemaphoreProperties)
			=> vkGetPhysicalDeviceExternalSemaphoreProperties_ptr(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties);

		typealias vkGetDescriptorSetLayoutSupportFunction = function void(VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkDescriptorSetLayoutSupport* pSupport);
		private static vkGetDescriptorSetLayoutSupportFunction vkGetDescriptorSetLayoutSupport_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDescriptorSetLayoutSupport(VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkDescriptorSetLayoutSupport* pSupport)
			=> vkGetDescriptorSetLayoutSupport_ptr(device, pCreateInfo, pSupport);

		typealias vkCmdDrawIndirectCountFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride);
		private static vkCmdDrawIndirectCountFunction vkCmdDrawIndirectCount_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndirectCount(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride)
			=> vkCmdDrawIndirectCount_ptr(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);

		typealias vkCmdDrawIndexedIndirectCountFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride);
		private static vkCmdDrawIndexedIndirectCountFunction vkCmdDrawIndexedIndirectCount_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndexedIndirectCount(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride)
			=> vkCmdDrawIndexedIndirectCount_ptr(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);

		typealias vkCreateRenderPass2Function = function VkResult(VkDevice device, VkRenderPassCreateInfo2* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass);
		private static vkCreateRenderPass2Function vkCreateRenderPass2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateRenderPass2(VkDevice device, VkRenderPassCreateInfo2* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass)
			=> vkCreateRenderPass2_ptr(device, pCreateInfo, pAllocator, pRenderPass);

		typealias vkCmdBeginRenderPass2Function = function void(VkCommandBuffer commandBuffer, VkRenderPassBeginInfo* pRenderPassBegin, VkSubpassBeginInfo* pSubpassBeginInfo);
		private static vkCmdBeginRenderPass2Function vkCmdBeginRenderPass2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginRenderPass2(VkCommandBuffer commandBuffer, VkRenderPassBeginInfo* pRenderPassBegin, VkSubpassBeginInfo* pSubpassBeginInfo)
			=> vkCmdBeginRenderPass2_ptr(commandBuffer, pRenderPassBegin, pSubpassBeginInfo);

		typealias vkCmdNextSubpass2Function = function void(VkCommandBuffer commandBuffer, VkSubpassBeginInfo* pSubpassBeginInfo, VkSubpassEndInfo* pSubpassEndInfo);
		private static vkCmdNextSubpass2Function vkCmdNextSubpass2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdNextSubpass2(VkCommandBuffer commandBuffer, VkSubpassBeginInfo* pSubpassBeginInfo, VkSubpassEndInfo* pSubpassEndInfo)
			=> vkCmdNextSubpass2_ptr(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo);

		typealias vkCmdEndRenderPass2Function = function void(VkCommandBuffer commandBuffer, VkSubpassEndInfo* pSubpassEndInfo);
		private static vkCmdEndRenderPass2Function vkCmdEndRenderPass2_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndRenderPass2(VkCommandBuffer commandBuffer, VkSubpassEndInfo* pSubpassEndInfo)
			=> vkCmdEndRenderPass2_ptr(commandBuffer, pSubpassEndInfo);

		typealias vkResetQueryPoolFunction = function void(VkDevice device, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount);
		private static vkResetQueryPoolFunction vkResetQueryPool_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkResetQueryPool(VkDevice device, VkQueryPool queryPool, uint32 firstQuery, uint32 queryCount)
			=> vkResetQueryPool_ptr(device, queryPool, firstQuery, queryCount);

		typealias vkGetSemaphoreCounterValueFunction = function VkResult(VkDevice device, VkSemaphore semaphore, uint64* pValue);
		private static vkGetSemaphoreCounterValueFunction vkGetSemaphoreCounterValue_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSemaphoreCounterValue(VkDevice device, VkSemaphore semaphore, uint64* pValue)
			=> vkGetSemaphoreCounterValue_ptr(device, semaphore, pValue);

		typealias vkWaitSemaphoresFunction = function VkResult(VkDevice device, VkSemaphoreWaitInfo* pWaitInfo, uint64 timeout);
		private static vkWaitSemaphoresFunction vkWaitSemaphores_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkWaitSemaphores(VkDevice device, VkSemaphoreWaitInfo* pWaitInfo, uint64 timeout)
			=> vkWaitSemaphores_ptr(device, pWaitInfo, timeout);

		typealias vkSignalSemaphoreFunction = function VkResult(VkDevice device, VkSemaphoreSignalInfo* pSignalInfo);
		private static vkSignalSemaphoreFunction vkSignalSemaphore_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkSignalSemaphore(VkDevice device, VkSemaphoreSignalInfo* pSignalInfo)
			=> vkSignalSemaphore_ptr(device, pSignalInfo);

		typealias vkGetBufferDeviceAddressFunction = function uint64(VkDevice device, VkBufferDeviceAddressInfo* pInfo);
		private static vkGetBufferDeviceAddressFunction vkGetBufferDeviceAddress_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint64 vkGetBufferDeviceAddress(VkDevice device, VkBufferDeviceAddressInfo* pInfo)
			=> vkGetBufferDeviceAddress_ptr(device, pInfo);

		typealias vkGetBufferOpaqueCaptureAddressFunction = function uint64(VkDevice device, VkBufferDeviceAddressInfo* pInfo);
		private static vkGetBufferOpaqueCaptureAddressFunction vkGetBufferOpaqueCaptureAddress_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint64 vkGetBufferOpaqueCaptureAddress(VkDevice device, VkBufferDeviceAddressInfo* pInfo)
			=> vkGetBufferOpaqueCaptureAddress_ptr(device, pInfo);

		typealias vkGetDeviceMemoryOpaqueCaptureAddressFunction = function uint64(VkDevice device, VkDeviceMemoryOpaqueCaptureAddressInfo* pInfo);
		private static vkGetDeviceMemoryOpaqueCaptureAddressFunction vkGetDeviceMemoryOpaqueCaptureAddress_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint64 vkGetDeviceMemoryOpaqueCaptureAddress(VkDevice device, VkDeviceMemoryOpaqueCaptureAddressInfo* pInfo)
			=> vkGetDeviceMemoryOpaqueCaptureAddress_ptr(device, pInfo);

		typealias vkDestroySurfaceKHRFunction = function void(VkInstance instance, VkSurfaceKHR surface, VkAllocationCallbacks* pAllocator);
		private static vkDestroySurfaceKHRFunction vkDestroySurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroySurfaceKHR(VkInstance instance, VkSurfaceKHR surface, VkAllocationCallbacks* pAllocator)
			=> vkDestroySurfaceKHR_ptr(instance, surface, pAllocator);

		typealias vkGetPhysicalDeviceSurfaceSupportKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, VkSurfaceKHR surface, VkBool32* pSupported);
		private static vkGetPhysicalDeviceSurfaceSupportKHRFunction vkGetPhysicalDeviceSurfaceSupportKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceSupportKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, VkSurfaceKHR surface, VkBool32* pSupported)
			=> vkGetPhysicalDeviceSurfaceSupportKHR_ptr(physicalDevice, queueFamilyIndex, surface, pSupported);

		typealias vkGetPhysicalDeviceSurfaceCapabilitiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilitiesKHR* pSurfaceCapabilities);
		private static vkGetPhysicalDeviceSurfaceCapabilitiesKHRFunction vkGetPhysicalDeviceSurfaceCapabilitiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceCapabilitiesKHR(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilitiesKHR* pSurfaceCapabilities)
			=> vkGetPhysicalDeviceSurfaceCapabilitiesKHR_ptr(physicalDevice, surface, pSurfaceCapabilities);

		typealias vkGetPhysicalDeviceSurfaceFormatsKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32* pSurfaceFormatCount, VkSurfaceFormatKHR* pSurfaceFormats);
		private static vkGetPhysicalDeviceSurfaceFormatsKHRFunction vkGetPhysicalDeviceSurfaceFormatsKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceFormatsKHR(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32* pSurfaceFormatCount, VkSurfaceFormatKHR* pSurfaceFormats)
			=> vkGetPhysicalDeviceSurfaceFormatsKHR_ptr(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);

		typealias vkGetPhysicalDeviceSurfacePresentModesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32* pPresentModeCount, VkPresentModeKHR* pPresentModes);
		private static vkGetPhysicalDeviceSurfacePresentModesKHRFunction vkGetPhysicalDeviceSurfacePresentModesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfacePresentModesKHR(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32* pPresentModeCount, VkPresentModeKHR* pPresentModes)
			=> vkGetPhysicalDeviceSurfacePresentModesKHR_ptr(physicalDevice, surface, pPresentModeCount, pPresentModes);

		typealias vkCreateSwapchainKHRFunction = function VkResult(VkDevice device, VkSwapchainCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchain);
		private static vkCreateSwapchainKHRFunction vkCreateSwapchainKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateSwapchainKHR(VkDevice device, VkSwapchainCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchain)
			=> vkCreateSwapchainKHR_ptr(device, pCreateInfo, pAllocator, pSwapchain);

		typealias vkDestroySwapchainKHRFunction = function void(VkDevice device, VkSwapchainKHR swapchain, VkAllocationCallbacks* pAllocator);
		private static vkDestroySwapchainKHRFunction vkDestroySwapchainKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroySwapchainKHR(VkDevice device, VkSwapchainKHR swapchain, VkAllocationCallbacks* pAllocator)
			=> vkDestroySwapchainKHR_ptr(device, swapchain, pAllocator);

		typealias vkGetSwapchainImagesKHRFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain, uint32* pSwapchainImageCount, VkImage* pSwapchainImages);
		private static vkGetSwapchainImagesKHRFunction vkGetSwapchainImagesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSwapchainImagesKHR(VkDevice device, VkSwapchainKHR swapchain, uint32* pSwapchainImageCount, VkImage* pSwapchainImages)
			=> vkGetSwapchainImagesKHR_ptr(device, swapchain, pSwapchainImageCount, pSwapchainImages);

		typealias vkAcquireNextImageKHRFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain, uint64 timeout, VkSemaphore semaphore, VkFence fence, uint32* pImageIndex);
		private static vkAcquireNextImageKHRFunction vkAcquireNextImageKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireNextImageKHR(VkDevice device, VkSwapchainKHR swapchain, uint64 timeout, VkSemaphore semaphore, VkFence fence, uint32* pImageIndex)
			=> vkAcquireNextImageKHR_ptr(device, swapchain, timeout, semaphore, fence, pImageIndex);

		typealias vkQueuePresentKHRFunction = function VkResult(VkQueue queue, VkPresentInfoKHR* pPresentInfo);
		private static vkQueuePresentKHRFunction vkQueuePresentKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueuePresentKHR(VkQueue queue, VkPresentInfoKHR* pPresentInfo)
			=> vkQueuePresentKHR_ptr(queue, pPresentInfo);

		typealias vkGetPhysicalDeviceDisplayPropertiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPropertiesKHR* pProperties);
		private static vkGetPhysicalDeviceDisplayPropertiesKHRFunction vkGetPhysicalDeviceDisplayPropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceDisplayPropertiesKHR(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPropertiesKHR* pProperties)
			=> vkGetPhysicalDeviceDisplayPropertiesKHR_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetPhysicalDeviceDisplayPlanePropertiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPlanePropertiesKHR* pProperties);
		private static vkGetPhysicalDeviceDisplayPlanePropertiesKHRFunction vkGetPhysicalDeviceDisplayPlanePropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceDisplayPlanePropertiesKHR(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPlanePropertiesKHR* pProperties)
			=> vkGetPhysicalDeviceDisplayPlanePropertiesKHR_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetDisplayPlaneSupportedDisplaysKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32 planeIndex, uint32* pDisplayCount, VkDisplayKHR* pDisplays);
		private static vkGetDisplayPlaneSupportedDisplaysKHRFunction vkGetDisplayPlaneSupportedDisplaysKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDisplayPlaneSupportedDisplaysKHR(VkPhysicalDevice physicalDevice, uint32 planeIndex, uint32* pDisplayCount, VkDisplayKHR* pDisplays)
			=> vkGetDisplayPlaneSupportedDisplaysKHR_ptr(physicalDevice, planeIndex, pDisplayCount, pDisplays);

		typealias vkGetDisplayModePropertiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32* pPropertyCount, VkDisplayModePropertiesKHR* pProperties);
		private static vkGetDisplayModePropertiesKHRFunction vkGetDisplayModePropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDisplayModePropertiesKHR(VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32* pPropertyCount, VkDisplayModePropertiesKHR* pProperties)
			=> vkGetDisplayModePropertiesKHR_ptr(physicalDevice, display, pPropertyCount, pProperties);

		typealias vkCreateDisplayModeKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayKHR display, VkDisplayModeCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDisplayModeKHR* pMode);
		private static vkCreateDisplayModeKHRFunction vkCreateDisplayModeKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDisplayModeKHR(VkPhysicalDevice physicalDevice, VkDisplayKHR display, VkDisplayModeCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDisplayModeKHR* pMode)
			=> vkCreateDisplayModeKHR_ptr(physicalDevice, display, pCreateInfo, pAllocator, pMode);

		typealias vkGetDisplayPlaneCapabilitiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayModeKHR mode, uint32 planeIndex, VkDisplayPlaneCapabilitiesKHR* pCapabilities);
		private static vkGetDisplayPlaneCapabilitiesKHRFunction vkGetDisplayPlaneCapabilitiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDisplayPlaneCapabilitiesKHR(VkPhysicalDevice physicalDevice, VkDisplayModeKHR mode, uint32 planeIndex, VkDisplayPlaneCapabilitiesKHR* pCapabilities)
			=> vkGetDisplayPlaneCapabilitiesKHR_ptr(physicalDevice, mode, planeIndex, pCapabilities);

		typealias vkCreateDisplayPlaneSurfaceKHRFunction = function VkResult(VkInstance instance, VkDisplaySurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateDisplayPlaneSurfaceKHRFunction vkCreateDisplayPlaneSurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDisplayPlaneSurfaceKHR(VkInstance instance, VkDisplaySurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateDisplayPlaneSurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkCreateSharedSwapchainsKHRFunction = function VkResult(VkDevice device, uint32 swapchainCount, VkSwapchainCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchains);
		private static vkCreateSharedSwapchainsKHRFunction vkCreateSharedSwapchainsKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateSharedSwapchainsKHR(VkDevice device, uint32 swapchainCount, VkSwapchainCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchains)
			=> vkCreateSharedSwapchainsKHR_ptr(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains);

		typealias vkCreateXlibSurfaceKHRFunction = function VkResult(VkInstance instance, VkXlibSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateXlibSurfaceKHRFunction vkCreateXlibSurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateXlibSurfaceKHR(VkInstance instance, VkXlibSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateXlibSurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceXlibPresentationSupportKHRFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* dpy, void* visualID);
		private static vkGetPhysicalDeviceXlibPresentationSupportKHRFunction vkGetPhysicalDeviceXlibPresentationSupportKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceXlibPresentationSupportKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* dpy, void* visualID)
			=> vkGetPhysicalDeviceXlibPresentationSupportKHR_ptr(physicalDevice, queueFamilyIndex, dpy, visualID);

		typealias vkCreateXcbSurfaceKHRFunction = function VkResult(VkInstance instance, VkXcbSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateXcbSurfaceKHRFunction vkCreateXcbSurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateXcbSurfaceKHR(VkInstance instance, VkXcbSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateXcbSurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceXcbPresentationSupportKHRFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* connection, void* visual_id);
		private static vkGetPhysicalDeviceXcbPresentationSupportKHRFunction vkGetPhysicalDeviceXcbPresentationSupportKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* connection, void* visual_id)
			=> vkGetPhysicalDeviceXcbPresentationSupportKHR_ptr(physicalDevice, queueFamilyIndex, connection, visual_id);

		typealias vkCreateWaylandSurfaceKHRFunction = function VkResult(VkInstance instance, VkWaylandSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateWaylandSurfaceKHRFunction vkCreateWaylandSurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateWaylandSurfaceKHR(VkInstance instance, VkWaylandSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateWaylandSurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceWaylandPresentationSupportKHRFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* display);
		private static vkGetPhysicalDeviceWaylandPresentationSupportKHRFunction vkGetPhysicalDeviceWaylandPresentationSupportKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceWaylandPresentationSupportKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* display)
			=> vkGetPhysicalDeviceWaylandPresentationSupportKHR_ptr(physicalDevice, queueFamilyIndex, display);

		typealias vkCreateAndroidSurfaceKHRFunction = function VkResult(VkInstance instance, VkAndroidSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateAndroidSurfaceKHRFunction vkCreateAndroidSurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateAndroidSurfaceKHR(VkInstance instance, VkAndroidSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateAndroidSurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkCreateWin32SurfaceKHRFunction = function VkResult(VkInstance instance, VkWin32SurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateWin32SurfaceKHRFunction vkCreateWin32SurfaceKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateWin32SurfaceKHR(VkInstance instance, VkWin32SurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateWin32SurfaceKHR_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceWin32PresentationSupportKHRFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex);
		private static vkGetPhysicalDeviceWin32PresentationSupportKHRFunction vkGetPhysicalDeviceWin32PresentationSupportKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceWin32PresentationSupportKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex)
			=> vkGetPhysicalDeviceWin32PresentationSupportKHR_ptr(physicalDevice, queueFamilyIndex);

		typealias vkCreateDebugReportCallbackEXTFunction = function VkResult(VkInstance instance, VkDebugReportCallbackCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugReportCallbackEXT* pCallback);
		private static vkCreateDebugReportCallbackEXTFunction vkCreateDebugReportCallbackEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDebugReportCallbackEXT(VkInstance instance, VkDebugReportCallbackCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugReportCallbackEXT* pCallback)
			=> vkCreateDebugReportCallbackEXT_ptr(instance, pCreateInfo, pAllocator, pCallback);

		typealias vkDestroyDebugReportCallbackEXTFunction = function void(VkInstance instance, VkDebugReportCallbackEXT callback, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDebugReportCallbackEXTFunction vkDestroyDebugReportCallbackEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDebugReportCallbackEXT(VkInstance instance, VkDebugReportCallbackEXT callback, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDebugReportCallbackEXT_ptr(instance, callback, pAllocator);

		typealias vkDebugReportMessageEXTFunction = function void(VkInstance instance, VkDebugReportFlagsEXT flags, VkDebugReportObjectTypeEXT objectType, uint64 object, uint location, int32 messageCode, char8* pLayerPrefix, char8* pMessage);
		private static vkDebugReportMessageEXTFunction vkDebugReportMessageEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDebugReportMessageEXT(VkInstance instance, VkDebugReportFlagsEXT flags, VkDebugReportObjectTypeEXT objectType, uint64 object, uint location, int32 messageCode, char8* pLayerPrefix, char8* pMessage)
			=> vkDebugReportMessageEXT_ptr(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);

		typealias vkDebugMarkerSetObjectTagEXTFunction = function VkResult(VkDevice device, VkDebugMarkerObjectTagInfoEXT* pTagInfo);
		private static vkDebugMarkerSetObjectTagEXTFunction vkDebugMarkerSetObjectTagEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkDebugMarkerSetObjectTagEXT(VkDevice device, VkDebugMarkerObjectTagInfoEXT* pTagInfo)
			=> vkDebugMarkerSetObjectTagEXT_ptr(device, pTagInfo);

		typealias vkDebugMarkerSetObjectNameEXTFunction = function VkResult(VkDevice device, VkDebugMarkerObjectNameInfoEXT* pNameInfo);
		private static vkDebugMarkerSetObjectNameEXTFunction vkDebugMarkerSetObjectNameEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkDebugMarkerSetObjectNameEXT(VkDevice device, VkDebugMarkerObjectNameInfoEXT* pNameInfo)
			=> vkDebugMarkerSetObjectNameEXT_ptr(device, pNameInfo);

		typealias vkCmdDebugMarkerBeginEXTFunction = function void(VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT* pMarkerInfo);
		private static vkCmdDebugMarkerBeginEXTFunction vkCmdDebugMarkerBeginEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDebugMarkerBeginEXT(VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT* pMarkerInfo)
			=> vkCmdDebugMarkerBeginEXT_ptr(commandBuffer, pMarkerInfo);

		typealias vkCmdDebugMarkerEndEXTFunction = function void(VkCommandBuffer commandBuffer);
		private static vkCmdDebugMarkerEndEXTFunction vkCmdDebugMarkerEndEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDebugMarkerEndEXT(VkCommandBuffer commandBuffer)
			=> vkCmdDebugMarkerEndEXT_ptr(commandBuffer);

		typealias vkCmdDebugMarkerInsertEXTFunction = function void(VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT* pMarkerInfo);
		private static vkCmdDebugMarkerInsertEXTFunction vkCmdDebugMarkerInsertEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDebugMarkerInsertEXT(VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT* pMarkerInfo)
			=> vkCmdDebugMarkerInsertEXT_ptr(commandBuffer, pMarkerInfo);

		typealias vkGetPhysicalDeviceVideoCapabilitiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkVideoProfileKHR* pVideoProfile, VkVideoCapabilitiesKHR* pCapabilities);
		private static vkGetPhysicalDeviceVideoCapabilitiesKHRFunction vkGetPhysicalDeviceVideoCapabilitiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceVideoCapabilitiesKHR(VkPhysicalDevice physicalDevice, VkVideoProfileKHR* pVideoProfile, VkVideoCapabilitiesKHR* pCapabilities)
			=> vkGetPhysicalDeviceVideoCapabilitiesKHR_ptr(physicalDevice, pVideoProfile, pCapabilities);

		typealias vkGetPhysicalDeviceVideoFormatPropertiesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoFormatInfoKHR* pVideoFormatInfo, uint32* pVideoFormatPropertyCount, VkVideoFormatPropertiesKHR* pVideoFormatProperties);
		private static vkGetPhysicalDeviceVideoFormatPropertiesKHRFunction vkGetPhysicalDeviceVideoFormatPropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceVideoFormatPropertiesKHR(VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoFormatInfoKHR* pVideoFormatInfo, uint32* pVideoFormatPropertyCount, VkVideoFormatPropertiesKHR* pVideoFormatProperties)
			=> vkGetPhysicalDeviceVideoFormatPropertiesKHR_ptr(physicalDevice, pVideoFormatInfo, pVideoFormatPropertyCount, pVideoFormatProperties);

		typealias vkCreateVideoSessionKHRFunction = function VkResult(VkDevice device, VkVideoSessionCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionKHR* pVideoSession);
		private static vkCreateVideoSessionKHRFunction vkCreateVideoSessionKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateVideoSessionKHR(VkDevice device, VkVideoSessionCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionKHR* pVideoSession)
			=> vkCreateVideoSessionKHR_ptr(device, pCreateInfo, pAllocator, pVideoSession);

		typealias vkDestroyVideoSessionKHRFunction = function void(VkDevice device, VkVideoSessionKHR videoSession, VkAllocationCallbacks* pAllocator);
		private static vkDestroyVideoSessionKHRFunction vkDestroyVideoSessionKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyVideoSessionKHR(VkDevice device, VkVideoSessionKHR videoSession, VkAllocationCallbacks* pAllocator)
			=> vkDestroyVideoSessionKHR_ptr(device, videoSession, pAllocator);

		typealias vkGetVideoSessionMemoryRequirementsKHRFunction = function VkResult(VkDevice device, VkVideoSessionKHR videoSession, uint32* pVideoSessionMemoryRequirementsCount, VkVideoGetMemoryPropertiesKHR* pVideoSessionMemoryRequirements);
		private static vkGetVideoSessionMemoryRequirementsKHRFunction vkGetVideoSessionMemoryRequirementsKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetVideoSessionMemoryRequirementsKHR(VkDevice device, VkVideoSessionKHR videoSession, uint32* pVideoSessionMemoryRequirementsCount, VkVideoGetMemoryPropertiesKHR* pVideoSessionMemoryRequirements)
			=> vkGetVideoSessionMemoryRequirementsKHR_ptr(device, videoSession, pVideoSessionMemoryRequirementsCount, pVideoSessionMemoryRequirements);

		typealias vkBindVideoSessionMemoryKHRFunction = function VkResult(VkDevice device, VkVideoSessionKHR videoSession, uint32 videoSessionBindMemoryCount, VkVideoBindMemoryKHR* pVideoSessionBindMemories);
		private static vkBindVideoSessionMemoryKHRFunction vkBindVideoSessionMemoryKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindVideoSessionMemoryKHR(VkDevice device, VkVideoSessionKHR videoSession, uint32 videoSessionBindMemoryCount, VkVideoBindMemoryKHR* pVideoSessionBindMemories)
			=> vkBindVideoSessionMemoryKHR_ptr(device, videoSession, videoSessionBindMemoryCount, pVideoSessionBindMemories);

		typealias vkCreateVideoSessionParametersKHRFunction = function VkResult(VkDevice device, VkVideoSessionParametersCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionParametersKHR* pVideoSessionParameters);
		private static vkCreateVideoSessionParametersKHRFunction vkCreateVideoSessionParametersKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateVideoSessionParametersKHR(VkDevice device, VkVideoSessionParametersCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionParametersKHR* pVideoSessionParameters)
			=> vkCreateVideoSessionParametersKHR_ptr(device, pCreateInfo, pAllocator, pVideoSessionParameters);

		typealias vkUpdateVideoSessionParametersKHRFunction = function VkResult(VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkVideoSessionParametersUpdateInfoKHR* pUpdateInfo);
		private static vkUpdateVideoSessionParametersKHRFunction vkUpdateVideoSessionParametersKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkUpdateVideoSessionParametersKHR(VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkVideoSessionParametersUpdateInfoKHR* pUpdateInfo)
			=> vkUpdateVideoSessionParametersKHR_ptr(device, videoSessionParameters, pUpdateInfo);

		typealias vkDestroyVideoSessionParametersKHRFunction = function void(VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkAllocationCallbacks* pAllocator);
		private static vkDestroyVideoSessionParametersKHRFunction vkDestroyVideoSessionParametersKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyVideoSessionParametersKHR(VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkAllocationCallbacks* pAllocator)
			=> vkDestroyVideoSessionParametersKHR_ptr(device, videoSessionParameters, pAllocator);

		typealias vkCmdBeginVideoCodingKHRFunction = function void(VkCommandBuffer commandBuffer, VkVideoBeginCodingInfoKHR* pBeginInfo);
		private static vkCmdBeginVideoCodingKHRFunction vkCmdBeginVideoCodingKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginVideoCodingKHR(VkCommandBuffer commandBuffer, VkVideoBeginCodingInfoKHR* pBeginInfo)
			=> vkCmdBeginVideoCodingKHR_ptr(commandBuffer, pBeginInfo);

		typealias vkCmdEndVideoCodingKHRFunction = function void(VkCommandBuffer commandBuffer, VkVideoEndCodingInfoKHR* pEndCodingInfo);
		private static vkCmdEndVideoCodingKHRFunction vkCmdEndVideoCodingKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndVideoCodingKHR(VkCommandBuffer commandBuffer, VkVideoEndCodingInfoKHR* pEndCodingInfo)
			=> vkCmdEndVideoCodingKHR_ptr(commandBuffer, pEndCodingInfo);

		typealias vkCmdControlVideoCodingKHRFunction = function void(VkCommandBuffer commandBuffer, VkVideoCodingControlInfoKHR* pCodingControlInfo);
		private static vkCmdControlVideoCodingKHRFunction vkCmdControlVideoCodingKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdControlVideoCodingKHR(VkCommandBuffer commandBuffer, VkVideoCodingControlInfoKHR* pCodingControlInfo)
			=> vkCmdControlVideoCodingKHR_ptr(commandBuffer, pCodingControlInfo);

		typealias vkCmdDecodeVideoKHRFunction = function void(VkCommandBuffer commandBuffer, VkVideoDecodeInfoKHR* pFrameInfo);
		private static vkCmdDecodeVideoKHRFunction vkCmdDecodeVideoKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDecodeVideoKHR(VkCommandBuffer commandBuffer, VkVideoDecodeInfoKHR* pFrameInfo)
			=> vkCmdDecodeVideoKHR_ptr(commandBuffer, pFrameInfo);

		typealias vkCmdBindTransformFeedbackBuffersEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets, uint64* pSizes);
		private static vkCmdBindTransformFeedbackBuffersEXTFunction vkCmdBindTransformFeedbackBuffersEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindTransformFeedbackBuffersEXT(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets, uint64* pSizes)
			=> vkCmdBindTransformFeedbackBuffersEXT_ptr(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes);

		typealias vkCmdBeginTransformFeedbackEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, VkBuffer* pCounterBuffers, uint64* pCounterBufferOffsets);
		private static vkCmdBeginTransformFeedbackEXTFunction vkCmdBeginTransformFeedbackEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginTransformFeedbackEXT(VkCommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, VkBuffer* pCounterBuffers, uint64* pCounterBufferOffsets)
			=> vkCmdBeginTransformFeedbackEXT_ptr(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);

		typealias vkCmdEndTransformFeedbackEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, VkBuffer* pCounterBuffers, uint64* pCounterBufferOffsets);
		private static vkCmdEndTransformFeedbackEXTFunction vkCmdEndTransformFeedbackEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndTransformFeedbackEXT(VkCommandBuffer commandBuffer, uint32 firstCounterBuffer, uint32 counterBufferCount, VkBuffer* pCounterBuffers, uint64* pCounterBufferOffsets)
			=> vkCmdEndTransformFeedbackEXT_ptr(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);

		typealias vkCmdBeginQueryIndexedEXTFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, VkQueryControlFlags flags, uint32 index);
		private static vkCmdBeginQueryIndexedEXTFunction vkCmdBeginQueryIndexedEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginQueryIndexedEXT(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, VkQueryControlFlags flags, uint32 index)
			=> vkCmdBeginQueryIndexedEXT_ptr(commandBuffer, queryPool, query, flags, index);

		typealias vkCmdEndQueryIndexedEXTFunction = function void(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, uint32 index);
		private static vkCmdEndQueryIndexedEXTFunction vkCmdEndQueryIndexedEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndQueryIndexedEXT(VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32 query, uint32 index)
			=> vkCmdEndQueryIndexedEXT_ptr(commandBuffer, queryPool, query, index);

		typealias vkCmdDrawIndirectByteCountEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 instanceCount, uint32 firstInstance, VkBuffer counterBuffer, uint64 counterBufferOffset, uint32 counterOffset, uint32 vertexStride);
		private static vkCmdDrawIndirectByteCountEXTFunction vkCmdDrawIndirectByteCountEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawIndirectByteCountEXT(VkCommandBuffer commandBuffer, uint32 instanceCount, uint32 firstInstance, VkBuffer counterBuffer, uint64 counterBufferOffset, uint32 counterOffset, uint32 vertexStride)
			=> vkCmdDrawIndirectByteCountEXT_ptr(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride);

		typealias vkCreateCuModuleNVXFunction = function VkResult(VkDevice device, VkCuModuleCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuModuleNVX* pModule);
		private static vkCreateCuModuleNVXFunction vkCreateCuModuleNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateCuModuleNVX(VkDevice device, VkCuModuleCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuModuleNVX* pModule)
			=> vkCreateCuModuleNVX_ptr(device, pCreateInfo, pAllocator, pModule);

		typealias vkCreateCuFunctionNVXFunction = function VkResult(VkDevice device, VkCuFunctionCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuFunctionNVX* pFunction);
		private static vkCreateCuFunctionNVXFunction vkCreateCuFunctionNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateCuFunctionNVX(VkDevice device, VkCuFunctionCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuFunctionNVX* pFunction)
			=> vkCreateCuFunctionNVX_ptr(device, pCreateInfo, pAllocator, pFunction);

		typealias vkDestroyCuModuleNVXFunction = function void(VkDevice device, VkCuModuleNVX module, VkAllocationCallbacks* pAllocator);
		private static vkDestroyCuModuleNVXFunction vkDestroyCuModuleNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyCuModuleNVX(VkDevice device, VkCuModuleNVX module, VkAllocationCallbacks* pAllocator)
			=> vkDestroyCuModuleNVX_ptr(device, module, pAllocator);

		typealias vkDestroyCuFunctionNVXFunction = function void(VkDevice device, VkCuFunctionNVX vkfunction, VkAllocationCallbacks* pAllocator);
		private static vkDestroyCuFunctionNVXFunction vkDestroyCuFunctionNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyCuFunctionNVX(VkDevice device, VkCuFunctionNVX vkfunction, VkAllocationCallbacks* pAllocator)
			=> vkDestroyCuFunctionNVX_ptr(device, vkfunction, pAllocator);

		typealias vkCmdCuLaunchKernelNVXFunction = function void(VkCommandBuffer commandBuffer, VkCuLaunchInfoNVX* pLaunchInfo);
		private static vkCmdCuLaunchKernelNVXFunction vkCmdCuLaunchKernelNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCuLaunchKernelNVX(VkCommandBuffer commandBuffer, VkCuLaunchInfoNVX* pLaunchInfo)
			=> vkCmdCuLaunchKernelNVX_ptr(commandBuffer, pLaunchInfo);

		typealias vkGetImageViewHandleNVXFunction = function uint32(VkDevice device, VkImageViewHandleInfoNVX* pInfo);
		private static vkGetImageViewHandleNVXFunction vkGetImageViewHandleNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint32 vkGetImageViewHandleNVX(VkDevice device, VkImageViewHandleInfoNVX* pInfo)
			=> vkGetImageViewHandleNVX_ptr(device, pInfo);

		typealias vkGetImageViewAddressNVXFunction = function VkResult(VkDevice device, VkImageView imageView, VkImageViewAddressPropertiesNVX* pProperties);
		private static vkGetImageViewAddressNVXFunction vkGetImageViewAddressNVX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetImageViewAddressNVX(VkDevice device, VkImageView imageView, VkImageViewAddressPropertiesNVX* pProperties)
			=> vkGetImageViewAddressNVX_ptr(device, imageView, pProperties);

		typealias vkGetShaderInfoAMDFunction = function VkResult(VkDevice device, VkPipeline pipeline, VkShaderStageFlags shaderStage, VkShaderInfoTypeAMD infoType, uint* pInfoSize, void* pInfo);
		private static vkGetShaderInfoAMDFunction vkGetShaderInfoAMD_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetShaderInfoAMD(VkDevice device, VkPipeline pipeline, VkShaderStageFlags shaderStage, VkShaderInfoTypeAMD infoType, uint* pInfoSize, void* pInfo)
			=> vkGetShaderInfoAMD_ptr(device, pipeline, shaderStage, infoType, pInfoSize, pInfo);

		typealias vkCreateStreamDescriptorSurfaceGGPFunction = function VkResult(VkInstance instance, VkStreamDescriptorSurfaceCreateInfoGGP* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateStreamDescriptorSurfaceGGPFunction vkCreateStreamDescriptorSurfaceGGP_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateStreamDescriptorSurfaceGGP(VkInstance instance, VkStreamDescriptorSurfaceCreateInfoGGP* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateStreamDescriptorSurfaceGGP_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceExternalImageFormatPropertiesNVFunction = function VkResult(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkExternalMemoryHandleTypeFlagsNV externalHandleType, VkExternalImageFormatPropertiesNV* pExternalImageFormatProperties);
		private static vkGetPhysicalDeviceExternalImageFormatPropertiesNVFunction vkGetPhysicalDeviceExternalImageFormatPropertiesNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceExternalImageFormatPropertiesNV(VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkExternalMemoryHandleTypeFlagsNV externalHandleType, VkExternalImageFormatPropertiesNV* pExternalImageFormatProperties)
			=> vkGetPhysicalDeviceExternalImageFormatPropertiesNV_ptr(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties);

		typealias vkGetMemoryWin32HandleNVFunction = function VkResult(VkDevice device, VkDeviceMemory memory, VkExternalMemoryHandleTypeFlagsNV handleType, void* pHandle);
		private static vkGetMemoryWin32HandleNVFunction vkGetMemoryWin32HandleNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryWin32HandleNV(VkDevice device, VkDeviceMemory memory, VkExternalMemoryHandleTypeFlagsNV handleType, void* pHandle)
			=> vkGetMemoryWin32HandleNV_ptr(device, memory, handleType, pHandle);

		typealias vkCreateViSurfaceNNFunction = function VkResult(VkInstance instance, VkViSurfaceCreateInfoNN* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateViSurfaceNNFunction vkCreateViSurfaceNN_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateViSurfaceNN(VkInstance instance, VkViSurfaceCreateInfoNN* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateViSurfaceNN_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetMemoryWin32HandleKHRFunction = function VkResult(VkDevice device, VkMemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle);
		private static vkGetMemoryWin32HandleKHRFunction vkGetMemoryWin32HandleKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryWin32HandleKHR(VkDevice device, VkMemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle)
			=> vkGetMemoryWin32HandleKHR_ptr(device, pGetWin32HandleInfo, pHandle);

		typealias vkGetMemoryWin32HandlePropertiesKHRFunction = function VkResult(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* handle, VkMemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties);
		private static vkGetMemoryWin32HandlePropertiesKHRFunction vkGetMemoryWin32HandlePropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryWin32HandlePropertiesKHR(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* handle, VkMemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties)
			=> vkGetMemoryWin32HandlePropertiesKHR_ptr(device, handleType, handle, pMemoryWin32HandleProperties);

		typealias vkGetMemoryFdKHRFunction = function VkResult(VkDevice device, VkMemoryGetFdInfoKHR* pGetFdInfo, int* pFd);
		private static vkGetMemoryFdKHRFunction vkGetMemoryFdKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryFdKHR(VkDevice device, VkMemoryGetFdInfoKHR* pGetFdInfo, int* pFd)
			=> vkGetMemoryFdKHR_ptr(device, pGetFdInfo, pFd);

		typealias vkGetMemoryFdPropertiesKHRFunction = function VkResult(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, int fd, VkMemoryFdPropertiesKHR* pMemoryFdProperties);
		private static vkGetMemoryFdPropertiesKHRFunction vkGetMemoryFdPropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryFdPropertiesKHR(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, int fd, VkMemoryFdPropertiesKHR* pMemoryFdProperties)
			=> vkGetMemoryFdPropertiesKHR_ptr(device, handleType, fd, pMemoryFdProperties);

		typealias vkImportSemaphoreWin32HandleKHRFunction = function VkResult(VkDevice device, VkImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo);
		private static vkImportSemaphoreWin32HandleKHRFunction vkImportSemaphoreWin32HandleKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkImportSemaphoreWin32HandleKHR(VkDevice device, VkImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo)
			=> vkImportSemaphoreWin32HandleKHR_ptr(device, pImportSemaphoreWin32HandleInfo);

		typealias vkGetSemaphoreWin32HandleKHRFunction = function VkResult(VkDevice device, VkSemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle);
		private static vkGetSemaphoreWin32HandleKHRFunction vkGetSemaphoreWin32HandleKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSemaphoreWin32HandleKHR(VkDevice device, VkSemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle)
			=> vkGetSemaphoreWin32HandleKHR_ptr(device, pGetWin32HandleInfo, pHandle);

		typealias vkImportSemaphoreFdKHRFunction = function VkResult(VkDevice device, VkImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo);
		private static vkImportSemaphoreFdKHRFunction vkImportSemaphoreFdKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkImportSemaphoreFdKHR(VkDevice device, VkImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo)
			=> vkImportSemaphoreFdKHR_ptr(device, pImportSemaphoreFdInfo);

		typealias vkGetSemaphoreFdKHRFunction = function VkResult(VkDevice device, VkSemaphoreGetFdInfoKHR* pGetFdInfo, int* pFd);
		private static vkGetSemaphoreFdKHRFunction vkGetSemaphoreFdKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSemaphoreFdKHR(VkDevice device, VkSemaphoreGetFdInfoKHR* pGetFdInfo, int* pFd)
			=> vkGetSemaphoreFdKHR_ptr(device, pGetFdInfo, pFd);

		typealias vkCmdPushDescriptorSetKHRFunction = function void(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32 set, uint32 descriptorWriteCount, VkWriteDescriptorSet* pDescriptorWrites);
		private static vkCmdPushDescriptorSetKHRFunction vkCmdPushDescriptorSetKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdPushDescriptorSetKHR(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32 set, uint32 descriptorWriteCount, VkWriteDescriptorSet* pDescriptorWrites)
			=> vkCmdPushDescriptorSetKHR_ptr(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);

		typealias vkCmdBeginConditionalRenderingEXTFunction = function void(VkCommandBuffer commandBuffer, VkConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin);
		private static vkCmdBeginConditionalRenderingEXTFunction vkCmdBeginConditionalRenderingEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginConditionalRenderingEXT(VkCommandBuffer commandBuffer, VkConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin)
			=> vkCmdBeginConditionalRenderingEXT_ptr(commandBuffer, pConditionalRenderingBegin);

		typealias vkCmdEndConditionalRenderingEXTFunction = function void(VkCommandBuffer commandBuffer);
		private static vkCmdEndConditionalRenderingEXTFunction vkCmdEndConditionalRenderingEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndConditionalRenderingEXT(VkCommandBuffer commandBuffer)
			=> vkCmdEndConditionalRenderingEXT_ptr(commandBuffer);

		typealias vkCmdSetViewportWScalingNVFunction = function void(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkViewportWScalingNV* pViewportWScalings);
		private static vkCmdSetViewportWScalingNVFunction vkCmdSetViewportWScalingNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetViewportWScalingNV(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkViewportWScalingNV* pViewportWScalings)
			=> vkCmdSetViewportWScalingNV_ptr(commandBuffer, firstViewport, viewportCount, pViewportWScalings);

		typealias vkReleaseDisplayEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayKHR display);
		private static vkReleaseDisplayEXTFunction vkReleaseDisplayEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkReleaseDisplayEXT(VkPhysicalDevice physicalDevice, VkDisplayKHR display)
			=> vkReleaseDisplayEXT_ptr(physicalDevice, display);

		typealias vkAcquireXlibDisplayEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, void* dpy, VkDisplayKHR display);
		private static vkAcquireXlibDisplayEXTFunction vkAcquireXlibDisplayEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireXlibDisplayEXT(VkPhysicalDevice physicalDevice, void* dpy, VkDisplayKHR display)
			=> vkAcquireXlibDisplayEXT_ptr(physicalDevice, dpy, display);

		typealias vkGetRandROutputDisplayEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, void* dpy, void* rrOutput, VkDisplayKHR* pDisplay);
		private static vkGetRandROutputDisplayEXTFunction vkGetRandROutputDisplayEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetRandROutputDisplayEXT(VkPhysicalDevice physicalDevice, void* dpy, void* rrOutput, VkDisplayKHR* pDisplay)
			=> vkGetRandROutputDisplayEXT_ptr(physicalDevice, dpy, rrOutput, pDisplay);

		typealias vkGetPhysicalDeviceSurfaceCapabilities2EXTFunction = function VkResult(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilities2EXT* pSurfaceCapabilities);
		private static vkGetPhysicalDeviceSurfaceCapabilities2EXTFunction vkGetPhysicalDeviceSurfaceCapabilities2EXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceCapabilities2EXT(VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilities2EXT* pSurfaceCapabilities)
			=> vkGetPhysicalDeviceSurfaceCapabilities2EXT_ptr(physicalDevice, surface, pSurfaceCapabilities);

		typealias vkDisplayPowerControlEXTFunction = function VkResult(VkDevice device, VkDisplayKHR display, VkDisplayPowerInfoEXT* pDisplayPowerInfo);
		private static vkDisplayPowerControlEXTFunction vkDisplayPowerControlEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkDisplayPowerControlEXT(VkDevice device, VkDisplayKHR display, VkDisplayPowerInfoEXT* pDisplayPowerInfo)
			=> vkDisplayPowerControlEXT_ptr(device, display, pDisplayPowerInfo);

		typealias vkRegisterDeviceEventEXTFunction = function VkResult(VkDevice device, VkDeviceEventInfoEXT* pDeviceEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence);
		private static vkRegisterDeviceEventEXTFunction vkRegisterDeviceEventEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkRegisterDeviceEventEXT(VkDevice device, VkDeviceEventInfoEXT* pDeviceEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence)
			=> vkRegisterDeviceEventEXT_ptr(device, pDeviceEventInfo, pAllocator, pFence);

		typealias vkRegisterDisplayEventEXTFunction = function VkResult(VkDevice device, VkDisplayKHR display, VkDisplayEventInfoEXT* pDisplayEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence);
		private static vkRegisterDisplayEventEXTFunction vkRegisterDisplayEventEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkRegisterDisplayEventEXT(VkDevice device, VkDisplayKHR display, VkDisplayEventInfoEXT* pDisplayEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence)
			=> vkRegisterDisplayEventEXT_ptr(device, display, pDisplayEventInfo, pAllocator, pFence);

		typealias vkGetSwapchainCounterEXTFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain, VkSurfaceCounterFlagsEXT counter, uint64* pCounterValue);
		private static vkGetSwapchainCounterEXTFunction vkGetSwapchainCounterEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSwapchainCounterEXT(VkDevice device, VkSwapchainKHR swapchain, VkSurfaceCounterFlagsEXT counter, uint64* pCounterValue)
			=> vkGetSwapchainCounterEXT_ptr(device, swapchain, counter, pCounterValue);

		typealias vkGetRefreshCycleDurationGOOGLEFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain, VkRefreshCycleDurationGOOGLE* pDisplayTimingProperties);
		private static vkGetRefreshCycleDurationGOOGLEFunction vkGetRefreshCycleDurationGOOGLE_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetRefreshCycleDurationGOOGLE(VkDevice device, VkSwapchainKHR swapchain, VkRefreshCycleDurationGOOGLE* pDisplayTimingProperties)
			=> vkGetRefreshCycleDurationGOOGLE_ptr(device, swapchain, pDisplayTimingProperties);

		typealias vkGetPastPresentationTimingGOOGLEFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain, uint32* pPresentationTimingCount, VkPastPresentationTimingGOOGLE* pPresentationTimings);
		private static vkGetPastPresentationTimingGOOGLEFunction vkGetPastPresentationTimingGOOGLE_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPastPresentationTimingGOOGLE(VkDevice device, VkSwapchainKHR swapchain, uint32* pPresentationTimingCount, VkPastPresentationTimingGOOGLE* pPresentationTimings)
			=> vkGetPastPresentationTimingGOOGLE_ptr(device, swapchain, pPresentationTimingCount, pPresentationTimings);

		typealias vkCmdSetDiscardRectangleEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 firstDiscardRectangle, uint32 discardRectangleCount, VkRect2D* pDiscardRectangles);
		private static vkCmdSetDiscardRectangleEXTFunction vkCmdSetDiscardRectangleEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDiscardRectangleEXT(VkCommandBuffer commandBuffer, uint32 firstDiscardRectangle, uint32 discardRectangleCount, VkRect2D* pDiscardRectangles)
			=> vkCmdSetDiscardRectangleEXT_ptr(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles);

		typealias vkSetHdrMetadataEXTFunction = function void(VkDevice device, uint32 swapchainCount, VkSwapchainKHR* pSwapchains, VkHdrMetadataEXT* pMetadata);
		private static vkSetHdrMetadataEXTFunction vkSetHdrMetadataEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkSetHdrMetadataEXT(VkDevice device, uint32 swapchainCount, VkSwapchainKHR* pSwapchains, VkHdrMetadataEXT* pMetadata)
			=> vkSetHdrMetadataEXT_ptr(device, swapchainCount, pSwapchains, pMetadata);

		typealias vkGetSwapchainStatusKHRFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain);
		private static vkGetSwapchainStatusKHRFunction vkGetSwapchainStatusKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSwapchainStatusKHR(VkDevice device, VkSwapchainKHR swapchain)
			=> vkGetSwapchainStatusKHR_ptr(device, swapchain);

		typealias vkImportFenceWin32HandleKHRFunction = function VkResult(VkDevice device, VkImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo);
		private static vkImportFenceWin32HandleKHRFunction vkImportFenceWin32HandleKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkImportFenceWin32HandleKHR(VkDevice device, VkImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo)
			=> vkImportFenceWin32HandleKHR_ptr(device, pImportFenceWin32HandleInfo);

		typealias vkGetFenceWin32HandleKHRFunction = function VkResult(VkDevice device, VkFenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle);
		private static vkGetFenceWin32HandleKHRFunction vkGetFenceWin32HandleKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetFenceWin32HandleKHR(VkDevice device, VkFenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, void* pHandle)
			=> vkGetFenceWin32HandleKHR_ptr(device, pGetWin32HandleInfo, pHandle);

		typealias vkImportFenceFdKHRFunction = function VkResult(VkDevice device, VkImportFenceFdInfoKHR* pImportFenceFdInfo);
		private static vkImportFenceFdKHRFunction vkImportFenceFdKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkImportFenceFdKHR(VkDevice device, VkImportFenceFdInfoKHR* pImportFenceFdInfo)
			=> vkImportFenceFdKHR_ptr(device, pImportFenceFdInfo);

		typealias vkGetFenceFdKHRFunction = function VkResult(VkDevice device, VkFenceGetFdInfoKHR* pGetFdInfo, int* pFd);
		private static vkGetFenceFdKHRFunction vkGetFenceFdKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetFenceFdKHR(VkDevice device, VkFenceGetFdInfoKHR* pGetFdInfo, int* pFd)
			=> vkGetFenceFdKHR_ptr(device, pGetFdInfo, pFd);

		typealias vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, uint32* pCounterCount, VkPerformanceCounterKHR* pCounters, VkPerformanceCounterDescriptionKHR* pCounterDescriptions);
		private static vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHRFunction vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, uint32* pCounterCount, VkPerformanceCounterKHR* pCounters, VkPerformanceCounterDescriptionKHR* pCounterDescriptions)
			=> vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_ptr(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);

		typealias vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHRFunction = function void(VkPhysicalDevice physicalDevice, VkQueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo, uint32* pNumPasses);
		private static vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHRFunction vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(VkPhysicalDevice physicalDevice, VkQueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo, uint32* pNumPasses)
			=> vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_ptr(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses);

		typealias vkAcquireProfilingLockKHRFunction = function VkResult(VkDevice device, VkAcquireProfilingLockInfoKHR* pInfo);
		private static vkAcquireProfilingLockKHRFunction vkAcquireProfilingLockKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireProfilingLockKHR(VkDevice device, VkAcquireProfilingLockInfoKHR* pInfo)
			=> vkAcquireProfilingLockKHR_ptr(device, pInfo);

		typealias vkReleaseProfilingLockKHRFunction = function void(VkDevice device);
		private static vkReleaseProfilingLockKHRFunction vkReleaseProfilingLockKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkReleaseProfilingLockKHR(VkDevice device)
			=> vkReleaseProfilingLockKHR_ptr(device);

		typealias vkGetPhysicalDeviceSurfaceCapabilities2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, VkSurfaceCapabilities2KHR* pSurfaceCapabilities);
		private static vkGetPhysicalDeviceSurfaceCapabilities2KHRFunction vkGetPhysicalDeviceSurfaceCapabilities2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceCapabilities2KHR(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, VkSurfaceCapabilities2KHR* pSurfaceCapabilities)
			=> vkGetPhysicalDeviceSurfaceCapabilities2KHR_ptr(physicalDevice, pSurfaceInfo, pSurfaceCapabilities);

		typealias vkGetPhysicalDeviceSurfaceFormats2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pSurfaceFormatCount, VkSurfaceFormat2KHR* pSurfaceFormats);
		private static vkGetPhysicalDeviceSurfaceFormats2KHRFunction vkGetPhysicalDeviceSurfaceFormats2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfaceFormats2KHR(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pSurfaceFormatCount, VkSurfaceFormat2KHR* pSurfaceFormats)
			=> vkGetPhysicalDeviceSurfaceFormats2KHR_ptr(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats);

		typealias vkGetPhysicalDeviceDisplayProperties2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayProperties2KHR* pProperties);
		private static vkGetPhysicalDeviceDisplayProperties2KHRFunction vkGetPhysicalDeviceDisplayProperties2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceDisplayProperties2KHR(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayProperties2KHR* pProperties)
			=> vkGetPhysicalDeviceDisplayProperties2KHR_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetPhysicalDeviceDisplayPlaneProperties2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPlaneProperties2KHR* pProperties);
		private static vkGetPhysicalDeviceDisplayPlaneProperties2KHRFunction vkGetPhysicalDeviceDisplayPlaneProperties2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceDisplayPlaneProperties2KHR(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkDisplayPlaneProperties2KHR* pProperties)
			=> vkGetPhysicalDeviceDisplayPlaneProperties2KHR_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetDisplayModeProperties2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32* pPropertyCount, VkDisplayModeProperties2KHR* pProperties);
		private static vkGetDisplayModeProperties2KHRFunction vkGetDisplayModeProperties2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDisplayModeProperties2KHR(VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32* pPropertyCount, VkDisplayModeProperties2KHR* pProperties)
			=> vkGetDisplayModeProperties2KHR_ptr(physicalDevice, display, pPropertyCount, pProperties);

		typealias vkGetDisplayPlaneCapabilities2KHRFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayPlaneInfo2KHR* pDisplayPlaneInfo, VkDisplayPlaneCapabilities2KHR* pCapabilities);
		private static vkGetDisplayPlaneCapabilities2KHRFunction vkGetDisplayPlaneCapabilities2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDisplayPlaneCapabilities2KHR(VkPhysicalDevice physicalDevice, VkDisplayPlaneInfo2KHR* pDisplayPlaneInfo, VkDisplayPlaneCapabilities2KHR* pCapabilities)
			=> vkGetDisplayPlaneCapabilities2KHR_ptr(physicalDevice, pDisplayPlaneInfo, pCapabilities);

		typealias vkCreateIOSSurfaceMVKFunction = function VkResult(VkInstance instance, VkIOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateIOSSurfaceMVKFunction vkCreateIOSSurfaceMVK_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateIOSSurfaceMVK(VkInstance instance, VkIOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateIOSSurfaceMVK_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkCreateMacOSSurfaceMVKFunction = function VkResult(VkInstance instance, VkMacOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateMacOSSurfaceMVKFunction vkCreateMacOSSurfaceMVK_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateMacOSSurfaceMVK(VkInstance instance, VkMacOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateMacOSSurfaceMVK_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkSetDebugUtilsObjectNameEXTFunction = function VkResult(VkDevice device, VkDebugUtilsObjectNameInfoEXT* pNameInfo);
		private static vkSetDebugUtilsObjectNameEXTFunction vkSetDebugUtilsObjectNameEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkSetDebugUtilsObjectNameEXT(VkDevice device, VkDebugUtilsObjectNameInfoEXT* pNameInfo)
			=> vkSetDebugUtilsObjectNameEXT_ptr(device, pNameInfo);

		typealias vkSetDebugUtilsObjectTagEXTFunction = function VkResult(VkDevice device, VkDebugUtilsObjectTagInfoEXT* pTagInfo);
		private static vkSetDebugUtilsObjectTagEXTFunction vkSetDebugUtilsObjectTagEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkSetDebugUtilsObjectTagEXT(VkDevice device, VkDebugUtilsObjectTagInfoEXT* pTagInfo)
			=> vkSetDebugUtilsObjectTagEXT_ptr(device, pTagInfo);

		typealias vkQueueBeginDebugUtilsLabelEXTFunction = function void(VkQueue queue, VkDebugUtilsLabelEXT* pLabelInfo);
		private static vkQueueBeginDebugUtilsLabelEXTFunction vkQueueBeginDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkQueueBeginDebugUtilsLabelEXT(VkQueue queue, VkDebugUtilsLabelEXT* pLabelInfo)
			=> vkQueueBeginDebugUtilsLabelEXT_ptr(queue, pLabelInfo);

		typealias vkQueueEndDebugUtilsLabelEXTFunction = function void(VkQueue queue);
		private static vkQueueEndDebugUtilsLabelEXTFunction vkQueueEndDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkQueueEndDebugUtilsLabelEXT(VkQueue queue)
			=> vkQueueEndDebugUtilsLabelEXT_ptr(queue);

		typealias vkQueueInsertDebugUtilsLabelEXTFunction = function void(VkQueue queue, VkDebugUtilsLabelEXT* pLabelInfo);
		private static vkQueueInsertDebugUtilsLabelEXTFunction vkQueueInsertDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkQueueInsertDebugUtilsLabelEXT(VkQueue queue, VkDebugUtilsLabelEXT* pLabelInfo)
			=> vkQueueInsertDebugUtilsLabelEXT_ptr(queue, pLabelInfo);

		typealias vkCmdBeginDebugUtilsLabelEXTFunction = function void(VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT* pLabelInfo);
		private static vkCmdBeginDebugUtilsLabelEXTFunction vkCmdBeginDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBeginDebugUtilsLabelEXT(VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT* pLabelInfo)
			=> vkCmdBeginDebugUtilsLabelEXT_ptr(commandBuffer, pLabelInfo);

		typealias vkCmdEndDebugUtilsLabelEXTFunction = function void(VkCommandBuffer commandBuffer);
		private static vkCmdEndDebugUtilsLabelEXTFunction vkCmdEndDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEndDebugUtilsLabelEXT(VkCommandBuffer commandBuffer)
			=> vkCmdEndDebugUtilsLabelEXT_ptr(commandBuffer);

		typealias vkCmdInsertDebugUtilsLabelEXTFunction = function void(VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT* pLabelInfo);
		private static vkCmdInsertDebugUtilsLabelEXTFunction vkCmdInsertDebugUtilsLabelEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdInsertDebugUtilsLabelEXT(VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT* pLabelInfo)
			=> vkCmdInsertDebugUtilsLabelEXT_ptr(commandBuffer, pLabelInfo);

		typealias vkCreateDebugUtilsMessengerEXTFunction = function VkResult(VkInstance instance, VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugUtilsMessengerEXT* pMessenger);
		private static vkCreateDebugUtilsMessengerEXTFunction vkCreateDebugUtilsMessengerEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDebugUtilsMessengerEXT(VkInstance instance, VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugUtilsMessengerEXT* pMessenger)
			=> vkCreateDebugUtilsMessengerEXT_ptr(instance, pCreateInfo, pAllocator, pMessenger);

		typealias vkDestroyDebugUtilsMessengerEXTFunction = function void(VkInstance instance, VkDebugUtilsMessengerEXT messenger, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDebugUtilsMessengerEXTFunction vkDestroyDebugUtilsMessengerEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDebugUtilsMessengerEXT(VkInstance instance, VkDebugUtilsMessengerEXT messenger, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDebugUtilsMessengerEXT_ptr(instance, messenger, pAllocator);

		typealias vkSubmitDebugUtilsMessageEXTFunction = function void(VkInstance instance, VkDebugUtilsMessageSeverityFlagsEXT messageSeverity, VkDebugUtilsMessageTypeFlagsEXT messageTypes, VkDebugUtilsMessengerCallbackDataEXT* pCallbackData);
		private static vkSubmitDebugUtilsMessageEXTFunction vkSubmitDebugUtilsMessageEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkSubmitDebugUtilsMessageEXT(VkInstance instance, VkDebugUtilsMessageSeverityFlagsEXT messageSeverity, VkDebugUtilsMessageTypeFlagsEXT messageTypes, VkDebugUtilsMessengerCallbackDataEXT* pCallbackData)
			=> vkSubmitDebugUtilsMessageEXT_ptr(instance, messageSeverity, messageTypes, pCallbackData);

		typealias vkGetAndroidHardwareBufferPropertiesANDROIDFunction = function VkResult(VkDevice device, void* buffer, VkAndroidHardwareBufferPropertiesANDROID* pProperties);
		private static vkGetAndroidHardwareBufferPropertiesANDROIDFunction vkGetAndroidHardwareBufferPropertiesANDROID_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetAndroidHardwareBufferPropertiesANDROID(VkDevice device, void* buffer, VkAndroidHardwareBufferPropertiesANDROID* pProperties)
			=> vkGetAndroidHardwareBufferPropertiesANDROID_ptr(device, buffer, pProperties);

		typealias vkGetMemoryAndroidHardwareBufferANDROIDFunction = function VkResult(VkDevice device, VkMemoryGetAndroidHardwareBufferInfoANDROID* pInfo, void* pBuffer);
		private static vkGetMemoryAndroidHardwareBufferANDROIDFunction vkGetMemoryAndroidHardwareBufferANDROID_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryAndroidHardwareBufferANDROID(VkDevice device, VkMemoryGetAndroidHardwareBufferInfoANDROID* pInfo, void* pBuffer)
			=> vkGetMemoryAndroidHardwareBufferANDROID_ptr(device, pInfo, pBuffer);

		typealias vkCmdSetSampleLocationsEXTFunction = function void(VkCommandBuffer commandBuffer, VkSampleLocationsInfoEXT* pSampleLocationsInfo);
		private static vkCmdSetSampleLocationsEXTFunction vkCmdSetSampleLocationsEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetSampleLocationsEXT(VkCommandBuffer commandBuffer, VkSampleLocationsInfoEXT* pSampleLocationsInfo)
			=> vkCmdSetSampleLocationsEXT_ptr(commandBuffer, pSampleLocationsInfo);

		typealias vkGetPhysicalDeviceMultisamplePropertiesEXTFunction = function void(VkPhysicalDevice physicalDevice, VkSampleCountFlags samples, VkMultisamplePropertiesEXT* pMultisampleProperties);
		private static vkGetPhysicalDeviceMultisamplePropertiesEXTFunction vkGetPhysicalDeviceMultisamplePropertiesEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPhysicalDeviceMultisamplePropertiesEXT(VkPhysicalDevice physicalDevice, VkSampleCountFlags samples, VkMultisamplePropertiesEXT* pMultisampleProperties)
			=> vkGetPhysicalDeviceMultisamplePropertiesEXT_ptr(physicalDevice, samples, pMultisampleProperties);

		typealias vkCreateAccelerationStructureKHRFunction = function VkResult(VkDevice device, VkAccelerationStructureCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureKHR* pAccelerationStructure);
		private static vkCreateAccelerationStructureKHRFunction vkCreateAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateAccelerationStructureKHR(VkDevice device, VkAccelerationStructureCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureKHR* pAccelerationStructure)
			=> vkCreateAccelerationStructureKHR_ptr(device, pCreateInfo, pAllocator, pAccelerationStructure);

		typealias vkDestroyAccelerationStructureKHRFunction = function void(VkDevice device, VkAccelerationStructureKHR accelerationStructure, VkAllocationCallbacks* pAllocator);
		private static vkDestroyAccelerationStructureKHRFunction vkDestroyAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyAccelerationStructureKHR(VkDevice device, VkAccelerationStructureKHR accelerationStructure, VkAllocationCallbacks* pAllocator)
			=> vkDestroyAccelerationStructureKHR_ptr(device, accelerationStructure, pAllocator);

		typealias vkCmdBuildAccelerationStructuresKHRFunction = function void(VkCommandBuffer commandBuffer, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, VkAccelerationStructureBuildRangeInfoKHR** ppBuildRangeInfos);
		private static vkCmdBuildAccelerationStructuresKHRFunction vkCmdBuildAccelerationStructuresKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBuildAccelerationStructuresKHR(VkCommandBuffer commandBuffer, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, VkAccelerationStructureBuildRangeInfoKHR** ppBuildRangeInfos)
			=> vkCmdBuildAccelerationStructuresKHR_ptr(commandBuffer, infoCount, pInfos, ppBuildRangeInfos);

		typealias vkCmdBuildAccelerationStructuresIndirectKHRFunction = function void(VkCommandBuffer commandBuffer, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, uint64* pIndirectDeviceAddresses, uint32* pIndirectStrides, uint32** ppMaxPrimitiveCounts);
		private static vkCmdBuildAccelerationStructuresIndirectKHRFunction vkCmdBuildAccelerationStructuresIndirectKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBuildAccelerationStructuresIndirectKHR(VkCommandBuffer commandBuffer, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, uint64* pIndirectDeviceAddresses, uint32* pIndirectStrides, uint32** ppMaxPrimitiveCounts)
			=> vkCmdBuildAccelerationStructuresIndirectKHR_ptr(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, pIndirectStrides, ppMaxPrimitiveCounts);

		typealias vkBuildAccelerationStructuresKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR deferredOperation, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, VkAccelerationStructureBuildRangeInfoKHR** ppBuildRangeInfos);
		private static vkBuildAccelerationStructuresKHRFunction vkBuildAccelerationStructuresKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBuildAccelerationStructuresKHR(VkDevice device, VkDeferredOperationKHR deferredOperation, uint32 infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, VkAccelerationStructureBuildRangeInfoKHR** ppBuildRangeInfos)
			=> vkBuildAccelerationStructuresKHR_ptr(device, deferredOperation, infoCount, pInfos, ppBuildRangeInfos);

		typealias vkCopyAccelerationStructureKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureInfoKHR* pInfo);
		private static vkCopyAccelerationStructureKHRFunction vkCopyAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCopyAccelerationStructureKHR(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureInfoKHR* pInfo)
			=> vkCopyAccelerationStructureKHR_ptr(device, deferredOperation, pInfo);

		typealias vkCopyAccelerationStructureToMemoryKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureToMemoryInfoKHR* pInfo);
		private static vkCopyAccelerationStructureToMemoryKHRFunction vkCopyAccelerationStructureToMemoryKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCopyAccelerationStructureToMemoryKHR(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureToMemoryInfoKHR* pInfo)
			=> vkCopyAccelerationStructureToMemoryKHR_ptr(device, deferredOperation, pInfo);

		typealias vkCopyMemoryToAccelerationStructureKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToAccelerationStructureInfoKHR* pInfo);
		private static vkCopyMemoryToAccelerationStructureKHRFunction vkCopyMemoryToAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCopyMemoryToAccelerationStructureKHR(VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToAccelerationStructureInfoKHR* pInfo)
			=> vkCopyMemoryToAccelerationStructureKHR_ptr(device, deferredOperation, pInfo);

		typealias vkWriteAccelerationStructuresPropertiesKHRFunction = function VkResult(VkDevice device, uint32 accelerationStructureCount, VkAccelerationStructureKHR* pAccelerationStructures, VkQueryType queryType, uint dataSize, void* pData, uint stride);
		private static vkWriteAccelerationStructuresPropertiesKHRFunction vkWriteAccelerationStructuresPropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkWriteAccelerationStructuresPropertiesKHR(VkDevice device, uint32 accelerationStructureCount, VkAccelerationStructureKHR* pAccelerationStructures, VkQueryType queryType, uint dataSize, void* pData, uint stride)
			=> vkWriteAccelerationStructuresPropertiesKHR_ptr(device, accelerationStructureCount, pAccelerationStructures, queryType, dataSize, pData, stride);

		typealias vkCmdCopyAccelerationStructureKHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyAccelerationStructureInfoKHR* pInfo);
		private static vkCmdCopyAccelerationStructureKHRFunction vkCmdCopyAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyAccelerationStructureKHR(VkCommandBuffer commandBuffer, VkCopyAccelerationStructureInfoKHR* pInfo)
			=> vkCmdCopyAccelerationStructureKHR_ptr(commandBuffer, pInfo);

		typealias vkCmdCopyAccelerationStructureToMemoryKHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyAccelerationStructureToMemoryInfoKHR* pInfo);
		private static vkCmdCopyAccelerationStructureToMemoryKHRFunction vkCmdCopyAccelerationStructureToMemoryKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyAccelerationStructureToMemoryKHR(VkCommandBuffer commandBuffer, VkCopyAccelerationStructureToMemoryInfoKHR* pInfo)
			=> vkCmdCopyAccelerationStructureToMemoryKHR_ptr(commandBuffer, pInfo);

		typealias vkCmdCopyMemoryToAccelerationStructureKHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyMemoryToAccelerationStructureInfoKHR* pInfo);
		private static vkCmdCopyMemoryToAccelerationStructureKHRFunction vkCmdCopyMemoryToAccelerationStructureKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyMemoryToAccelerationStructureKHR(VkCommandBuffer commandBuffer, VkCopyMemoryToAccelerationStructureInfoKHR* pInfo)
			=> vkCmdCopyMemoryToAccelerationStructureKHR_ptr(commandBuffer, pInfo);

		typealias vkGetAccelerationStructureDeviceAddressKHRFunction = function uint64(VkDevice device, VkAccelerationStructureDeviceAddressInfoKHR* pInfo);
		private static vkGetAccelerationStructureDeviceAddressKHRFunction vkGetAccelerationStructureDeviceAddressKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint64 vkGetAccelerationStructureDeviceAddressKHR(VkDevice device, VkAccelerationStructureDeviceAddressInfoKHR* pInfo)
			=> vkGetAccelerationStructureDeviceAddressKHR_ptr(device, pInfo);

		typealias vkCmdWriteAccelerationStructuresPropertiesKHRFunction = function void(VkCommandBuffer commandBuffer, uint32 accelerationStructureCount, VkAccelerationStructureKHR* pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32 firstQuery);
		private static vkCmdWriteAccelerationStructuresPropertiesKHRFunction vkCmdWriteAccelerationStructuresPropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWriteAccelerationStructuresPropertiesKHR(VkCommandBuffer commandBuffer, uint32 accelerationStructureCount, VkAccelerationStructureKHR* pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32 firstQuery)
			=> vkCmdWriteAccelerationStructuresPropertiesKHR_ptr(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);

		typealias vkGetDeviceAccelerationStructureCompatibilityKHRFunction = function void(VkDevice device, VkAccelerationStructureVersionInfoKHR* pVersionInfo, VkAccelerationStructureCompatibilityKHR* pCompatibility);
		private static vkGetDeviceAccelerationStructureCompatibilityKHRFunction vkGetDeviceAccelerationStructureCompatibilityKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetDeviceAccelerationStructureCompatibilityKHR(VkDevice device, VkAccelerationStructureVersionInfoKHR* pVersionInfo, VkAccelerationStructureCompatibilityKHR* pCompatibility)
			=> vkGetDeviceAccelerationStructureCompatibilityKHR_ptr(device, pVersionInfo, pCompatibility);

		typealias vkGetAccelerationStructureBuildSizesKHRFunction = function void(VkDevice device, VkAccelerationStructureBuildTypeKHR buildType, VkAccelerationStructureBuildGeometryInfoKHR* pBuildInfo, uint32* pMaxPrimitiveCounts, VkAccelerationStructureBuildSizesInfoKHR* pSizeInfo);
		private static vkGetAccelerationStructureBuildSizesKHRFunction vkGetAccelerationStructureBuildSizesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetAccelerationStructureBuildSizesKHR(VkDevice device, VkAccelerationStructureBuildTypeKHR buildType, VkAccelerationStructureBuildGeometryInfoKHR* pBuildInfo, uint32* pMaxPrimitiveCounts, VkAccelerationStructureBuildSizesInfoKHR* pSizeInfo)
			=> vkGetAccelerationStructureBuildSizesKHR_ptr(device, buildType, pBuildInfo, pMaxPrimitiveCounts, pSizeInfo);

		typealias vkCmdTraceRaysKHRFunction = function void(VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR* pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR* pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR* pCallableShaderBindingTable, uint32 width, uint32 height, uint32 depth);
		private static vkCmdTraceRaysKHRFunction vkCmdTraceRaysKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdTraceRaysKHR(VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR* pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR* pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR* pCallableShaderBindingTable, uint32 width, uint32 height, uint32 depth)
			=> vkCmdTraceRaysKHR_ptr(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, width, height, depth);

		typealias vkCreateRayTracingPipelinesKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR deferredOperation, VkPipelineCache pipelineCache, uint32 createInfoCount, VkRayTracingPipelineCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines);
		private static vkCreateRayTracingPipelinesKHRFunction vkCreateRayTracingPipelinesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateRayTracingPipelinesKHR(VkDevice device, VkDeferredOperationKHR deferredOperation, VkPipelineCache pipelineCache, uint32 createInfoCount, VkRayTracingPipelineCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines)
			=> vkCreateRayTracingPipelinesKHR_ptr(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);

		typealias vkGetRayTracingShaderGroupHandlesKHRFunction = function VkResult(VkDevice device, VkPipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData);
		private static vkGetRayTracingShaderGroupHandlesKHRFunction vkGetRayTracingShaderGroupHandlesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetRayTracingShaderGroupHandlesKHR(VkDevice device, VkPipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData)
			=> vkGetRayTracingShaderGroupHandlesKHR_ptr(device, pipeline, firstGroup, groupCount, dataSize, pData);

		typealias vkGetRayTracingCaptureReplayShaderGroupHandlesKHRFunction = function VkResult(VkDevice device, VkPipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData);
		private static vkGetRayTracingCaptureReplayShaderGroupHandlesKHRFunction vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetRayTracingCaptureReplayShaderGroupHandlesKHR(VkDevice device, VkPipeline pipeline, uint32 firstGroup, uint32 groupCount, uint dataSize, void* pData)
			=> vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_ptr(device, pipeline, firstGroup, groupCount, dataSize, pData);

		typealias vkCmdTraceRaysIndirectKHRFunction = function void(VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR* pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR* pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR* pCallableShaderBindingTable, uint64 indirectDeviceAddress);
		private static vkCmdTraceRaysIndirectKHRFunction vkCmdTraceRaysIndirectKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdTraceRaysIndirectKHR(VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR* pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR* pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR* pCallableShaderBindingTable, uint64 indirectDeviceAddress)
			=> vkCmdTraceRaysIndirectKHR_ptr(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, indirectDeviceAddress);

		typealias vkGetRayTracingShaderGroupStackSizeKHRFunction = function uint64(VkDevice device, VkPipeline pipeline, uint32 group, VkShaderGroupShaderKHR groupShader);
		private static vkGetRayTracingShaderGroupStackSizeKHRFunction vkGetRayTracingShaderGroupStackSizeKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint64 vkGetRayTracingShaderGroupStackSizeKHR(VkDevice device, VkPipeline pipeline, uint32 group, VkShaderGroupShaderKHR groupShader)
			=> vkGetRayTracingShaderGroupStackSizeKHR_ptr(device, pipeline, group, groupShader);

		typealias vkCmdSetRayTracingPipelineStackSizeKHRFunction = function void(VkCommandBuffer commandBuffer, uint32 pipelineStackSize);
		private static vkCmdSetRayTracingPipelineStackSizeKHRFunction vkCmdSetRayTracingPipelineStackSizeKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetRayTracingPipelineStackSizeKHR(VkCommandBuffer commandBuffer, uint32 pipelineStackSize)
			=> vkCmdSetRayTracingPipelineStackSizeKHR_ptr(commandBuffer, pipelineStackSize);

		typealias vkGetImageDrmFormatModifierPropertiesEXTFunction = function VkResult(VkDevice device, VkImage image, VkImageDrmFormatModifierPropertiesEXT* pProperties);
		private static vkGetImageDrmFormatModifierPropertiesEXTFunction vkGetImageDrmFormatModifierPropertiesEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetImageDrmFormatModifierPropertiesEXT(VkDevice device, VkImage image, VkImageDrmFormatModifierPropertiesEXT* pProperties)
			=> vkGetImageDrmFormatModifierPropertiesEXT_ptr(device, image, pProperties);

		typealias vkCreateValidationCacheEXTFunction = function VkResult(VkDevice device, VkValidationCacheCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkValidationCacheEXT* pValidationCache);
		private static vkCreateValidationCacheEXTFunction vkCreateValidationCacheEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateValidationCacheEXT(VkDevice device, VkValidationCacheCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkValidationCacheEXT* pValidationCache)
			=> vkCreateValidationCacheEXT_ptr(device, pCreateInfo, pAllocator, pValidationCache);

		typealias vkDestroyValidationCacheEXTFunction = function void(VkDevice device, VkValidationCacheEXT validationCache, VkAllocationCallbacks* pAllocator);
		private static vkDestroyValidationCacheEXTFunction vkDestroyValidationCacheEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyValidationCacheEXT(VkDevice device, VkValidationCacheEXT validationCache, VkAllocationCallbacks* pAllocator)
			=> vkDestroyValidationCacheEXT_ptr(device, validationCache, pAllocator);

		typealias vkMergeValidationCachesEXTFunction = function VkResult(VkDevice device, VkValidationCacheEXT dstCache, uint32 srcCacheCount, VkValidationCacheEXT* pSrcCaches);
		private static vkMergeValidationCachesEXTFunction vkMergeValidationCachesEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkMergeValidationCachesEXT(VkDevice device, VkValidationCacheEXT dstCache, uint32 srcCacheCount, VkValidationCacheEXT* pSrcCaches)
			=> vkMergeValidationCachesEXT_ptr(device, dstCache, srcCacheCount, pSrcCaches);

		typealias vkGetValidationCacheDataEXTFunction = function VkResult(VkDevice device, VkValidationCacheEXT validationCache, uint* pDataSize, void* pData);
		private static vkGetValidationCacheDataEXTFunction vkGetValidationCacheDataEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetValidationCacheDataEXT(VkDevice device, VkValidationCacheEXT validationCache, uint* pDataSize, void* pData)
			=> vkGetValidationCacheDataEXT_ptr(device, validationCache, pDataSize, pData);

		typealias vkCmdBindShadingRateImageNVFunction = function void(VkCommandBuffer commandBuffer, VkImageView imageView, VkImageLayout imageLayout);
		private static vkCmdBindShadingRateImageNVFunction vkCmdBindShadingRateImageNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindShadingRateImageNV(VkCommandBuffer commandBuffer, VkImageView imageView, VkImageLayout imageLayout)
			=> vkCmdBindShadingRateImageNV_ptr(commandBuffer, imageView, imageLayout);

		typealias vkCmdSetViewportShadingRatePaletteNVFunction = function void(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkShadingRatePaletteNV* pShadingRatePalettes);
		private static vkCmdSetViewportShadingRatePaletteNVFunction vkCmdSetViewportShadingRatePaletteNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetViewportShadingRatePaletteNV(VkCommandBuffer commandBuffer, uint32 firstViewport, uint32 viewportCount, VkShadingRatePaletteNV* pShadingRatePalettes)
			=> vkCmdSetViewportShadingRatePaletteNV_ptr(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes);

		typealias vkCmdSetCoarseSampleOrderNVFunction = function void(VkCommandBuffer commandBuffer, VkCoarseSampleOrderTypeNV sampleOrderType, uint32 customSampleOrderCount, VkCoarseSampleOrderCustomNV* pCustomSampleOrders);
		private static vkCmdSetCoarseSampleOrderNVFunction vkCmdSetCoarseSampleOrderNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetCoarseSampleOrderNV(VkCommandBuffer commandBuffer, VkCoarseSampleOrderTypeNV sampleOrderType, uint32 customSampleOrderCount, VkCoarseSampleOrderCustomNV* pCustomSampleOrders)
			=> vkCmdSetCoarseSampleOrderNV_ptr(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders);

		typealias vkCreateAccelerationStructureNVFunction = function VkResult(VkDevice device, VkAccelerationStructureCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureNV* pAccelerationStructure);
		private static vkCreateAccelerationStructureNVFunction vkCreateAccelerationStructureNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateAccelerationStructureNV(VkDevice device, VkAccelerationStructureCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureNV* pAccelerationStructure)
			=> vkCreateAccelerationStructureNV_ptr(device, pCreateInfo, pAllocator, pAccelerationStructure);

		typealias vkDestroyAccelerationStructureNVFunction = function void(VkDevice device, VkAccelerationStructureNV accelerationStructure, VkAllocationCallbacks* pAllocator);
		private static vkDestroyAccelerationStructureNVFunction vkDestroyAccelerationStructureNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyAccelerationStructureNV(VkDevice device, VkAccelerationStructureNV accelerationStructure, VkAllocationCallbacks* pAllocator)
			=> vkDestroyAccelerationStructureNV_ptr(device, accelerationStructure, pAllocator);

		typealias vkGetAccelerationStructureMemoryRequirementsNVFunction = function void(VkDevice device, VkAccelerationStructureMemoryRequirementsInfoNV* pInfo, VkMemoryRequirements2* pMemoryRequirements);
		private static vkGetAccelerationStructureMemoryRequirementsNVFunction vkGetAccelerationStructureMemoryRequirementsNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetAccelerationStructureMemoryRequirementsNV(VkDevice device, VkAccelerationStructureMemoryRequirementsInfoNV* pInfo, VkMemoryRequirements2* pMemoryRequirements)
			=> vkGetAccelerationStructureMemoryRequirementsNV_ptr(device, pInfo, pMemoryRequirements);

		typealias vkBindAccelerationStructureMemoryNVFunction = function VkResult(VkDevice device, uint32 bindInfoCount, VkBindAccelerationStructureMemoryInfoNV* pBindInfos);
		private static vkBindAccelerationStructureMemoryNVFunction vkBindAccelerationStructureMemoryNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkBindAccelerationStructureMemoryNV(VkDevice device, uint32 bindInfoCount, VkBindAccelerationStructureMemoryInfoNV* pBindInfos)
			=> vkBindAccelerationStructureMemoryNV_ptr(device, bindInfoCount, pBindInfos);

		typealias vkCmdBuildAccelerationStructureNVFunction = function void(VkCommandBuffer commandBuffer, VkAccelerationStructureInfoNV* pInfo, VkBuffer instanceData, uint64 instanceOffset, VkBool32 update, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkBuffer scratch, uint64 scratchOffset);
		private static vkCmdBuildAccelerationStructureNVFunction vkCmdBuildAccelerationStructureNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBuildAccelerationStructureNV(VkCommandBuffer commandBuffer, VkAccelerationStructureInfoNV* pInfo, VkBuffer instanceData, uint64 instanceOffset, VkBool32 update, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkBuffer scratch, uint64 scratchOffset)
			=> vkCmdBuildAccelerationStructureNV_ptr(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset);

		typealias vkCmdCopyAccelerationStructureNVFunction = function void(VkCommandBuffer commandBuffer, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkCopyAccelerationStructureModeKHR mode);
		private static vkCmdCopyAccelerationStructureNVFunction vkCmdCopyAccelerationStructureNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyAccelerationStructureNV(VkCommandBuffer commandBuffer, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkCopyAccelerationStructureModeKHR mode)
			=> vkCmdCopyAccelerationStructureNV_ptr(commandBuffer, dst, src, mode);

		typealias vkCmdTraceRaysNVFunction = function void(VkCommandBuffer commandBuffer, VkBuffer raygenShaderBindingTableBuffer, uint64 raygenShaderBindingOffset, VkBuffer missShaderBindingTableBuffer, uint64 missShaderBindingOffset, uint64 missShaderBindingStride, VkBuffer hitShaderBindingTableBuffer, uint64 hitShaderBindingOffset, uint64 hitShaderBindingStride, VkBuffer callableShaderBindingTableBuffer, uint64 callableShaderBindingOffset, uint64 callableShaderBindingStride, uint32 width, uint32 height, uint32 depth);
		private static vkCmdTraceRaysNVFunction vkCmdTraceRaysNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdTraceRaysNV(VkCommandBuffer commandBuffer, VkBuffer raygenShaderBindingTableBuffer, uint64 raygenShaderBindingOffset, VkBuffer missShaderBindingTableBuffer, uint64 missShaderBindingOffset, uint64 missShaderBindingStride, VkBuffer hitShaderBindingTableBuffer, uint64 hitShaderBindingOffset, uint64 hitShaderBindingStride, VkBuffer callableShaderBindingTableBuffer, uint64 callableShaderBindingOffset, uint64 callableShaderBindingStride, uint32 width, uint32 height, uint32 depth)
			=> vkCmdTraceRaysNV_ptr(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth);

		typealias vkCreateRayTracingPipelinesNVFunction = function VkResult(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkRayTracingPipelineCreateInfoNV* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines);
		private static vkCreateRayTracingPipelinesNVFunction vkCreateRayTracingPipelinesNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateRayTracingPipelinesNV(VkDevice device, VkPipelineCache pipelineCache, uint32 createInfoCount, VkRayTracingPipelineCreateInfoNV* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines)
			=> vkCreateRayTracingPipelinesNV_ptr(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);

		typealias vkGetAccelerationStructureHandleNVFunction = function VkResult(VkDevice device, VkAccelerationStructureNV accelerationStructure, uint dataSize, void* pData);
		private static vkGetAccelerationStructureHandleNVFunction vkGetAccelerationStructureHandleNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetAccelerationStructureHandleNV(VkDevice device, VkAccelerationStructureNV accelerationStructure, uint dataSize, void* pData)
			=> vkGetAccelerationStructureHandleNV_ptr(device, accelerationStructure, dataSize, pData);

		typealias vkCmdWriteAccelerationStructuresPropertiesNVFunction = function void(VkCommandBuffer commandBuffer, uint32 accelerationStructureCount, VkAccelerationStructureNV* pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32 firstQuery);
		private static vkCmdWriteAccelerationStructuresPropertiesNVFunction vkCmdWriteAccelerationStructuresPropertiesNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWriteAccelerationStructuresPropertiesNV(VkCommandBuffer commandBuffer, uint32 accelerationStructureCount, VkAccelerationStructureNV* pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32 firstQuery)
			=> vkCmdWriteAccelerationStructuresPropertiesNV_ptr(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);

		typealias vkCompileDeferredNVFunction = function VkResult(VkDevice device, VkPipeline pipeline, uint32 shader);
		private static vkCompileDeferredNVFunction vkCompileDeferredNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCompileDeferredNV(VkDevice device, VkPipeline pipeline, uint32 shader)
			=> vkCompileDeferredNV_ptr(device, pipeline, shader);

		typealias vkGetMemoryHostPointerPropertiesEXTFunction = function VkResult(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* pHostPointer, VkMemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties);
		private static vkGetMemoryHostPointerPropertiesEXTFunction vkGetMemoryHostPointerPropertiesEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryHostPointerPropertiesEXT(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* pHostPointer, VkMemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties)
			=> vkGetMemoryHostPointerPropertiesEXT_ptr(device, handleType, pHostPointer, pMemoryHostPointerProperties);

		typealias vkCmdWriteBufferMarkerAMDFunction = function void(VkCommandBuffer commandBuffer, VkPipelineStageFlags pipelineStage, VkBuffer dstBuffer, uint64 dstOffset, uint32 marker);
		private static vkCmdWriteBufferMarkerAMDFunction vkCmdWriteBufferMarkerAMD_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWriteBufferMarkerAMD(VkCommandBuffer commandBuffer, VkPipelineStageFlags pipelineStage, VkBuffer dstBuffer, uint64 dstOffset, uint32 marker)
			=> vkCmdWriteBufferMarkerAMD_ptr(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker);

		typealias vkGetPhysicalDeviceCalibrateableTimeDomainsEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pTimeDomainCount, VkTimeDomainEXT* pTimeDomains);
		private static vkGetPhysicalDeviceCalibrateableTimeDomainsEXTFunction vkGetPhysicalDeviceCalibrateableTimeDomainsEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(VkPhysicalDevice physicalDevice, uint32* pTimeDomainCount, VkTimeDomainEXT* pTimeDomains)
			=> vkGetPhysicalDeviceCalibrateableTimeDomainsEXT_ptr(physicalDevice, pTimeDomainCount, pTimeDomains);

		typealias vkGetCalibratedTimestampsEXTFunction = function VkResult(VkDevice device, uint32 timestampCount, VkCalibratedTimestampInfoEXT* pTimestampInfos, uint64* pTimestamps, uint64* pMaxDeviation);
		private static vkGetCalibratedTimestampsEXTFunction vkGetCalibratedTimestampsEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetCalibratedTimestampsEXT(VkDevice device, uint32 timestampCount, VkCalibratedTimestampInfoEXT* pTimestampInfos, uint64* pTimestamps, uint64* pMaxDeviation)
			=> vkGetCalibratedTimestampsEXT_ptr(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);

		typealias vkCmdDrawMeshTasksNVFunction = function void(VkCommandBuffer commandBuffer, uint32 taskCount, uint32 firstTask);
		private static vkCmdDrawMeshTasksNVFunction vkCmdDrawMeshTasksNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawMeshTasksNV(VkCommandBuffer commandBuffer, uint32 taskCount, uint32 firstTask)
			=> vkCmdDrawMeshTasksNV_ptr(commandBuffer, taskCount, firstTask);

		typealias vkCmdDrawMeshTasksIndirectNVFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride);
		private static vkCmdDrawMeshTasksIndirectNVFunction vkCmdDrawMeshTasksIndirectNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawMeshTasksIndirectNV(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, uint32 drawCount, uint32 stride)
			=> vkCmdDrawMeshTasksIndirectNV_ptr(commandBuffer, buffer, offset, drawCount, stride);

		typealias vkCmdDrawMeshTasksIndirectCountNVFunction = function void(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride);
		private static vkCmdDrawMeshTasksIndirectCountNVFunction vkCmdDrawMeshTasksIndirectCountNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawMeshTasksIndirectCountNV(VkCommandBuffer commandBuffer, VkBuffer buffer, uint64 offset, VkBuffer countBuffer, uint64 countBufferOffset, uint32 maxDrawCount, uint32 stride)
			=> vkCmdDrawMeshTasksIndirectCountNV_ptr(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);

		typealias vkCmdSetExclusiveScissorNVFunction = function void(VkCommandBuffer commandBuffer, uint32 firstExclusiveScissor, uint32 exclusiveScissorCount, VkRect2D* pExclusiveScissors);
		private static vkCmdSetExclusiveScissorNVFunction vkCmdSetExclusiveScissorNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetExclusiveScissorNV(VkCommandBuffer commandBuffer, uint32 firstExclusiveScissor, uint32 exclusiveScissorCount, VkRect2D* pExclusiveScissors)
			=> vkCmdSetExclusiveScissorNV_ptr(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors);

		typealias vkCmdSetCheckpointNVFunction = function void(VkCommandBuffer commandBuffer, void* pCheckpointMarker);
		private static vkCmdSetCheckpointNVFunction vkCmdSetCheckpointNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetCheckpointNV(VkCommandBuffer commandBuffer, void* pCheckpointMarker)
			=> vkCmdSetCheckpointNV_ptr(commandBuffer, pCheckpointMarker);

		typealias vkGetQueueCheckpointDataNVFunction = function void(VkQueue queue, uint32* pCheckpointDataCount, VkCheckpointDataNV* pCheckpointData);
		private static vkGetQueueCheckpointDataNVFunction vkGetQueueCheckpointDataNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetQueueCheckpointDataNV(VkQueue queue, uint32* pCheckpointDataCount, VkCheckpointDataNV* pCheckpointData)
			=> vkGetQueueCheckpointDataNV_ptr(queue, pCheckpointDataCount, pCheckpointData);

		typealias vkInitializePerformanceApiINTELFunction = function VkResult(VkDevice device, VkInitializePerformanceApiInfoINTEL* pInitializeInfo);
		private static vkInitializePerformanceApiINTELFunction vkInitializePerformanceApiINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkInitializePerformanceApiINTEL(VkDevice device, VkInitializePerformanceApiInfoINTEL* pInitializeInfo)
			=> vkInitializePerformanceApiINTEL_ptr(device, pInitializeInfo);

		typealias vkUninitializePerformanceApiINTELFunction = function void(VkDevice device);
		private static vkUninitializePerformanceApiINTELFunction vkUninitializePerformanceApiINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkUninitializePerformanceApiINTEL(VkDevice device)
			=> vkUninitializePerformanceApiINTEL_ptr(device);

		typealias vkCmdSetPerformanceMarkerINTELFunction = function VkResult(VkCommandBuffer commandBuffer, VkPerformanceMarkerInfoINTEL* pMarkerInfo);
		private static vkCmdSetPerformanceMarkerINTELFunction vkCmdSetPerformanceMarkerINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCmdSetPerformanceMarkerINTEL(VkCommandBuffer commandBuffer, VkPerformanceMarkerInfoINTEL* pMarkerInfo)
			=> vkCmdSetPerformanceMarkerINTEL_ptr(commandBuffer, pMarkerInfo);

		typealias vkCmdSetPerformanceStreamMarkerINTELFunction = function VkResult(VkCommandBuffer commandBuffer, VkPerformanceStreamMarkerInfoINTEL* pMarkerInfo);
		private static vkCmdSetPerformanceStreamMarkerINTELFunction vkCmdSetPerformanceStreamMarkerINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCmdSetPerformanceStreamMarkerINTEL(VkCommandBuffer commandBuffer, VkPerformanceStreamMarkerInfoINTEL* pMarkerInfo)
			=> vkCmdSetPerformanceStreamMarkerINTEL_ptr(commandBuffer, pMarkerInfo);

		typealias vkCmdSetPerformanceOverrideINTELFunction = function VkResult(VkCommandBuffer commandBuffer, VkPerformanceOverrideInfoINTEL* pOverrideInfo);
		private static vkCmdSetPerformanceOverrideINTELFunction vkCmdSetPerformanceOverrideINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCmdSetPerformanceOverrideINTEL(VkCommandBuffer commandBuffer, VkPerformanceOverrideInfoINTEL* pOverrideInfo)
			=> vkCmdSetPerformanceOverrideINTEL_ptr(commandBuffer, pOverrideInfo);

		typealias vkAcquirePerformanceConfigurationINTELFunction = function VkResult(VkDevice device, VkPerformanceConfigurationAcquireInfoINTEL* pAcquireInfo, VkPerformanceConfigurationINTEL* pConfiguration);
		private static vkAcquirePerformanceConfigurationINTELFunction vkAcquirePerformanceConfigurationINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquirePerformanceConfigurationINTEL(VkDevice device, VkPerformanceConfigurationAcquireInfoINTEL* pAcquireInfo, VkPerformanceConfigurationINTEL* pConfiguration)
			=> vkAcquirePerformanceConfigurationINTEL_ptr(device, pAcquireInfo, pConfiguration);

		typealias vkReleasePerformanceConfigurationINTELFunction = function VkResult(VkDevice device, VkPerformanceConfigurationINTEL configuration);
		private static vkReleasePerformanceConfigurationINTELFunction vkReleasePerformanceConfigurationINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkReleasePerformanceConfigurationINTEL(VkDevice device, VkPerformanceConfigurationINTEL configuration)
			=> vkReleasePerformanceConfigurationINTEL_ptr(device, configuration);

		typealias vkQueueSetPerformanceConfigurationINTELFunction = function VkResult(VkQueue queue, VkPerformanceConfigurationINTEL configuration);
		private static vkQueueSetPerformanceConfigurationINTELFunction vkQueueSetPerformanceConfigurationINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueueSetPerformanceConfigurationINTEL(VkQueue queue, VkPerformanceConfigurationINTEL configuration)
			=> vkQueueSetPerformanceConfigurationINTEL_ptr(queue, configuration);

		typealias vkGetPerformanceParameterINTELFunction = function VkResult(VkDevice device, VkPerformanceParameterTypeINTEL parameter, VkPerformanceValueINTEL* pValue);
		private static vkGetPerformanceParameterINTELFunction vkGetPerformanceParameterINTEL_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPerformanceParameterINTEL(VkDevice device, VkPerformanceParameterTypeINTEL parameter, VkPerformanceValueINTEL* pValue)
			=> vkGetPerformanceParameterINTEL_ptr(device, parameter, pValue);

		typealias vkSetLocalDimmingAMDFunction = function void(VkDevice device, VkSwapchainKHR swapChain, VkBool32 localDimmingEnable);
		private static vkSetLocalDimmingAMDFunction vkSetLocalDimmingAMD_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkSetLocalDimmingAMD(VkDevice device, VkSwapchainKHR swapChain, VkBool32 localDimmingEnable)
			=> vkSetLocalDimmingAMD_ptr(device, swapChain, localDimmingEnable);

		typealias vkCreateImagePipeSurfaceFUCHSIAFunction = function VkResult(VkInstance instance, VkImagePipeSurfaceCreateInfoFUCHSIA* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateImagePipeSurfaceFUCHSIAFunction vkCreateImagePipeSurfaceFUCHSIA_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateImagePipeSurfaceFUCHSIA(VkInstance instance, VkImagePipeSurfaceCreateInfoFUCHSIA* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateImagePipeSurfaceFUCHSIA_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkCreateMetalSurfaceEXTFunction = function VkResult(VkInstance instance, VkMetalSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateMetalSurfaceEXTFunction vkCreateMetalSurfaceEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateMetalSurfaceEXT(VkInstance instance, VkMetalSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateMetalSurfaceEXT_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceFragmentShadingRatesKHRFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pFragmentShadingRateCount, VkPhysicalDeviceFragmentShadingRateKHR* pFragmentShadingRates);
		private static vkGetPhysicalDeviceFragmentShadingRatesKHRFunction vkGetPhysicalDeviceFragmentShadingRatesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceFragmentShadingRatesKHR(VkPhysicalDevice physicalDevice, uint32* pFragmentShadingRateCount, VkPhysicalDeviceFragmentShadingRateKHR* pFragmentShadingRates)
			=> vkGetPhysicalDeviceFragmentShadingRatesKHR_ptr(physicalDevice, pFragmentShadingRateCount, pFragmentShadingRates);

		typealias vkCmdSetFragmentShadingRateKHRFunction = function void(VkCommandBuffer commandBuffer, VkExtent2D* pFragmentSize, VkFragmentShadingRateCombinerOpKHR combinerOps);
		private static vkCmdSetFragmentShadingRateKHRFunction vkCmdSetFragmentShadingRateKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetFragmentShadingRateKHR(VkCommandBuffer commandBuffer, VkExtent2D* pFragmentSize, VkFragmentShadingRateCombinerOpKHR combinerOps)
			=> vkCmdSetFragmentShadingRateKHR_ptr(commandBuffer, pFragmentSize, combinerOps);

		typealias vkGetPhysicalDeviceToolPropertiesEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pToolCount, VkPhysicalDeviceToolPropertiesEXT* pToolProperties);
		private static vkGetPhysicalDeviceToolPropertiesEXTFunction vkGetPhysicalDeviceToolPropertiesEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceToolPropertiesEXT(VkPhysicalDevice physicalDevice, uint32* pToolCount, VkPhysicalDeviceToolPropertiesEXT* pToolProperties)
			=> vkGetPhysicalDeviceToolPropertiesEXT_ptr(physicalDevice, pToolCount, pToolProperties);

		typealias vkGetPhysicalDeviceCooperativeMatrixPropertiesNVFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkCooperativeMatrixPropertiesNV* pProperties);
		private static vkGetPhysicalDeviceCooperativeMatrixPropertiesNVFunction vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(VkPhysicalDevice physicalDevice, uint32* pPropertyCount, VkCooperativeMatrixPropertiesNV* pProperties)
			=> vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_ptr(physicalDevice, pPropertyCount, pProperties);

		typealias vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNVFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32* pCombinationCount, VkFramebufferMixedSamplesCombinationNV* pCombinations);
		private static vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNVFunction vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(VkPhysicalDevice physicalDevice, uint32* pCombinationCount, VkFramebufferMixedSamplesCombinationNV* pCombinations)
			=> vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_ptr(physicalDevice, pCombinationCount, pCombinations);

		typealias vkGetPhysicalDeviceSurfacePresentModes2EXTFunction = function VkResult(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pPresentModeCount, VkPresentModeKHR* pPresentModes);
		private static vkGetPhysicalDeviceSurfacePresentModes2EXTFunction vkGetPhysicalDeviceSurfacePresentModes2EXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPhysicalDeviceSurfacePresentModes2EXT(VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint32* pPresentModeCount, VkPresentModeKHR* pPresentModes)
			=> vkGetPhysicalDeviceSurfacePresentModes2EXT_ptr(physicalDevice, pSurfaceInfo, pPresentModeCount, pPresentModes);

		typealias vkAcquireFullScreenExclusiveModeEXTFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain);
		private static vkAcquireFullScreenExclusiveModeEXTFunction vkAcquireFullScreenExclusiveModeEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireFullScreenExclusiveModeEXT(VkDevice device, VkSwapchainKHR swapchain)
			=> vkAcquireFullScreenExclusiveModeEXT_ptr(device, swapchain);

		typealias vkReleaseFullScreenExclusiveModeEXTFunction = function VkResult(VkDevice device, VkSwapchainKHR swapchain);
		private static vkReleaseFullScreenExclusiveModeEXTFunction vkReleaseFullScreenExclusiveModeEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkReleaseFullScreenExclusiveModeEXT(VkDevice device, VkSwapchainKHR swapchain)
			=> vkReleaseFullScreenExclusiveModeEXT_ptr(device, swapchain);

		typealias vkCreateHeadlessSurfaceEXTFunction = function VkResult(VkInstance instance, VkHeadlessSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateHeadlessSurfaceEXTFunction vkCreateHeadlessSurfaceEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateHeadlessSurfaceEXT(VkInstance instance, VkHeadlessSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateHeadlessSurfaceEXT_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkCmdSetLineStippleEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 lineStippleFactor, uint16 lineStipplePattern);
		private static vkCmdSetLineStippleEXTFunction vkCmdSetLineStippleEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetLineStippleEXT(VkCommandBuffer commandBuffer, uint32 lineStippleFactor, uint16 lineStipplePattern)
			=> vkCmdSetLineStippleEXT_ptr(commandBuffer, lineStippleFactor, lineStipplePattern);

		typealias vkCmdSetCullModeEXTFunction = function void(VkCommandBuffer commandBuffer, VkCullModeFlags cullMode);
		private static vkCmdSetCullModeEXTFunction vkCmdSetCullModeEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetCullModeEXT(VkCommandBuffer commandBuffer, VkCullModeFlags cullMode)
			=> vkCmdSetCullModeEXT_ptr(commandBuffer, cullMode);

		typealias vkCmdSetFrontFaceEXTFunction = function void(VkCommandBuffer commandBuffer, VkFrontFace frontFace);
		private static vkCmdSetFrontFaceEXTFunction vkCmdSetFrontFaceEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetFrontFaceEXT(VkCommandBuffer commandBuffer, VkFrontFace frontFace)
			=> vkCmdSetFrontFaceEXT_ptr(commandBuffer, frontFace);

		typealias vkCmdSetPrimitiveTopologyEXTFunction = function void(VkCommandBuffer commandBuffer, VkPrimitiveTopology primitiveTopology);
		private static vkCmdSetPrimitiveTopologyEXTFunction vkCmdSetPrimitiveTopologyEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetPrimitiveTopologyEXT(VkCommandBuffer commandBuffer, VkPrimitiveTopology primitiveTopology)
			=> vkCmdSetPrimitiveTopologyEXT_ptr(commandBuffer, primitiveTopology);

		typealias vkCmdSetViewportWithCountEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 viewportCount, VkViewport* pViewports);
		private static vkCmdSetViewportWithCountEXTFunction vkCmdSetViewportWithCountEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetViewportWithCountEXT(VkCommandBuffer commandBuffer, uint32 viewportCount, VkViewport* pViewports)
			=> vkCmdSetViewportWithCountEXT_ptr(commandBuffer, viewportCount, pViewports);

		typealias vkCmdSetScissorWithCountEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 scissorCount, VkRect2D* pScissors);
		private static vkCmdSetScissorWithCountEXTFunction vkCmdSetScissorWithCountEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetScissorWithCountEXT(VkCommandBuffer commandBuffer, uint32 scissorCount, VkRect2D* pScissors)
			=> vkCmdSetScissorWithCountEXT_ptr(commandBuffer, scissorCount, pScissors);

		typealias vkCmdBindVertexBuffers2EXTFunction = function void(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets, uint64* pSizes, uint64* pStrides);
		private static vkCmdBindVertexBuffers2EXTFunction vkCmdBindVertexBuffers2EXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindVertexBuffers2EXT(VkCommandBuffer commandBuffer, uint32 firstBinding, uint32 bindingCount, VkBuffer* pBuffers, uint64* pOffsets, uint64* pSizes, uint64* pStrides)
			=> vkCmdBindVertexBuffers2EXT_ptr(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes, pStrides);

		typealias vkCmdSetDepthTestEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 depthTestEnable);
		private static vkCmdSetDepthTestEnableEXTFunction vkCmdSetDepthTestEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthTestEnableEXT(VkCommandBuffer commandBuffer, VkBool32 depthTestEnable)
			=> vkCmdSetDepthTestEnableEXT_ptr(commandBuffer, depthTestEnable);

		typealias vkCmdSetDepthWriteEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 depthWriteEnable);
		private static vkCmdSetDepthWriteEnableEXTFunction vkCmdSetDepthWriteEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthWriteEnableEXT(VkCommandBuffer commandBuffer, VkBool32 depthWriteEnable)
			=> vkCmdSetDepthWriteEnableEXT_ptr(commandBuffer, depthWriteEnable);

		typealias vkCmdSetDepthCompareOpEXTFunction = function void(VkCommandBuffer commandBuffer, VkCompareOp depthCompareOp);
		private static vkCmdSetDepthCompareOpEXTFunction vkCmdSetDepthCompareOpEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthCompareOpEXT(VkCommandBuffer commandBuffer, VkCompareOp depthCompareOp)
			=> vkCmdSetDepthCompareOpEXT_ptr(commandBuffer, depthCompareOp);

		typealias vkCmdSetDepthBoundsTestEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 depthBoundsTestEnable);
		private static vkCmdSetDepthBoundsTestEnableEXTFunction vkCmdSetDepthBoundsTestEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthBoundsTestEnableEXT(VkCommandBuffer commandBuffer, VkBool32 depthBoundsTestEnable)
			=> vkCmdSetDepthBoundsTestEnableEXT_ptr(commandBuffer, depthBoundsTestEnable);

		typealias vkCmdSetStencilTestEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 stencilTestEnable);
		private static vkCmdSetStencilTestEnableEXTFunction vkCmdSetStencilTestEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetStencilTestEnableEXT(VkCommandBuffer commandBuffer, VkBool32 stencilTestEnable)
			=> vkCmdSetStencilTestEnableEXT_ptr(commandBuffer, stencilTestEnable);

		typealias vkCmdSetStencilOpEXTFunction = function void(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, VkStencilOp failOp, VkStencilOp passOp, VkStencilOp depthFailOp, VkCompareOp compareOp);
		private static vkCmdSetStencilOpEXTFunction vkCmdSetStencilOpEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetStencilOpEXT(VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, VkStencilOp failOp, VkStencilOp passOp, VkStencilOp depthFailOp, VkCompareOp compareOp)
			=> vkCmdSetStencilOpEXT_ptr(commandBuffer, faceMask, failOp, passOp, depthFailOp, compareOp);

		typealias vkCreateDeferredOperationKHRFunction = function VkResult(VkDevice device, VkAllocationCallbacks* pAllocator, VkDeferredOperationKHR* pDeferredOperation);
		private static vkCreateDeferredOperationKHRFunction vkCreateDeferredOperationKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDeferredOperationKHR(VkDevice device, VkAllocationCallbacks* pAllocator, VkDeferredOperationKHR* pDeferredOperation)
			=> vkCreateDeferredOperationKHR_ptr(device, pAllocator, pDeferredOperation);

		typealias vkDestroyDeferredOperationKHRFunction = function void(VkDevice device, VkDeferredOperationKHR operation, VkAllocationCallbacks* pAllocator);
		private static vkDestroyDeferredOperationKHRFunction vkDestroyDeferredOperationKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyDeferredOperationKHR(VkDevice device, VkDeferredOperationKHR operation, VkAllocationCallbacks* pAllocator)
			=> vkDestroyDeferredOperationKHR_ptr(device, operation, pAllocator);

		typealias vkGetDeferredOperationMaxConcurrencyKHRFunction = function uint32(VkDevice device, VkDeferredOperationKHR operation);
		private static vkGetDeferredOperationMaxConcurrencyKHRFunction vkGetDeferredOperationMaxConcurrencyKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static uint32 vkGetDeferredOperationMaxConcurrencyKHR(VkDevice device, VkDeferredOperationKHR operation)
			=> vkGetDeferredOperationMaxConcurrencyKHR_ptr(device, operation);

		typealias vkGetDeferredOperationResultKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR operation);
		private static vkGetDeferredOperationResultKHRFunction vkGetDeferredOperationResultKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDeferredOperationResultKHR(VkDevice device, VkDeferredOperationKHR operation)
			=> vkGetDeferredOperationResultKHR_ptr(device, operation);

		typealias vkDeferredOperationJoinKHRFunction = function VkResult(VkDevice device, VkDeferredOperationKHR operation);
		private static vkDeferredOperationJoinKHRFunction vkDeferredOperationJoinKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkDeferredOperationJoinKHR(VkDevice device, VkDeferredOperationKHR operation)
			=> vkDeferredOperationJoinKHR_ptr(device, operation);

		typealias vkGetPipelineExecutablePropertiesKHRFunction = function VkResult(VkDevice device, VkPipelineInfoKHR* pPipelineInfo, uint32* pExecutableCount, VkPipelineExecutablePropertiesKHR* pProperties);
		private static vkGetPipelineExecutablePropertiesKHRFunction vkGetPipelineExecutablePropertiesKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPipelineExecutablePropertiesKHR(VkDevice device, VkPipelineInfoKHR* pPipelineInfo, uint32* pExecutableCount, VkPipelineExecutablePropertiesKHR* pProperties)
			=> vkGetPipelineExecutablePropertiesKHR_ptr(device, pPipelineInfo, pExecutableCount, pProperties);

		typealias vkGetPipelineExecutableStatisticsKHRFunction = function VkResult(VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint32* pStatisticCount, VkPipelineExecutableStatisticKHR* pStatistics);
		private static vkGetPipelineExecutableStatisticsKHRFunction vkGetPipelineExecutableStatisticsKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPipelineExecutableStatisticsKHR(VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint32* pStatisticCount, VkPipelineExecutableStatisticKHR* pStatistics)
			=> vkGetPipelineExecutableStatisticsKHR_ptr(device, pExecutableInfo, pStatisticCount, pStatistics);

		typealias vkGetPipelineExecutableInternalRepresentationsKHRFunction = function VkResult(VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint32* pInternalRepresentationCount, VkPipelineExecutableInternalRepresentationKHR* pInternalRepresentations);
		private static vkGetPipelineExecutableInternalRepresentationsKHRFunction vkGetPipelineExecutableInternalRepresentationsKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetPipelineExecutableInternalRepresentationsKHR(VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint32* pInternalRepresentationCount, VkPipelineExecutableInternalRepresentationKHR* pInternalRepresentations)
			=> vkGetPipelineExecutableInternalRepresentationsKHR_ptr(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations);

		typealias vkGetGeneratedCommandsMemoryRequirementsNVFunction = function void(VkDevice device, VkGeneratedCommandsMemoryRequirementsInfoNV* pInfo, VkMemoryRequirements2* pMemoryRequirements);
		private static vkGetGeneratedCommandsMemoryRequirementsNVFunction vkGetGeneratedCommandsMemoryRequirementsNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetGeneratedCommandsMemoryRequirementsNV(VkDevice device, VkGeneratedCommandsMemoryRequirementsInfoNV* pInfo, VkMemoryRequirements2* pMemoryRequirements)
			=> vkGetGeneratedCommandsMemoryRequirementsNV_ptr(device, pInfo, pMemoryRequirements);

		typealias vkCmdPreprocessGeneratedCommandsNVFunction = function void(VkCommandBuffer commandBuffer, VkGeneratedCommandsInfoNV* pGeneratedCommandsInfo);
		private static vkCmdPreprocessGeneratedCommandsNVFunction vkCmdPreprocessGeneratedCommandsNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdPreprocessGeneratedCommandsNV(VkCommandBuffer commandBuffer, VkGeneratedCommandsInfoNV* pGeneratedCommandsInfo)
			=> vkCmdPreprocessGeneratedCommandsNV_ptr(commandBuffer, pGeneratedCommandsInfo);

		typealias vkCmdExecuteGeneratedCommandsNVFunction = function void(VkCommandBuffer commandBuffer, VkBool32 isPreprocessed, VkGeneratedCommandsInfoNV* pGeneratedCommandsInfo);
		private static vkCmdExecuteGeneratedCommandsNVFunction vkCmdExecuteGeneratedCommandsNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdExecuteGeneratedCommandsNV(VkCommandBuffer commandBuffer, VkBool32 isPreprocessed, VkGeneratedCommandsInfoNV* pGeneratedCommandsInfo)
			=> vkCmdExecuteGeneratedCommandsNV_ptr(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);

		typealias vkCmdBindPipelineShaderGroupNVFunction = function void(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline, uint32 groupIndex);
		private static vkCmdBindPipelineShaderGroupNVFunction vkCmdBindPipelineShaderGroupNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBindPipelineShaderGroupNV(VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline, uint32 groupIndex)
			=> vkCmdBindPipelineShaderGroupNV_ptr(commandBuffer, pipelineBindPoint, pipeline, groupIndex);

		typealias vkCreateIndirectCommandsLayoutNVFunction = function VkResult(VkDevice device, VkIndirectCommandsLayoutCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkIndirectCommandsLayoutNV* pIndirectCommandsLayout);
		private static vkCreateIndirectCommandsLayoutNVFunction vkCreateIndirectCommandsLayoutNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateIndirectCommandsLayoutNV(VkDevice device, VkIndirectCommandsLayoutCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkIndirectCommandsLayoutNV* pIndirectCommandsLayout)
			=> vkCreateIndirectCommandsLayoutNV_ptr(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);

		typealias vkDestroyIndirectCommandsLayoutNVFunction = function void(VkDevice device, VkIndirectCommandsLayoutNV indirectCommandsLayout, VkAllocationCallbacks* pAllocator);
		private static vkDestroyIndirectCommandsLayoutNVFunction vkDestroyIndirectCommandsLayoutNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyIndirectCommandsLayoutNV(VkDevice device, VkIndirectCommandsLayoutNV indirectCommandsLayout, VkAllocationCallbacks* pAllocator)
			=> vkDestroyIndirectCommandsLayoutNV_ptr(device, indirectCommandsLayout, pAllocator);

		typealias vkAcquireDrmDisplayEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, int32 drmFd, VkDisplayKHR display);
		private static vkAcquireDrmDisplayEXTFunction vkAcquireDrmDisplayEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireDrmDisplayEXT(VkPhysicalDevice physicalDevice, int32 drmFd, VkDisplayKHR display)
			=> vkAcquireDrmDisplayEXT_ptr(physicalDevice, drmFd, display);

		typealias vkGetDrmDisplayEXTFunction = function VkResult(VkPhysicalDevice physicalDevice, int32 drmFd, uint32 connectorId, VkDisplayKHR* display);
		private static vkGetDrmDisplayEXTFunction vkGetDrmDisplayEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetDrmDisplayEXT(VkPhysicalDevice physicalDevice, int32 drmFd, uint32 connectorId, VkDisplayKHR* display)
			=> vkGetDrmDisplayEXT_ptr(physicalDevice, drmFd, connectorId, display);

		typealias vkCreatePrivateDataSlotEXTFunction = function VkResult(VkDevice device, VkPrivateDataSlotCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPrivateDataSlotEXT* pPrivateDataSlot);
		private static vkCreatePrivateDataSlotEXTFunction vkCreatePrivateDataSlotEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreatePrivateDataSlotEXT(VkDevice device, VkPrivateDataSlotCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPrivateDataSlotEXT* pPrivateDataSlot)
			=> vkCreatePrivateDataSlotEXT_ptr(device, pCreateInfo, pAllocator, pPrivateDataSlot);

		typealias vkDestroyPrivateDataSlotEXTFunction = function void(VkDevice device, VkPrivateDataSlotEXT privateDataSlot, VkAllocationCallbacks* pAllocator);
		private static vkDestroyPrivateDataSlotEXTFunction vkDestroyPrivateDataSlotEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkDestroyPrivateDataSlotEXT(VkDevice device, VkPrivateDataSlotEXT privateDataSlot, VkAllocationCallbacks* pAllocator)
			=> vkDestroyPrivateDataSlotEXT_ptr(device, privateDataSlot, pAllocator);

		typealias vkSetPrivateDataEXTFunction = function VkResult(VkDevice device, VkObjectType objectType, uint64 objectHandle, VkPrivateDataSlotEXT privateDataSlot, uint64 data);
		private static vkSetPrivateDataEXTFunction vkSetPrivateDataEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkSetPrivateDataEXT(VkDevice device, VkObjectType objectType, uint64 objectHandle, VkPrivateDataSlotEXT privateDataSlot, uint64 data)
			=> vkSetPrivateDataEXT_ptr(device, objectType, objectHandle, privateDataSlot, data);

		typealias vkGetPrivateDataEXTFunction = function void(VkDevice device, VkObjectType objectType, uint64 objectHandle, VkPrivateDataSlotEXT privateDataSlot, uint64* pData);
		private static vkGetPrivateDataEXTFunction vkGetPrivateDataEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkGetPrivateDataEXT(VkDevice device, VkObjectType objectType, uint64 objectHandle, VkPrivateDataSlotEXT privateDataSlot, uint64* pData)
			=> vkGetPrivateDataEXT_ptr(device, objectType, objectHandle, privateDataSlot, pData);

		typealias vkCmdEncodeVideoKHRFunction = function void(VkCommandBuffer commandBuffer, VkVideoEncodeInfoKHR* pEncodeInfo);
		private static vkCmdEncodeVideoKHRFunction vkCmdEncodeVideoKHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdEncodeVideoKHR(VkCommandBuffer commandBuffer, VkVideoEncodeInfoKHR* pEncodeInfo)
			=> vkCmdEncodeVideoKHR_ptr(commandBuffer, pEncodeInfo);

		typealias vkCmdSetEvent2KHRFunction = function void(VkCommandBuffer commandBuffer, VkEvent event, VkDependencyInfoKHR* pDependencyInfo);
		private static vkCmdSetEvent2KHRFunction vkCmdSetEvent2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetEvent2KHR(VkCommandBuffer commandBuffer, VkEvent event, VkDependencyInfoKHR* pDependencyInfo)
			=> vkCmdSetEvent2KHR_ptr(commandBuffer, event, pDependencyInfo);

		typealias vkCmdResetEvent2KHRFunction = function void(VkCommandBuffer commandBuffer, VkEvent event, uint64 stageMask);
		private static vkCmdResetEvent2KHRFunction vkCmdResetEvent2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdResetEvent2KHR(VkCommandBuffer commandBuffer, VkEvent event, uint64 stageMask)
			=> vkCmdResetEvent2KHR_ptr(commandBuffer, event, stageMask);

		typealias vkCmdWaitEvents2KHRFunction = function void(VkCommandBuffer commandBuffer, uint32 eventCount, VkEvent* pEvents, VkDependencyInfoKHR* pDependencyInfos);
		private static vkCmdWaitEvents2KHRFunction vkCmdWaitEvents2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWaitEvents2KHR(VkCommandBuffer commandBuffer, uint32 eventCount, VkEvent* pEvents, VkDependencyInfoKHR* pDependencyInfos)
			=> vkCmdWaitEvents2KHR_ptr(commandBuffer, eventCount, pEvents, pDependencyInfos);

		typealias vkCmdPipelineBarrier2KHRFunction = function void(VkCommandBuffer commandBuffer, VkDependencyInfoKHR* pDependencyInfo);
		private static vkCmdPipelineBarrier2KHRFunction vkCmdPipelineBarrier2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdPipelineBarrier2KHR(VkCommandBuffer commandBuffer, VkDependencyInfoKHR* pDependencyInfo)
			=> vkCmdPipelineBarrier2KHR_ptr(commandBuffer, pDependencyInfo);

		typealias vkCmdWriteTimestamp2KHRFunction = function void(VkCommandBuffer commandBuffer, uint64 stage, VkQueryPool queryPool, uint32 query);
		private static vkCmdWriteTimestamp2KHRFunction vkCmdWriteTimestamp2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdWriteTimestamp2KHR(VkCommandBuffer commandBuffer, uint64 stage, VkQueryPool queryPool, uint32 query)
			=> vkCmdWriteTimestamp2KHR_ptr(commandBuffer, stage, queryPool, query);

		typealias vkQueueSubmit2KHRFunction = function VkResult(VkQueue queue, uint32 submitCount, VkSubmitInfo2KHR* pSubmits, VkFence fence);
		private static vkQueueSubmit2KHRFunction vkQueueSubmit2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkQueueSubmit2KHR(VkQueue queue, uint32 submitCount, VkSubmitInfo2KHR* pSubmits, VkFence fence)
			=> vkQueueSubmit2KHR_ptr(queue, submitCount, pSubmits, fence);

		typealias vkCmdSetFragmentShadingRateEnumNVFunction = function void(VkCommandBuffer commandBuffer, VkFragmentShadingRateNV shadingRate, VkFragmentShadingRateCombinerOpKHR combinerOps);
		private static vkCmdSetFragmentShadingRateEnumNVFunction vkCmdSetFragmentShadingRateEnumNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetFragmentShadingRateEnumNV(VkCommandBuffer commandBuffer, VkFragmentShadingRateNV shadingRate, VkFragmentShadingRateCombinerOpKHR combinerOps)
			=> vkCmdSetFragmentShadingRateEnumNV_ptr(commandBuffer, shadingRate, combinerOps);

		typealias vkCmdCopyBuffer2KHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyBufferInfo2KHR* pCopyBufferInfo);
		private static vkCmdCopyBuffer2KHRFunction vkCmdCopyBuffer2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyBuffer2KHR(VkCommandBuffer commandBuffer, VkCopyBufferInfo2KHR* pCopyBufferInfo)
			=> vkCmdCopyBuffer2KHR_ptr(commandBuffer, pCopyBufferInfo);

		typealias vkCmdCopyImage2KHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyImageInfo2KHR* pCopyImageInfo);
		private static vkCmdCopyImage2KHRFunction vkCmdCopyImage2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyImage2KHR(VkCommandBuffer commandBuffer, VkCopyImageInfo2KHR* pCopyImageInfo)
			=> vkCmdCopyImage2KHR_ptr(commandBuffer, pCopyImageInfo);

		typealias vkCmdCopyBufferToImage2KHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyBufferToImageInfo2KHR* pCopyBufferToImageInfo);
		private static vkCmdCopyBufferToImage2KHRFunction vkCmdCopyBufferToImage2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyBufferToImage2KHR(VkCommandBuffer commandBuffer, VkCopyBufferToImageInfo2KHR* pCopyBufferToImageInfo)
			=> vkCmdCopyBufferToImage2KHR_ptr(commandBuffer, pCopyBufferToImageInfo);

		typealias vkCmdCopyImageToBuffer2KHRFunction = function void(VkCommandBuffer commandBuffer, VkCopyImageToBufferInfo2KHR* pCopyImageToBufferInfo);
		private static vkCmdCopyImageToBuffer2KHRFunction vkCmdCopyImageToBuffer2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdCopyImageToBuffer2KHR(VkCommandBuffer commandBuffer, VkCopyImageToBufferInfo2KHR* pCopyImageToBufferInfo)
			=> vkCmdCopyImageToBuffer2KHR_ptr(commandBuffer, pCopyImageToBufferInfo);

		typealias vkCmdBlitImage2KHRFunction = function void(VkCommandBuffer commandBuffer, VkBlitImageInfo2KHR* pBlitImageInfo);
		private static vkCmdBlitImage2KHRFunction vkCmdBlitImage2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdBlitImage2KHR(VkCommandBuffer commandBuffer, VkBlitImageInfo2KHR* pBlitImageInfo)
			=> vkCmdBlitImage2KHR_ptr(commandBuffer, pBlitImageInfo);

		typealias vkCmdResolveImage2KHRFunction = function void(VkCommandBuffer commandBuffer, VkResolveImageInfo2KHR* pResolveImageInfo);
		private static vkCmdResolveImage2KHRFunction vkCmdResolveImage2KHR_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdResolveImage2KHR(VkCommandBuffer commandBuffer, VkResolveImageInfo2KHR* pResolveImageInfo)
			=> vkCmdResolveImage2KHR_ptr(commandBuffer, pResolveImageInfo);

		typealias vkAcquireWinrtDisplayNVFunction = function VkResult(VkPhysicalDevice physicalDevice, VkDisplayKHR display);
		private static vkAcquireWinrtDisplayNVFunction vkAcquireWinrtDisplayNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkAcquireWinrtDisplayNV(VkPhysicalDevice physicalDevice, VkDisplayKHR display)
			=> vkAcquireWinrtDisplayNV_ptr(physicalDevice, display);

		typealias vkGetWinrtDisplayNVFunction = function VkResult(VkPhysicalDevice physicalDevice, uint32 deviceRelativeId, VkDisplayKHR* pDisplay);
		private static vkGetWinrtDisplayNVFunction vkGetWinrtDisplayNV_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetWinrtDisplayNV(VkPhysicalDevice physicalDevice, uint32 deviceRelativeId, VkDisplayKHR* pDisplay)
			=> vkGetWinrtDisplayNV_ptr(physicalDevice, deviceRelativeId, pDisplay);

		typealias vkCreateDirectFBSurfaceEXTFunction = function VkResult(VkInstance instance, VkDirectFBSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateDirectFBSurfaceEXTFunction vkCreateDirectFBSurfaceEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateDirectFBSurfaceEXT(VkInstance instance, VkDirectFBSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateDirectFBSurfaceEXT_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceDirectFBPresentationSupportEXTFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* dfb);
		private static vkGetPhysicalDeviceDirectFBPresentationSupportEXTFunction vkGetPhysicalDeviceDirectFBPresentationSupportEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceDirectFBPresentationSupportEXT(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* dfb)
			=> vkGetPhysicalDeviceDirectFBPresentationSupportEXT_ptr(physicalDevice, queueFamilyIndex, dfb);

		typealias vkCmdSetVertexInputEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 vertexBindingDescriptionCount, VkVertexInputBindingDescription2EXT* pVertexBindingDescriptions, uint32 vertexAttributeDescriptionCount, VkVertexInputAttributeDescription2EXT* pVertexAttributeDescriptions);
		private static vkCmdSetVertexInputEXTFunction vkCmdSetVertexInputEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetVertexInputEXT(VkCommandBuffer commandBuffer, uint32 vertexBindingDescriptionCount, VkVertexInputBindingDescription2EXT* pVertexBindingDescriptions, uint32 vertexAttributeDescriptionCount, VkVertexInputAttributeDescription2EXT* pVertexAttributeDescriptions)
			=> vkCmdSetVertexInputEXT_ptr(commandBuffer, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions);

		typealias vkGetMemoryZirconHandleFUCHSIAFunction = function VkResult(VkDevice device, VkMemoryGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, void* pZirconHandle);
		private static vkGetMemoryZirconHandleFUCHSIAFunction vkGetMemoryZirconHandleFUCHSIA_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryZirconHandleFUCHSIA(VkDevice device, VkMemoryGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, void* pZirconHandle)
			=> vkGetMemoryZirconHandleFUCHSIA_ptr(device, pGetZirconHandleInfo, pZirconHandle);

		typealias vkGetMemoryZirconHandlePropertiesFUCHSIAFunction = function VkResult(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* zirconHandle, VkMemoryZirconHandlePropertiesFUCHSIA* pMemoryZirconHandleProperties);
		private static vkGetMemoryZirconHandlePropertiesFUCHSIAFunction vkGetMemoryZirconHandlePropertiesFUCHSIA_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetMemoryZirconHandlePropertiesFUCHSIA(VkDevice device, VkExternalMemoryHandleTypeFlags handleType, void* zirconHandle, VkMemoryZirconHandlePropertiesFUCHSIA* pMemoryZirconHandleProperties)
			=> vkGetMemoryZirconHandlePropertiesFUCHSIA_ptr(device, handleType, zirconHandle, pMemoryZirconHandleProperties);

		typealias vkImportSemaphoreZirconHandleFUCHSIAFunction = function VkResult(VkDevice device, VkImportSemaphoreZirconHandleInfoFUCHSIA* pImportSemaphoreZirconHandleInfo);
		private static vkImportSemaphoreZirconHandleFUCHSIAFunction vkImportSemaphoreZirconHandleFUCHSIA_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkImportSemaphoreZirconHandleFUCHSIA(VkDevice device, VkImportSemaphoreZirconHandleInfoFUCHSIA* pImportSemaphoreZirconHandleInfo)
			=> vkImportSemaphoreZirconHandleFUCHSIA_ptr(device, pImportSemaphoreZirconHandleInfo);

		typealias vkGetSemaphoreZirconHandleFUCHSIAFunction = function VkResult(VkDevice device, VkSemaphoreGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, void* pZirconHandle);
		private static vkGetSemaphoreZirconHandleFUCHSIAFunction vkGetSemaphoreZirconHandleFUCHSIA_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSemaphoreZirconHandleFUCHSIA(VkDevice device, VkSemaphoreGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, void* pZirconHandle)
			=> vkGetSemaphoreZirconHandleFUCHSIA_ptr(device, pGetZirconHandleInfo, pZirconHandle);

		typealias vkGetSubpassShadingMaxWorkgroupSizeHUAWEIFunction = function VkResult(VkRenderPass renderpass, VkExtent2D* pMaxWorkgroupSize);
		private static vkGetSubpassShadingMaxWorkgroupSizeHUAWEIFunction vkGetSubpassShadingMaxWorkgroupSizeHUAWEI_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkGetSubpassShadingMaxWorkgroupSizeHUAWEI(VkRenderPass renderpass, VkExtent2D* pMaxWorkgroupSize)
			=> vkGetSubpassShadingMaxWorkgroupSizeHUAWEI_ptr(renderpass, pMaxWorkgroupSize);

		typealias vkCmdSubpassShadingHUAWEIFunction = function void(VkCommandBuffer commandBuffer);
		private static vkCmdSubpassShadingHUAWEIFunction vkCmdSubpassShadingHUAWEI_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSubpassShadingHUAWEI(VkCommandBuffer commandBuffer)
			=> vkCmdSubpassShadingHUAWEI_ptr(commandBuffer);

		typealias vkCmdSetPatchControlPointsEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 patchControlPoints);
		private static vkCmdSetPatchControlPointsEXTFunction vkCmdSetPatchControlPointsEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetPatchControlPointsEXT(VkCommandBuffer commandBuffer, uint32 patchControlPoints)
			=> vkCmdSetPatchControlPointsEXT_ptr(commandBuffer, patchControlPoints);

		typealias vkCmdSetRasterizerDiscardEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 rasterizerDiscardEnable);
		private static vkCmdSetRasterizerDiscardEnableEXTFunction vkCmdSetRasterizerDiscardEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetRasterizerDiscardEnableEXT(VkCommandBuffer commandBuffer, VkBool32 rasterizerDiscardEnable)
			=> vkCmdSetRasterizerDiscardEnableEXT_ptr(commandBuffer, rasterizerDiscardEnable);

		typealias vkCmdSetDepthBiasEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 depthBiasEnable);
		private static vkCmdSetDepthBiasEnableEXTFunction vkCmdSetDepthBiasEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetDepthBiasEnableEXT(VkCommandBuffer commandBuffer, VkBool32 depthBiasEnable)
			=> vkCmdSetDepthBiasEnableEXT_ptr(commandBuffer, depthBiasEnable);

		typealias vkCmdSetLogicOpEXTFunction = function void(VkCommandBuffer commandBuffer, VkLogicOp logicOp);
		private static vkCmdSetLogicOpEXTFunction vkCmdSetLogicOpEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetLogicOpEXT(VkCommandBuffer commandBuffer, VkLogicOp logicOp)
			=> vkCmdSetLogicOpEXT_ptr(commandBuffer, logicOp);

		typealias vkCmdSetPrimitiveRestartEnableEXTFunction = function void(VkCommandBuffer commandBuffer, VkBool32 primitiveRestartEnable);
		private static vkCmdSetPrimitiveRestartEnableEXTFunction vkCmdSetPrimitiveRestartEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetPrimitiveRestartEnableEXT(VkCommandBuffer commandBuffer, VkBool32 primitiveRestartEnable)
			=> vkCmdSetPrimitiveRestartEnableEXT_ptr(commandBuffer, primitiveRestartEnable);

		typealias vkCreateScreenSurfaceQNXFunction = function VkResult(VkInstance instance, VkScreenSurfaceCreateInfoQNX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface);
		private static vkCreateScreenSurfaceQNXFunction vkCreateScreenSurfaceQNX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkResult vkCreateScreenSurfaceQNX(VkInstance instance, VkScreenSurfaceCreateInfoQNX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface)
			=> vkCreateScreenSurfaceQNX_ptr(instance, pCreateInfo, pAllocator, pSurface);

		typealias vkGetPhysicalDeviceScreenPresentationSupportQNXFunction = function VkBool32(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* window);
		private static vkGetPhysicalDeviceScreenPresentationSupportQNXFunction vkGetPhysicalDeviceScreenPresentationSupportQNX_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static VkBool32 vkGetPhysicalDeviceScreenPresentationSupportQNX(VkPhysicalDevice physicalDevice, uint32 queueFamilyIndex, void* window)
			=> vkGetPhysicalDeviceScreenPresentationSupportQNX_ptr(physicalDevice, queueFamilyIndex, window);

		typealias vkCmdSetColorWriteEnableEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 attachmentCount, VkBool32* pColorWriteEnables);
		private static vkCmdSetColorWriteEnableEXTFunction vkCmdSetColorWriteEnableEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdSetColorWriteEnableEXT(VkCommandBuffer commandBuffer, uint32 attachmentCount, VkBool32* pColorWriteEnables)
			=> vkCmdSetColorWriteEnableEXT_ptr(commandBuffer, attachmentCount, pColorWriteEnables);

		typealias vkCmdDrawMultiEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 drawCount, VkMultiDrawInfoEXT* pVertexInfo, uint32 instanceCount, uint32 firstInstance, uint32 stride);
		private static vkCmdDrawMultiEXTFunction vkCmdDrawMultiEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawMultiEXT(VkCommandBuffer commandBuffer, uint32 drawCount, VkMultiDrawInfoEXT* pVertexInfo, uint32 instanceCount, uint32 firstInstance, uint32 stride)
			=> vkCmdDrawMultiEXT_ptr(commandBuffer, drawCount, pVertexInfo, instanceCount, firstInstance, stride);

		typealias vkCmdDrawMultiIndexedEXTFunction = function void(VkCommandBuffer commandBuffer, uint32 drawCount, VkMultiDrawIndexedInfoEXT* pIndexInfo, uint32 instanceCount, uint32 firstInstance, uint32 stride, int32* pVertexOffset);
		private static vkCmdDrawMultiIndexedEXTFunction vkCmdDrawMultiIndexedEXT_ptr;
		[CallingConvention(VulkanNative.CallConv)]
		public static void vkCmdDrawMultiIndexedEXT(VkCommandBuffer commandBuffer, uint32 drawCount, VkMultiDrawIndexedInfoEXT* pIndexInfo, uint32 instanceCount, uint32 firstInstance, uint32 stride, int32* pVertexOffset)
			=> vkCmdDrawMultiIndexedEXT_ptr(commandBuffer, drawCount, pIndexInfo, instanceCount, firstInstance, stride, pVertexOffset);

		public static void LoadFuncionPointers(VkInstance instance = default)
		{
			if (instance != default)
			{
				NativeLib.mInstance = instance;
			}

			NativeLib.LoadFunction("vkCreateInstance",  out vkCreateInstance_ptr);
			NativeLib.LoadFunction("vkDestroyInstance",  out vkDestroyInstance_ptr);
			NativeLib.LoadFunction("vkEnumeratePhysicalDevices",  out vkEnumeratePhysicalDevices_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceFeatures",  out vkGetPhysicalDeviceFeatures_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceFormatProperties",  out vkGetPhysicalDeviceFormatProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceImageFormatProperties",  out vkGetPhysicalDeviceImageFormatProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceProperties",  out vkGetPhysicalDeviceProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceQueueFamilyProperties",  out vkGetPhysicalDeviceQueueFamilyProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceMemoryProperties",  out vkGetPhysicalDeviceMemoryProperties_ptr);
			NativeLib.LoadFunction("vkGetInstanceProcAddr",  out vkGetInstanceProcAddr_ptr);
			NativeLib.LoadFunction("vkGetDeviceProcAddr",  out vkGetDeviceProcAddr_ptr);
			NativeLib.LoadFunction("vkCreateDevice",  out vkCreateDevice_ptr);
			NativeLib.LoadFunction("vkDestroyDevice",  out vkDestroyDevice_ptr);
			NativeLib.LoadFunction("vkEnumerateInstanceExtensionProperties",  out vkEnumerateInstanceExtensionProperties_ptr);
			NativeLib.LoadFunction("vkEnumerateDeviceExtensionProperties",  out vkEnumerateDeviceExtensionProperties_ptr);
			NativeLib.LoadFunction("vkEnumerateInstanceLayerProperties",  out vkEnumerateInstanceLayerProperties_ptr);
			NativeLib.LoadFunction("vkEnumerateDeviceLayerProperties",  out vkEnumerateDeviceLayerProperties_ptr);
			NativeLib.LoadFunction("vkGetDeviceQueue",  out vkGetDeviceQueue_ptr);
			NativeLib.LoadFunction("vkQueueSubmit",  out vkQueueSubmit_ptr);
			NativeLib.LoadFunction("vkQueueWaitIdle",  out vkQueueWaitIdle_ptr);
			NativeLib.LoadFunction("vkDeviceWaitIdle",  out vkDeviceWaitIdle_ptr);
			NativeLib.LoadFunction("vkAllocateMemory",  out vkAllocateMemory_ptr);
			NativeLib.LoadFunction("vkFreeMemory",  out vkFreeMemory_ptr);
			NativeLib.LoadFunction("vkMapMemory",  out vkMapMemory_ptr);
			NativeLib.LoadFunction("vkUnmapMemory",  out vkUnmapMemory_ptr);
			NativeLib.LoadFunction("vkFlushMappedMemoryRanges",  out vkFlushMappedMemoryRanges_ptr);
			NativeLib.LoadFunction("vkInvalidateMappedMemoryRanges",  out vkInvalidateMappedMemoryRanges_ptr);
			NativeLib.LoadFunction("vkGetDeviceMemoryCommitment",  out vkGetDeviceMemoryCommitment_ptr);
			NativeLib.LoadFunction("vkBindBufferMemory",  out vkBindBufferMemory_ptr);
			NativeLib.LoadFunction("vkBindImageMemory",  out vkBindImageMemory_ptr);
			NativeLib.LoadFunction("vkGetBufferMemoryRequirements",  out vkGetBufferMemoryRequirements_ptr);
			NativeLib.LoadFunction("vkGetImageMemoryRequirements",  out vkGetImageMemoryRequirements_ptr);
			NativeLib.LoadFunction("vkGetImageSparseMemoryRequirements",  out vkGetImageSparseMemoryRequirements_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSparseImageFormatProperties",  out vkGetPhysicalDeviceSparseImageFormatProperties_ptr);
			NativeLib.LoadFunction("vkQueueBindSparse",  out vkQueueBindSparse_ptr);
			NativeLib.LoadFunction("vkCreateFence",  out vkCreateFence_ptr);
			NativeLib.LoadFunction("vkDestroyFence",  out vkDestroyFence_ptr);
			NativeLib.LoadFunction("vkResetFences",  out vkResetFences_ptr);
			NativeLib.LoadFunction("vkGetFenceStatus",  out vkGetFenceStatus_ptr);
			NativeLib.LoadFunction("vkWaitForFences",  out vkWaitForFences_ptr);
			NativeLib.LoadFunction("vkCreateSemaphore",  out vkCreateSemaphore_ptr);
			NativeLib.LoadFunction("vkDestroySemaphore",  out vkDestroySemaphore_ptr);
			NativeLib.LoadFunction("vkCreateEvent",  out vkCreateEvent_ptr);
			NativeLib.LoadFunction("vkDestroyEvent",  out vkDestroyEvent_ptr);
			NativeLib.LoadFunction("vkGetEventStatus",  out vkGetEventStatus_ptr);
			NativeLib.LoadFunction("vkSetEvent",  out vkSetEvent_ptr);
			NativeLib.LoadFunction("vkResetEvent",  out vkResetEvent_ptr);
			NativeLib.LoadFunction("vkCreateQueryPool",  out vkCreateQueryPool_ptr);
			NativeLib.LoadFunction("vkDestroyQueryPool",  out vkDestroyQueryPool_ptr);
			NativeLib.LoadFunction("vkGetQueryPoolResults",  out vkGetQueryPoolResults_ptr);
			NativeLib.LoadFunction("vkCreateBuffer",  out vkCreateBuffer_ptr);
			NativeLib.LoadFunction("vkDestroyBuffer",  out vkDestroyBuffer_ptr);
			NativeLib.LoadFunction("vkCreateBufferView",  out vkCreateBufferView_ptr);
			NativeLib.LoadFunction("vkDestroyBufferView",  out vkDestroyBufferView_ptr);
			NativeLib.LoadFunction("vkCreateImage",  out vkCreateImage_ptr);
			NativeLib.LoadFunction("vkDestroyImage",  out vkDestroyImage_ptr);
			NativeLib.LoadFunction("vkGetImageSubresourceLayout",  out vkGetImageSubresourceLayout_ptr);
			NativeLib.LoadFunction("vkCreateImageView",  out vkCreateImageView_ptr);
			NativeLib.LoadFunction("vkDestroyImageView",  out vkDestroyImageView_ptr);
			NativeLib.LoadFunction("vkCreateShaderModule",  out vkCreateShaderModule_ptr);
			NativeLib.LoadFunction("vkDestroyShaderModule",  out vkDestroyShaderModule_ptr);
			NativeLib.LoadFunction("vkCreatePipelineCache",  out vkCreatePipelineCache_ptr);
			NativeLib.LoadFunction("vkDestroyPipelineCache",  out vkDestroyPipelineCache_ptr);
			NativeLib.LoadFunction("vkGetPipelineCacheData",  out vkGetPipelineCacheData_ptr);
			NativeLib.LoadFunction("vkMergePipelineCaches",  out vkMergePipelineCaches_ptr);
			NativeLib.LoadFunction("vkCreateGraphicsPipelines",  out vkCreateGraphicsPipelines_ptr);
			NativeLib.LoadFunction("vkCreateComputePipelines",  out vkCreateComputePipelines_ptr);
			NativeLib.LoadFunction("vkDestroyPipeline",  out vkDestroyPipeline_ptr);
			NativeLib.LoadFunction("vkCreatePipelineLayout",  out vkCreatePipelineLayout_ptr);
			NativeLib.LoadFunction("vkDestroyPipelineLayout",  out vkDestroyPipelineLayout_ptr);
			NativeLib.LoadFunction("vkCreateSampler",  out vkCreateSampler_ptr);
			NativeLib.LoadFunction("vkDestroySampler",  out vkDestroySampler_ptr);
			NativeLib.LoadFunction("vkCreateDescriptorSetLayout",  out vkCreateDescriptorSetLayout_ptr);
			NativeLib.LoadFunction("vkDestroyDescriptorSetLayout",  out vkDestroyDescriptorSetLayout_ptr);
			NativeLib.LoadFunction("vkCreateDescriptorPool",  out vkCreateDescriptorPool_ptr);
			NativeLib.LoadFunction("vkDestroyDescriptorPool",  out vkDestroyDescriptorPool_ptr);
			NativeLib.LoadFunction("vkResetDescriptorPool",  out vkResetDescriptorPool_ptr);
			NativeLib.LoadFunction("vkAllocateDescriptorSets",  out vkAllocateDescriptorSets_ptr);
			NativeLib.LoadFunction("vkFreeDescriptorSets",  out vkFreeDescriptorSets_ptr);
			NativeLib.LoadFunction("vkUpdateDescriptorSets",  out vkUpdateDescriptorSets_ptr);
			NativeLib.LoadFunction("vkCreateFramebuffer",  out vkCreateFramebuffer_ptr);
			NativeLib.LoadFunction("vkDestroyFramebuffer",  out vkDestroyFramebuffer_ptr);
			NativeLib.LoadFunction("vkCreateRenderPass",  out vkCreateRenderPass_ptr);
			NativeLib.LoadFunction("vkDestroyRenderPass",  out vkDestroyRenderPass_ptr);
			NativeLib.LoadFunction("vkGetRenderAreaGranularity",  out vkGetRenderAreaGranularity_ptr);
			NativeLib.LoadFunction("vkCreateCommandPool",  out vkCreateCommandPool_ptr);
			NativeLib.LoadFunction("vkDestroyCommandPool",  out vkDestroyCommandPool_ptr);
			NativeLib.LoadFunction("vkResetCommandPool",  out vkResetCommandPool_ptr);
			NativeLib.LoadFunction("vkAllocateCommandBuffers",  out vkAllocateCommandBuffers_ptr);
			NativeLib.LoadFunction("vkFreeCommandBuffers",  out vkFreeCommandBuffers_ptr);
			NativeLib.LoadFunction("vkBeginCommandBuffer",  out vkBeginCommandBuffer_ptr);
			NativeLib.LoadFunction("vkEndCommandBuffer",  out vkEndCommandBuffer_ptr);
			NativeLib.LoadFunction("vkResetCommandBuffer",  out vkResetCommandBuffer_ptr);
			NativeLib.LoadFunction("vkCmdBindPipeline",  out vkCmdBindPipeline_ptr);
			NativeLib.LoadFunction("vkCmdSetViewport",  out vkCmdSetViewport_ptr);
			NativeLib.LoadFunction("vkCmdSetScissor",  out vkCmdSetScissor_ptr);
			NativeLib.LoadFunction("vkCmdSetLineWidth",  out vkCmdSetLineWidth_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthBias",  out vkCmdSetDepthBias_ptr);
			NativeLib.LoadFunction("vkCmdSetBlendConstants",  out vkCmdSetBlendConstants_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthBounds",  out vkCmdSetDepthBounds_ptr);
			NativeLib.LoadFunction("vkCmdSetStencilCompareMask",  out vkCmdSetStencilCompareMask_ptr);
			NativeLib.LoadFunction("vkCmdSetStencilWriteMask",  out vkCmdSetStencilWriteMask_ptr);
			NativeLib.LoadFunction("vkCmdSetStencilReference",  out vkCmdSetStencilReference_ptr);
			NativeLib.LoadFunction("vkCmdBindDescriptorSets",  out vkCmdBindDescriptorSets_ptr);
			NativeLib.LoadFunction("vkCmdBindIndexBuffer",  out vkCmdBindIndexBuffer_ptr);
			NativeLib.LoadFunction("vkCmdBindVertexBuffers",  out vkCmdBindVertexBuffers_ptr);
			NativeLib.LoadFunction("vkCmdDraw",  out vkCmdDraw_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndexed",  out vkCmdDrawIndexed_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndirect",  out vkCmdDrawIndirect_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndexedIndirect",  out vkCmdDrawIndexedIndirect_ptr);
			NativeLib.LoadFunction("vkCmdDispatch",  out vkCmdDispatch_ptr);
			NativeLib.LoadFunction("vkCmdDispatchIndirect",  out vkCmdDispatchIndirect_ptr);
			NativeLib.LoadFunction("vkCmdCopyBuffer",  out vkCmdCopyBuffer_ptr);
			NativeLib.LoadFunction("vkCmdCopyImage",  out vkCmdCopyImage_ptr);
			NativeLib.LoadFunction("vkCmdBlitImage",  out vkCmdBlitImage_ptr);
			NativeLib.LoadFunction("vkCmdCopyBufferToImage",  out vkCmdCopyBufferToImage_ptr);
			NativeLib.LoadFunction("vkCmdCopyImageToBuffer",  out vkCmdCopyImageToBuffer_ptr);
			NativeLib.LoadFunction("vkCmdUpdateBuffer",  out vkCmdUpdateBuffer_ptr);
			NativeLib.LoadFunction("vkCmdFillBuffer",  out vkCmdFillBuffer_ptr);
			NativeLib.LoadFunction("vkCmdClearColorImage",  out vkCmdClearColorImage_ptr);
			NativeLib.LoadFunction("vkCmdClearDepthStencilImage",  out vkCmdClearDepthStencilImage_ptr);
			NativeLib.LoadFunction("vkCmdClearAttachments",  out vkCmdClearAttachments_ptr);
			NativeLib.LoadFunction("vkCmdResolveImage",  out vkCmdResolveImage_ptr);
			NativeLib.LoadFunction("vkCmdSetEvent",  out vkCmdSetEvent_ptr);
			NativeLib.LoadFunction("vkCmdResetEvent",  out vkCmdResetEvent_ptr);
			NativeLib.LoadFunction("vkCmdWaitEvents",  out vkCmdWaitEvents_ptr);
			NativeLib.LoadFunction("vkCmdPipelineBarrier",  out vkCmdPipelineBarrier_ptr);
			NativeLib.LoadFunction("vkCmdBeginQuery",  out vkCmdBeginQuery_ptr);
			NativeLib.LoadFunction("vkCmdEndQuery",  out vkCmdEndQuery_ptr);
			NativeLib.LoadFunction("vkCmdResetQueryPool",  out vkCmdResetQueryPool_ptr);
			NativeLib.LoadFunction("vkCmdWriteTimestamp",  out vkCmdWriteTimestamp_ptr);
			NativeLib.LoadFunction("vkCmdCopyQueryPoolResults",  out vkCmdCopyQueryPoolResults_ptr);
			NativeLib.LoadFunction("vkCmdPushConstants",  out vkCmdPushConstants_ptr);
			NativeLib.LoadFunction("vkCmdBeginRenderPass",  out vkCmdBeginRenderPass_ptr);
			NativeLib.LoadFunction("vkCmdNextSubpass",  out vkCmdNextSubpass_ptr);
			NativeLib.LoadFunction("vkCmdEndRenderPass",  out vkCmdEndRenderPass_ptr);
			NativeLib.LoadFunction("vkCmdExecuteCommands",  out vkCmdExecuteCommands_ptr);
			NativeLib.LoadFunction("vkEnumerateInstanceVersion",  out vkEnumerateInstanceVersion_ptr);
			NativeLib.LoadFunction("vkBindBufferMemory2",  out vkBindBufferMemory2_ptr);
			NativeLib.LoadFunction("vkBindImageMemory2",  out vkBindImageMemory2_ptr);
			NativeLib.LoadFunction("vkGetDeviceGroupPeerMemoryFeatures",  out vkGetDeviceGroupPeerMemoryFeatures_ptr);
			NativeLib.LoadFunction("vkCmdSetDeviceMask",  out vkCmdSetDeviceMask_ptr);
			NativeLib.LoadFunction("vkCmdDispatchBase",  out vkCmdDispatchBase_ptr);
			NativeLib.LoadFunction("vkEnumeratePhysicalDeviceGroups",  out vkEnumeratePhysicalDeviceGroups_ptr);
			NativeLib.LoadFunction("vkGetImageMemoryRequirements2",  out vkGetImageMemoryRequirements2_ptr);
			NativeLib.LoadFunction("vkGetBufferMemoryRequirements2",  out vkGetBufferMemoryRequirements2_ptr);
			NativeLib.LoadFunction("vkGetImageSparseMemoryRequirements2",  out vkGetImageSparseMemoryRequirements2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceFeatures2",  out vkGetPhysicalDeviceFeatures2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceProperties2",  out vkGetPhysicalDeviceProperties2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceFormatProperties2",  out vkGetPhysicalDeviceFormatProperties2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceImageFormatProperties2",  out vkGetPhysicalDeviceImageFormatProperties2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceQueueFamilyProperties2",  out vkGetPhysicalDeviceQueueFamilyProperties2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceMemoryProperties2",  out vkGetPhysicalDeviceMemoryProperties2_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSparseImageFormatProperties2",  out vkGetPhysicalDeviceSparseImageFormatProperties2_ptr);
			NativeLib.LoadFunction("vkTrimCommandPool",  out vkTrimCommandPool_ptr);
			NativeLib.LoadFunction("vkGetDeviceQueue2",  out vkGetDeviceQueue2_ptr);
			NativeLib.LoadFunction("vkCreateSamplerYcbcrConversion",  out vkCreateSamplerYcbcrConversion_ptr);
			NativeLib.LoadFunction("vkDestroySamplerYcbcrConversion",  out vkDestroySamplerYcbcrConversion_ptr);
			NativeLib.LoadFunction("vkCreateDescriptorUpdateTemplate",  out vkCreateDescriptorUpdateTemplate_ptr);
			NativeLib.LoadFunction("vkDestroyDescriptorUpdateTemplate",  out vkDestroyDescriptorUpdateTemplate_ptr);
			NativeLib.LoadFunction("vkUpdateDescriptorSetWithTemplate",  out vkUpdateDescriptorSetWithTemplate_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceExternalBufferProperties",  out vkGetPhysicalDeviceExternalBufferProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceExternalFenceProperties",  out vkGetPhysicalDeviceExternalFenceProperties_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceExternalSemaphoreProperties",  out vkGetPhysicalDeviceExternalSemaphoreProperties_ptr);
			NativeLib.LoadFunction("vkGetDescriptorSetLayoutSupport",  out vkGetDescriptorSetLayoutSupport_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndirectCount",  out vkCmdDrawIndirectCount_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndexedIndirectCount",  out vkCmdDrawIndexedIndirectCount_ptr);
			NativeLib.LoadFunction("vkCreateRenderPass2",  out vkCreateRenderPass2_ptr);
			NativeLib.LoadFunction("vkCmdBeginRenderPass2",  out vkCmdBeginRenderPass2_ptr);
			NativeLib.LoadFunction("vkCmdNextSubpass2",  out vkCmdNextSubpass2_ptr);
			NativeLib.LoadFunction("vkCmdEndRenderPass2",  out vkCmdEndRenderPass2_ptr);
			NativeLib.LoadFunction("vkResetQueryPool",  out vkResetQueryPool_ptr);
			NativeLib.LoadFunction("vkGetSemaphoreCounterValue",  out vkGetSemaphoreCounterValue_ptr);
			NativeLib.LoadFunction("vkWaitSemaphores",  out vkWaitSemaphores_ptr);
			NativeLib.LoadFunction("vkSignalSemaphore",  out vkSignalSemaphore_ptr);
			NativeLib.LoadFunction("vkGetBufferDeviceAddress",  out vkGetBufferDeviceAddress_ptr);
			NativeLib.LoadFunction("vkGetBufferOpaqueCaptureAddress",  out vkGetBufferOpaqueCaptureAddress_ptr);
			NativeLib.LoadFunction("vkGetDeviceMemoryOpaqueCaptureAddress",  out vkGetDeviceMemoryOpaqueCaptureAddress_ptr);
			NativeLib.LoadFunction("vkDestroySurfaceKHR",  out vkDestroySurfaceKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceSupportKHR",  out vkGetPhysicalDeviceSurfaceSupportKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceCapabilitiesKHR",  out vkGetPhysicalDeviceSurfaceCapabilitiesKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceFormatsKHR",  out vkGetPhysicalDeviceSurfaceFormatsKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfacePresentModesKHR",  out vkGetPhysicalDeviceSurfacePresentModesKHR_ptr);
			NativeLib.LoadFunction("vkCreateSwapchainKHR",  out vkCreateSwapchainKHR_ptr);
			NativeLib.LoadFunction("vkDestroySwapchainKHR",  out vkDestroySwapchainKHR_ptr);
			NativeLib.LoadFunction("vkGetSwapchainImagesKHR",  out vkGetSwapchainImagesKHR_ptr);
			NativeLib.LoadFunction("vkAcquireNextImageKHR",  out vkAcquireNextImageKHR_ptr);
			NativeLib.LoadFunction("vkQueuePresentKHR",  out vkQueuePresentKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceDisplayPropertiesKHR",  out vkGetPhysicalDeviceDisplayPropertiesKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceDisplayPlanePropertiesKHR",  out vkGetPhysicalDeviceDisplayPlanePropertiesKHR_ptr);
			NativeLib.LoadFunction("vkGetDisplayPlaneSupportedDisplaysKHR",  out vkGetDisplayPlaneSupportedDisplaysKHR_ptr);
			NativeLib.LoadFunction("vkGetDisplayModePropertiesKHR",  out vkGetDisplayModePropertiesKHR_ptr);
			NativeLib.LoadFunction("vkCreateDisplayModeKHR",  out vkCreateDisplayModeKHR_ptr);
			NativeLib.LoadFunction("vkGetDisplayPlaneCapabilitiesKHR",  out vkGetDisplayPlaneCapabilitiesKHR_ptr);
			NativeLib.LoadFunction("vkCreateDisplayPlaneSurfaceKHR",  out vkCreateDisplayPlaneSurfaceKHR_ptr);
			NativeLib.LoadFunction("vkCreateSharedSwapchainsKHR",  out vkCreateSharedSwapchainsKHR_ptr);
			NativeLib.LoadFunction("vkCreateXlibSurfaceKHR",  out vkCreateXlibSurfaceKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceXlibPresentationSupportKHR",  out vkGetPhysicalDeviceXlibPresentationSupportKHR_ptr);
			NativeLib.LoadFunction("vkCreateXcbSurfaceKHR",  out vkCreateXcbSurfaceKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceXcbPresentationSupportKHR",  out vkGetPhysicalDeviceXcbPresentationSupportKHR_ptr);
			NativeLib.LoadFunction("vkCreateWaylandSurfaceKHR",  out vkCreateWaylandSurfaceKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceWaylandPresentationSupportKHR",  out vkGetPhysicalDeviceWaylandPresentationSupportKHR_ptr);
			NativeLib.LoadFunction("vkCreateAndroidSurfaceKHR",  out vkCreateAndroidSurfaceKHR_ptr);
			NativeLib.LoadFunction("vkCreateWin32SurfaceKHR",  out vkCreateWin32SurfaceKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceWin32PresentationSupportKHR",  out vkGetPhysicalDeviceWin32PresentationSupportKHR_ptr);
			NativeLib.LoadFunction("vkCreateDebugReportCallbackEXT",  out vkCreateDebugReportCallbackEXT_ptr);
			NativeLib.LoadFunction("vkDestroyDebugReportCallbackEXT",  out vkDestroyDebugReportCallbackEXT_ptr);
			NativeLib.LoadFunction("vkDebugReportMessageEXT",  out vkDebugReportMessageEXT_ptr);
			NativeLib.LoadFunction("vkDebugMarkerSetObjectTagEXT",  out vkDebugMarkerSetObjectTagEXT_ptr);
			NativeLib.LoadFunction("vkDebugMarkerSetObjectNameEXT",  out vkDebugMarkerSetObjectNameEXT_ptr);
			NativeLib.LoadFunction("vkCmdDebugMarkerBeginEXT",  out vkCmdDebugMarkerBeginEXT_ptr);
			NativeLib.LoadFunction("vkCmdDebugMarkerEndEXT",  out vkCmdDebugMarkerEndEXT_ptr);
			NativeLib.LoadFunction("vkCmdDebugMarkerInsertEXT",  out vkCmdDebugMarkerInsertEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceVideoCapabilitiesKHR",  out vkGetPhysicalDeviceVideoCapabilitiesKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceVideoFormatPropertiesKHR",  out vkGetPhysicalDeviceVideoFormatPropertiesKHR_ptr);
			NativeLib.LoadFunction("vkCreateVideoSessionKHR",  out vkCreateVideoSessionKHR_ptr);
			NativeLib.LoadFunction("vkDestroyVideoSessionKHR",  out vkDestroyVideoSessionKHR_ptr);
			NativeLib.LoadFunction("vkGetVideoSessionMemoryRequirementsKHR",  out vkGetVideoSessionMemoryRequirementsKHR_ptr);
			NativeLib.LoadFunction("vkBindVideoSessionMemoryKHR",  out vkBindVideoSessionMemoryKHR_ptr);
			NativeLib.LoadFunction("vkCreateVideoSessionParametersKHR",  out vkCreateVideoSessionParametersKHR_ptr);
			NativeLib.LoadFunction("vkUpdateVideoSessionParametersKHR",  out vkUpdateVideoSessionParametersKHR_ptr);
			NativeLib.LoadFunction("vkDestroyVideoSessionParametersKHR",  out vkDestroyVideoSessionParametersKHR_ptr);
			NativeLib.LoadFunction("vkCmdBeginVideoCodingKHR",  out vkCmdBeginVideoCodingKHR_ptr);
			NativeLib.LoadFunction("vkCmdEndVideoCodingKHR",  out vkCmdEndVideoCodingKHR_ptr);
			NativeLib.LoadFunction("vkCmdControlVideoCodingKHR",  out vkCmdControlVideoCodingKHR_ptr);
			NativeLib.LoadFunction("vkCmdDecodeVideoKHR",  out vkCmdDecodeVideoKHR_ptr);
			NativeLib.LoadFunction("vkCmdBindTransformFeedbackBuffersEXT",  out vkCmdBindTransformFeedbackBuffersEXT_ptr);
			NativeLib.LoadFunction("vkCmdBeginTransformFeedbackEXT",  out vkCmdBeginTransformFeedbackEXT_ptr);
			NativeLib.LoadFunction("vkCmdEndTransformFeedbackEXT",  out vkCmdEndTransformFeedbackEXT_ptr);
			NativeLib.LoadFunction("vkCmdBeginQueryIndexedEXT",  out vkCmdBeginQueryIndexedEXT_ptr);
			NativeLib.LoadFunction("vkCmdEndQueryIndexedEXT",  out vkCmdEndQueryIndexedEXT_ptr);
			NativeLib.LoadFunction("vkCmdDrawIndirectByteCountEXT",  out vkCmdDrawIndirectByteCountEXT_ptr);
			NativeLib.LoadFunction("vkCreateCuModuleNVX",  out vkCreateCuModuleNVX_ptr);
			NativeLib.LoadFunction("vkCreateCuFunctionNVX",  out vkCreateCuFunctionNVX_ptr);
			NativeLib.LoadFunction("vkDestroyCuModuleNVX",  out vkDestroyCuModuleNVX_ptr);
			NativeLib.LoadFunction("vkDestroyCuFunctionNVX",  out vkDestroyCuFunctionNVX_ptr);
			NativeLib.LoadFunction("vkCmdCuLaunchKernelNVX",  out vkCmdCuLaunchKernelNVX_ptr);
			NativeLib.LoadFunction("vkGetImageViewHandleNVX",  out vkGetImageViewHandleNVX_ptr);
			NativeLib.LoadFunction("vkGetImageViewAddressNVX",  out vkGetImageViewAddressNVX_ptr);
			NativeLib.LoadFunction("vkGetShaderInfoAMD",  out vkGetShaderInfoAMD_ptr);
			NativeLib.LoadFunction("vkCreateStreamDescriptorSurfaceGGP",  out vkCreateStreamDescriptorSurfaceGGP_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceExternalImageFormatPropertiesNV",  out vkGetPhysicalDeviceExternalImageFormatPropertiesNV_ptr);
			NativeLib.LoadFunction("vkGetMemoryWin32HandleNV",  out vkGetMemoryWin32HandleNV_ptr);
			NativeLib.LoadFunction("vkCreateViSurfaceNN",  out vkCreateViSurfaceNN_ptr);
			NativeLib.LoadFunction("vkGetMemoryWin32HandleKHR",  out vkGetMemoryWin32HandleKHR_ptr);
			NativeLib.LoadFunction("vkGetMemoryWin32HandlePropertiesKHR",  out vkGetMemoryWin32HandlePropertiesKHR_ptr);
			NativeLib.LoadFunction("vkGetMemoryFdKHR",  out vkGetMemoryFdKHR_ptr);
			NativeLib.LoadFunction("vkGetMemoryFdPropertiesKHR",  out vkGetMemoryFdPropertiesKHR_ptr);
			NativeLib.LoadFunction("vkImportSemaphoreWin32HandleKHR",  out vkImportSemaphoreWin32HandleKHR_ptr);
			NativeLib.LoadFunction("vkGetSemaphoreWin32HandleKHR",  out vkGetSemaphoreWin32HandleKHR_ptr);
			NativeLib.LoadFunction("vkImportSemaphoreFdKHR",  out vkImportSemaphoreFdKHR_ptr);
			NativeLib.LoadFunction("vkGetSemaphoreFdKHR",  out vkGetSemaphoreFdKHR_ptr);
			NativeLib.LoadFunction("vkCmdPushDescriptorSetKHR",  out vkCmdPushDescriptorSetKHR_ptr);
			NativeLib.LoadFunction("vkCmdBeginConditionalRenderingEXT",  out vkCmdBeginConditionalRenderingEXT_ptr);
			NativeLib.LoadFunction("vkCmdEndConditionalRenderingEXT",  out vkCmdEndConditionalRenderingEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetViewportWScalingNV",  out vkCmdSetViewportWScalingNV_ptr);
			NativeLib.LoadFunction("vkReleaseDisplayEXT",  out vkReleaseDisplayEXT_ptr);
			NativeLib.LoadFunction("vkAcquireXlibDisplayEXT",  out vkAcquireXlibDisplayEXT_ptr);
			NativeLib.LoadFunction("vkGetRandROutputDisplayEXT",  out vkGetRandROutputDisplayEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceCapabilities2EXT",  out vkGetPhysicalDeviceSurfaceCapabilities2EXT_ptr);
			NativeLib.LoadFunction("vkDisplayPowerControlEXT",  out vkDisplayPowerControlEXT_ptr);
			NativeLib.LoadFunction("vkRegisterDeviceEventEXT",  out vkRegisterDeviceEventEXT_ptr);
			NativeLib.LoadFunction("vkRegisterDisplayEventEXT",  out vkRegisterDisplayEventEXT_ptr);
			NativeLib.LoadFunction("vkGetSwapchainCounterEXT",  out vkGetSwapchainCounterEXT_ptr);
			NativeLib.LoadFunction("vkGetRefreshCycleDurationGOOGLE",  out vkGetRefreshCycleDurationGOOGLE_ptr);
			NativeLib.LoadFunction("vkGetPastPresentationTimingGOOGLE",  out vkGetPastPresentationTimingGOOGLE_ptr);
			NativeLib.LoadFunction("vkCmdSetDiscardRectangleEXT",  out vkCmdSetDiscardRectangleEXT_ptr);
			NativeLib.LoadFunction("vkSetHdrMetadataEXT",  out vkSetHdrMetadataEXT_ptr);
			NativeLib.LoadFunction("vkGetSwapchainStatusKHR",  out vkGetSwapchainStatusKHR_ptr);
			NativeLib.LoadFunction("vkImportFenceWin32HandleKHR",  out vkImportFenceWin32HandleKHR_ptr);
			NativeLib.LoadFunction("vkGetFenceWin32HandleKHR",  out vkGetFenceWin32HandleKHR_ptr);
			NativeLib.LoadFunction("vkImportFenceFdKHR",  out vkImportFenceFdKHR_ptr);
			NativeLib.LoadFunction("vkGetFenceFdKHR",  out vkGetFenceFdKHR_ptr);
			NativeLib.LoadFunction("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR",  out vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR",  out vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_ptr);
			NativeLib.LoadFunction("vkAcquireProfilingLockKHR",  out vkAcquireProfilingLockKHR_ptr);
			NativeLib.LoadFunction("vkReleaseProfilingLockKHR",  out vkReleaseProfilingLockKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceCapabilities2KHR",  out vkGetPhysicalDeviceSurfaceCapabilities2KHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfaceFormats2KHR",  out vkGetPhysicalDeviceSurfaceFormats2KHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceDisplayProperties2KHR",  out vkGetPhysicalDeviceDisplayProperties2KHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceDisplayPlaneProperties2KHR",  out vkGetPhysicalDeviceDisplayPlaneProperties2KHR_ptr);
			NativeLib.LoadFunction("vkGetDisplayModeProperties2KHR",  out vkGetDisplayModeProperties2KHR_ptr);
			NativeLib.LoadFunction("vkGetDisplayPlaneCapabilities2KHR",  out vkGetDisplayPlaneCapabilities2KHR_ptr);
			NativeLib.LoadFunction("vkCreateIOSSurfaceMVK",  out vkCreateIOSSurfaceMVK_ptr);
			NativeLib.LoadFunction("vkCreateMacOSSurfaceMVK",  out vkCreateMacOSSurfaceMVK_ptr);
			NativeLib.LoadFunction("vkSetDebugUtilsObjectNameEXT",  out vkSetDebugUtilsObjectNameEXT_ptr);
			NativeLib.LoadFunction("vkSetDebugUtilsObjectTagEXT",  out vkSetDebugUtilsObjectTagEXT_ptr);
			NativeLib.LoadFunction("vkQueueBeginDebugUtilsLabelEXT",  out vkQueueBeginDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkQueueEndDebugUtilsLabelEXT",  out vkQueueEndDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkQueueInsertDebugUtilsLabelEXT",  out vkQueueInsertDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkCmdBeginDebugUtilsLabelEXT",  out vkCmdBeginDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkCmdEndDebugUtilsLabelEXT",  out vkCmdEndDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkCmdInsertDebugUtilsLabelEXT",  out vkCmdInsertDebugUtilsLabelEXT_ptr);
			NativeLib.LoadFunction("vkCreateDebugUtilsMessengerEXT",  out vkCreateDebugUtilsMessengerEXT_ptr);
			NativeLib.LoadFunction("vkDestroyDebugUtilsMessengerEXT",  out vkDestroyDebugUtilsMessengerEXT_ptr);
			NativeLib.LoadFunction("vkSubmitDebugUtilsMessageEXT",  out vkSubmitDebugUtilsMessageEXT_ptr);
			NativeLib.LoadFunction("vkGetAndroidHardwareBufferPropertiesANDROID",  out vkGetAndroidHardwareBufferPropertiesANDROID_ptr);
			NativeLib.LoadFunction("vkGetMemoryAndroidHardwareBufferANDROID",  out vkGetMemoryAndroidHardwareBufferANDROID_ptr);
			NativeLib.LoadFunction("vkCmdSetSampleLocationsEXT",  out vkCmdSetSampleLocationsEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceMultisamplePropertiesEXT",  out vkGetPhysicalDeviceMultisamplePropertiesEXT_ptr);
			NativeLib.LoadFunction("vkCreateAccelerationStructureKHR",  out vkCreateAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkDestroyAccelerationStructureKHR",  out vkDestroyAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkCmdBuildAccelerationStructuresKHR",  out vkCmdBuildAccelerationStructuresKHR_ptr);
			NativeLib.LoadFunction("vkCmdBuildAccelerationStructuresIndirectKHR",  out vkCmdBuildAccelerationStructuresIndirectKHR_ptr);
			NativeLib.LoadFunction("vkBuildAccelerationStructuresKHR",  out vkBuildAccelerationStructuresKHR_ptr);
			NativeLib.LoadFunction("vkCopyAccelerationStructureKHR",  out vkCopyAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkCopyAccelerationStructureToMemoryKHR",  out vkCopyAccelerationStructureToMemoryKHR_ptr);
			NativeLib.LoadFunction("vkCopyMemoryToAccelerationStructureKHR",  out vkCopyMemoryToAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkWriteAccelerationStructuresPropertiesKHR",  out vkWriteAccelerationStructuresPropertiesKHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyAccelerationStructureKHR",  out vkCmdCopyAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyAccelerationStructureToMemoryKHR",  out vkCmdCopyAccelerationStructureToMemoryKHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyMemoryToAccelerationStructureKHR",  out vkCmdCopyMemoryToAccelerationStructureKHR_ptr);
			NativeLib.LoadFunction("vkGetAccelerationStructureDeviceAddressKHR",  out vkGetAccelerationStructureDeviceAddressKHR_ptr);
			NativeLib.LoadFunction("vkCmdWriteAccelerationStructuresPropertiesKHR",  out vkCmdWriteAccelerationStructuresPropertiesKHR_ptr);
			NativeLib.LoadFunction("vkGetDeviceAccelerationStructureCompatibilityKHR",  out vkGetDeviceAccelerationStructureCompatibilityKHR_ptr);
			NativeLib.LoadFunction("vkGetAccelerationStructureBuildSizesKHR",  out vkGetAccelerationStructureBuildSizesKHR_ptr);
			NativeLib.LoadFunction("vkCmdTraceRaysKHR",  out vkCmdTraceRaysKHR_ptr);
			NativeLib.LoadFunction("vkCreateRayTracingPipelinesKHR",  out vkCreateRayTracingPipelinesKHR_ptr);
			NativeLib.LoadFunction("vkGetRayTracingShaderGroupHandlesKHR",  out vkGetRayTracingShaderGroupHandlesKHR_ptr);
			NativeLib.LoadFunction("vkGetRayTracingCaptureReplayShaderGroupHandlesKHR",  out vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_ptr);
			NativeLib.LoadFunction("vkCmdTraceRaysIndirectKHR",  out vkCmdTraceRaysIndirectKHR_ptr);
			NativeLib.LoadFunction("vkGetRayTracingShaderGroupStackSizeKHR",  out vkGetRayTracingShaderGroupStackSizeKHR_ptr);
			NativeLib.LoadFunction("vkCmdSetRayTracingPipelineStackSizeKHR",  out vkCmdSetRayTracingPipelineStackSizeKHR_ptr);
			NativeLib.LoadFunction("vkGetImageDrmFormatModifierPropertiesEXT",  out vkGetImageDrmFormatModifierPropertiesEXT_ptr);
			NativeLib.LoadFunction("vkCreateValidationCacheEXT",  out vkCreateValidationCacheEXT_ptr);
			NativeLib.LoadFunction("vkDestroyValidationCacheEXT",  out vkDestroyValidationCacheEXT_ptr);
			NativeLib.LoadFunction("vkMergeValidationCachesEXT",  out vkMergeValidationCachesEXT_ptr);
			NativeLib.LoadFunction("vkGetValidationCacheDataEXT",  out vkGetValidationCacheDataEXT_ptr);
			NativeLib.LoadFunction("vkCmdBindShadingRateImageNV",  out vkCmdBindShadingRateImageNV_ptr);
			NativeLib.LoadFunction("vkCmdSetViewportShadingRatePaletteNV",  out vkCmdSetViewportShadingRatePaletteNV_ptr);
			NativeLib.LoadFunction("vkCmdSetCoarseSampleOrderNV",  out vkCmdSetCoarseSampleOrderNV_ptr);
			NativeLib.LoadFunction("vkCreateAccelerationStructureNV",  out vkCreateAccelerationStructureNV_ptr);
			NativeLib.LoadFunction("vkDestroyAccelerationStructureNV",  out vkDestroyAccelerationStructureNV_ptr);
			NativeLib.LoadFunction("vkGetAccelerationStructureMemoryRequirementsNV",  out vkGetAccelerationStructureMemoryRequirementsNV_ptr);
			NativeLib.LoadFunction("vkBindAccelerationStructureMemoryNV",  out vkBindAccelerationStructureMemoryNV_ptr);
			NativeLib.LoadFunction("vkCmdBuildAccelerationStructureNV",  out vkCmdBuildAccelerationStructureNV_ptr);
			NativeLib.LoadFunction("vkCmdCopyAccelerationStructureNV",  out vkCmdCopyAccelerationStructureNV_ptr);
			NativeLib.LoadFunction("vkCmdTraceRaysNV",  out vkCmdTraceRaysNV_ptr);
			NativeLib.LoadFunction("vkCreateRayTracingPipelinesNV",  out vkCreateRayTracingPipelinesNV_ptr);
			NativeLib.LoadFunction("vkGetAccelerationStructureHandleNV",  out vkGetAccelerationStructureHandleNV_ptr);
			NativeLib.LoadFunction("vkCmdWriteAccelerationStructuresPropertiesNV",  out vkCmdWriteAccelerationStructuresPropertiesNV_ptr);
			NativeLib.LoadFunction("vkCompileDeferredNV",  out vkCompileDeferredNV_ptr);
			NativeLib.LoadFunction("vkGetMemoryHostPointerPropertiesEXT",  out vkGetMemoryHostPointerPropertiesEXT_ptr);
			NativeLib.LoadFunction("vkCmdWriteBufferMarkerAMD",  out vkCmdWriteBufferMarkerAMD_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceCalibrateableTimeDomainsEXT",  out vkGetPhysicalDeviceCalibrateableTimeDomainsEXT_ptr);
			NativeLib.LoadFunction("vkGetCalibratedTimestampsEXT",  out vkGetCalibratedTimestampsEXT_ptr);
			NativeLib.LoadFunction("vkCmdDrawMeshTasksNV",  out vkCmdDrawMeshTasksNV_ptr);
			NativeLib.LoadFunction("vkCmdDrawMeshTasksIndirectNV",  out vkCmdDrawMeshTasksIndirectNV_ptr);
			NativeLib.LoadFunction("vkCmdDrawMeshTasksIndirectCountNV",  out vkCmdDrawMeshTasksIndirectCountNV_ptr);
			NativeLib.LoadFunction("vkCmdSetExclusiveScissorNV",  out vkCmdSetExclusiveScissorNV_ptr);
			NativeLib.LoadFunction("vkCmdSetCheckpointNV",  out vkCmdSetCheckpointNV_ptr);
			NativeLib.LoadFunction("vkGetQueueCheckpointDataNV",  out vkGetQueueCheckpointDataNV_ptr);
			NativeLib.LoadFunction("vkInitializePerformanceApiINTEL",  out vkInitializePerformanceApiINTEL_ptr);
			NativeLib.LoadFunction("vkUninitializePerformanceApiINTEL",  out vkUninitializePerformanceApiINTEL_ptr);
			NativeLib.LoadFunction("vkCmdSetPerformanceMarkerINTEL",  out vkCmdSetPerformanceMarkerINTEL_ptr);
			NativeLib.LoadFunction("vkCmdSetPerformanceStreamMarkerINTEL",  out vkCmdSetPerformanceStreamMarkerINTEL_ptr);
			NativeLib.LoadFunction("vkCmdSetPerformanceOverrideINTEL",  out vkCmdSetPerformanceOverrideINTEL_ptr);
			NativeLib.LoadFunction("vkAcquirePerformanceConfigurationINTEL",  out vkAcquirePerformanceConfigurationINTEL_ptr);
			NativeLib.LoadFunction("vkReleasePerformanceConfigurationINTEL",  out vkReleasePerformanceConfigurationINTEL_ptr);
			NativeLib.LoadFunction("vkQueueSetPerformanceConfigurationINTEL",  out vkQueueSetPerformanceConfigurationINTEL_ptr);
			NativeLib.LoadFunction("vkGetPerformanceParameterINTEL",  out vkGetPerformanceParameterINTEL_ptr);
			NativeLib.LoadFunction("vkSetLocalDimmingAMD",  out vkSetLocalDimmingAMD_ptr);
			NativeLib.LoadFunction("vkCreateImagePipeSurfaceFUCHSIA",  out vkCreateImagePipeSurfaceFUCHSIA_ptr);
			NativeLib.LoadFunction("vkCreateMetalSurfaceEXT",  out vkCreateMetalSurfaceEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceFragmentShadingRatesKHR",  out vkGetPhysicalDeviceFragmentShadingRatesKHR_ptr);
			NativeLib.LoadFunction("vkCmdSetFragmentShadingRateKHR",  out vkCmdSetFragmentShadingRateKHR_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceToolPropertiesEXT",  out vkGetPhysicalDeviceToolPropertiesEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV",  out vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV",  out vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceSurfacePresentModes2EXT",  out vkGetPhysicalDeviceSurfacePresentModes2EXT_ptr);
			NativeLib.LoadFunction("vkAcquireFullScreenExclusiveModeEXT",  out vkAcquireFullScreenExclusiveModeEXT_ptr);
			NativeLib.LoadFunction("vkReleaseFullScreenExclusiveModeEXT",  out vkReleaseFullScreenExclusiveModeEXT_ptr);
			NativeLib.LoadFunction("vkCreateHeadlessSurfaceEXT",  out vkCreateHeadlessSurfaceEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetLineStippleEXT",  out vkCmdSetLineStippleEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetCullModeEXT",  out vkCmdSetCullModeEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetFrontFaceEXT",  out vkCmdSetFrontFaceEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetPrimitiveTopologyEXT",  out vkCmdSetPrimitiveTopologyEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetViewportWithCountEXT",  out vkCmdSetViewportWithCountEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetScissorWithCountEXT",  out vkCmdSetScissorWithCountEXT_ptr);
			NativeLib.LoadFunction("vkCmdBindVertexBuffers2EXT",  out vkCmdBindVertexBuffers2EXT_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthTestEnableEXT",  out vkCmdSetDepthTestEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthWriteEnableEXT",  out vkCmdSetDepthWriteEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthCompareOpEXT",  out vkCmdSetDepthCompareOpEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthBoundsTestEnableEXT",  out vkCmdSetDepthBoundsTestEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetStencilTestEnableEXT",  out vkCmdSetStencilTestEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetStencilOpEXT",  out vkCmdSetStencilOpEXT_ptr);
			NativeLib.LoadFunction("vkCreateDeferredOperationKHR",  out vkCreateDeferredOperationKHR_ptr);
			NativeLib.LoadFunction("vkDestroyDeferredOperationKHR",  out vkDestroyDeferredOperationKHR_ptr);
			NativeLib.LoadFunction("vkGetDeferredOperationMaxConcurrencyKHR",  out vkGetDeferredOperationMaxConcurrencyKHR_ptr);
			NativeLib.LoadFunction("vkGetDeferredOperationResultKHR",  out vkGetDeferredOperationResultKHR_ptr);
			NativeLib.LoadFunction("vkDeferredOperationJoinKHR",  out vkDeferredOperationJoinKHR_ptr);
			NativeLib.LoadFunction("vkGetPipelineExecutablePropertiesKHR",  out vkGetPipelineExecutablePropertiesKHR_ptr);
			NativeLib.LoadFunction("vkGetPipelineExecutableStatisticsKHR",  out vkGetPipelineExecutableStatisticsKHR_ptr);
			NativeLib.LoadFunction("vkGetPipelineExecutableInternalRepresentationsKHR",  out vkGetPipelineExecutableInternalRepresentationsKHR_ptr);
			NativeLib.LoadFunction("vkGetGeneratedCommandsMemoryRequirementsNV",  out vkGetGeneratedCommandsMemoryRequirementsNV_ptr);
			NativeLib.LoadFunction("vkCmdPreprocessGeneratedCommandsNV",  out vkCmdPreprocessGeneratedCommandsNV_ptr);
			NativeLib.LoadFunction("vkCmdExecuteGeneratedCommandsNV",  out vkCmdExecuteGeneratedCommandsNV_ptr);
			NativeLib.LoadFunction("vkCmdBindPipelineShaderGroupNV",  out vkCmdBindPipelineShaderGroupNV_ptr);
			NativeLib.LoadFunction("vkCreateIndirectCommandsLayoutNV",  out vkCreateIndirectCommandsLayoutNV_ptr);
			NativeLib.LoadFunction("vkDestroyIndirectCommandsLayoutNV",  out vkDestroyIndirectCommandsLayoutNV_ptr);
			NativeLib.LoadFunction("vkAcquireDrmDisplayEXT",  out vkAcquireDrmDisplayEXT_ptr);
			NativeLib.LoadFunction("vkGetDrmDisplayEXT",  out vkGetDrmDisplayEXT_ptr);
			NativeLib.LoadFunction("vkCreatePrivateDataSlotEXT",  out vkCreatePrivateDataSlotEXT_ptr);
			NativeLib.LoadFunction("vkDestroyPrivateDataSlotEXT",  out vkDestroyPrivateDataSlotEXT_ptr);
			NativeLib.LoadFunction("vkSetPrivateDataEXT",  out vkSetPrivateDataEXT_ptr);
			NativeLib.LoadFunction("vkGetPrivateDataEXT",  out vkGetPrivateDataEXT_ptr);
			NativeLib.LoadFunction("vkCmdEncodeVideoKHR",  out vkCmdEncodeVideoKHR_ptr);
			NativeLib.LoadFunction("vkCmdSetEvent2KHR",  out vkCmdSetEvent2KHR_ptr);
			NativeLib.LoadFunction("vkCmdResetEvent2KHR",  out vkCmdResetEvent2KHR_ptr);
			NativeLib.LoadFunction("vkCmdWaitEvents2KHR",  out vkCmdWaitEvents2KHR_ptr);
			NativeLib.LoadFunction("vkCmdPipelineBarrier2KHR",  out vkCmdPipelineBarrier2KHR_ptr);
			NativeLib.LoadFunction("vkCmdWriteTimestamp2KHR",  out vkCmdWriteTimestamp2KHR_ptr);
			NativeLib.LoadFunction("vkQueueSubmit2KHR",  out vkQueueSubmit2KHR_ptr);
			NativeLib.LoadFunction("vkCmdSetFragmentShadingRateEnumNV",  out vkCmdSetFragmentShadingRateEnumNV_ptr);
			NativeLib.LoadFunction("vkCmdCopyBuffer2KHR",  out vkCmdCopyBuffer2KHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyImage2KHR",  out vkCmdCopyImage2KHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyBufferToImage2KHR",  out vkCmdCopyBufferToImage2KHR_ptr);
			NativeLib.LoadFunction("vkCmdCopyImageToBuffer2KHR",  out vkCmdCopyImageToBuffer2KHR_ptr);
			NativeLib.LoadFunction("vkCmdBlitImage2KHR",  out vkCmdBlitImage2KHR_ptr);
			NativeLib.LoadFunction("vkCmdResolveImage2KHR",  out vkCmdResolveImage2KHR_ptr);
			NativeLib.LoadFunction("vkAcquireWinrtDisplayNV",  out vkAcquireWinrtDisplayNV_ptr);
			NativeLib.LoadFunction("vkGetWinrtDisplayNV",  out vkGetWinrtDisplayNV_ptr);
			NativeLib.LoadFunction("vkCreateDirectFBSurfaceEXT",  out vkCreateDirectFBSurfaceEXT_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceDirectFBPresentationSupportEXT",  out vkGetPhysicalDeviceDirectFBPresentationSupportEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetVertexInputEXT",  out vkCmdSetVertexInputEXT_ptr);
			NativeLib.LoadFunction("vkGetMemoryZirconHandleFUCHSIA",  out vkGetMemoryZirconHandleFUCHSIA_ptr);
			NativeLib.LoadFunction("vkGetMemoryZirconHandlePropertiesFUCHSIA",  out vkGetMemoryZirconHandlePropertiesFUCHSIA_ptr);
			NativeLib.LoadFunction("vkImportSemaphoreZirconHandleFUCHSIA",  out vkImportSemaphoreZirconHandleFUCHSIA_ptr);
			NativeLib.LoadFunction("vkGetSemaphoreZirconHandleFUCHSIA",  out vkGetSemaphoreZirconHandleFUCHSIA_ptr);
			NativeLib.LoadFunction("vkGetSubpassShadingMaxWorkgroupSizeHUAWEI",  out vkGetSubpassShadingMaxWorkgroupSizeHUAWEI_ptr);
			NativeLib.LoadFunction("vkCmdSubpassShadingHUAWEI",  out vkCmdSubpassShadingHUAWEI_ptr);
			NativeLib.LoadFunction("vkCmdSetPatchControlPointsEXT",  out vkCmdSetPatchControlPointsEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetRasterizerDiscardEnableEXT",  out vkCmdSetRasterizerDiscardEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetDepthBiasEnableEXT",  out vkCmdSetDepthBiasEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetLogicOpEXT",  out vkCmdSetLogicOpEXT_ptr);
			NativeLib.LoadFunction("vkCmdSetPrimitiveRestartEnableEXT",  out vkCmdSetPrimitiveRestartEnableEXT_ptr);
			NativeLib.LoadFunction("vkCreateScreenSurfaceQNX",  out vkCreateScreenSurfaceQNX_ptr);
			NativeLib.LoadFunction("vkGetPhysicalDeviceScreenPresentationSupportQNX",  out vkGetPhysicalDeviceScreenPresentationSupportQNX_ptr);
			NativeLib.LoadFunction("vkCmdSetColorWriteEnableEXT",  out vkCmdSetColorWriteEnableEXT_ptr);
			NativeLib.LoadFunction("vkCmdDrawMultiEXT",  out vkCmdDrawMultiEXT_ptr);
			NativeLib.LoadFunction("vkCmdDrawMultiIndexedEXT",  out vkCmdDrawMultiIndexedEXT_ptr);
		}
	}
}
