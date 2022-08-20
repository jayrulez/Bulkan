using System;
namespace Bulkan
{
	[CRepr]
	public struct VkBaseOutStructure
	{
		public VkStructureType sType;
		public VkBaseOutStructure* pNext = null;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(VkBaseOutStructure* @pNext) mut { pNext = @pNext;  return ref this; }
	}

	[CRepr]
	public struct VkBaseInStructure
	{
		public VkStructureType sType;
		public VkBaseInStructure* pNext = null;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(VkBaseInStructure* @pNext) mut { pNext = @pNext;  return ref this; }
	}

	[CRepr]
	public struct VkOffset2D
	{
		public int32 x;
		public int32 y;

		public ref Self setX(int32 @x) mut { x = @x;  return ref this; }
		public ref Self setY(int32 @y) mut { y = @y;  return ref this; }
	}

	[CRepr]
	public struct VkOffset3D
	{
		public int32 x;
		public int32 y;
		public int32 z;

		public ref Self setX(int32 @x) mut { x = @x;  return ref this; }
		public ref Self setY(int32 @y) mut { y = @y;  return ref this; }
		public ref Self setZ(int32 @z) mut { z = @z;  return ref this; }
	}

	[CRepr]
	public struct VkExtent2D
	{
		public uint32 width;
		public uint32 height;

		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
	}

	[CRepr]
	public struct VkExtent3D
	{
		public uint32 width;
		public uint32 height;
		public uint32 depth;

		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
		public ref Self setDepth(uint32 @depth) mut { depth = @depth;  return ref this; }
	}

	[CRepr]
	public struct VkViewport
	{
		public float x;
		public float y;
		public float width;
		public float height;
		public float minDepth;
		public float maxDepth;

		public ref Self setX(float @x) mut { x = @x;  return ref this; }
		public ref Self setY(float @y) mut { y = @y;  return ref this; }
		public ref Self setWidth(float @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(float @height) mut { height = @height;  return ref this; }
		public ref Self setMinDepth(float @minDepth) mut { minDepth = @minDepth;  return ref this; }
		public ref Self setMaxDepth(float @maxDepth) mut { maxDepth = @maxDepth;  return ref this; }
	}

	[CRepr]
	public struct VkRect2D
	{
		public VkOffset2D offset;
		public VkExtent2D extent;

		public ref Self setOffset(VkOffset2D @offset) mut { offset = @offset;  return ref this; }
		public ref Self setExtent(VkExtent2D @extent) mut { extent = @extent;  return ref this; }
	}

	[CRepr]
	public struct VkClearRect
	{
		public VkRect2D rect;
		public uint32 baseArrayLayer;
		public uint32 layerCount;

		public ref Self setRect(VkRect2D @rect) mut { rect = @rect;  return ref this; }
		public ref Self setBaseArrayLayer(uint32 @baseArrayLayer) mut { baseArrayLayer = @baseArrayLayer;  return ref this; }
		public ref Self setLayerCount(uint32 @layerCount) mut { layerCount = @layerCount;  return ref this; }
	}

	[CRepr]
	public struct VkComponentMapping
	{
		public VkComponentSwizzle r;
		public VkComponentSwizzle g;
		public VkComponentSwizzle b;
		public VkComponentSwizzle a;

		public ref Self setR(VkComponentSwizzle @r) mut { r = @r;  return ref this; }
		public ref Self setG(VkComponentSwizzle @g) mut { g = @g;  return ref this; }
		public ref Self setB(VkComponentSwizzle @b) mut { b = @b;  return ref this; }
		public ref Self setA(VkComponentSwizzle @a) mut { a = @a;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProperties
	{
		public uint32 apiVersion;
		public uint32 driverVersion;
		public uint32 vendorID;
		public uint32 deviceID;
		public VkPhysicalDeviceType deviceType;
		public char8[(int)VulkanNative.VK_MAX_PHYSICAL_DEVICE_NAME_SIZE] deviceName;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] pipelineCacheUUID;
		public VkPhysicalDeviceLimits limits;
		public VkPhysicalDeviceSparseProperties sparseProperties;

		public ref Self setApiVersion(uint32 @apiVersion) mut { apiVersion = @apiVersion;  return ref this; }
		public ref Self setDriverVersion(uint32 @driverVersion) mut { driverVersion = @driverVersion;  return ref this; }
		public ref Self setVendorID(uint32 @vendorID) mut { vendorID = @vendorID;  return ref this; }
		public ref Self setDeviceID(uint32 @deviceID) mut { deviceID = @deviceID;  return ref this; }
		public ref Self setDeviceType(VkPhysicalDeviceType @deviceType) mut { deviceType = @deviceType;  return ref this; }
		public ref Self setDeviceName(char8[(int)VulkanNative.VK_MAX_PHYSICAL_DEVICE_NAME_SIZE] @deviceName) mut { deviceName = @deviceName;  return ref this; }
		public ref Self setPipelineCacheUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @pipelineCacheUUID) mut { pipelineCacheUUID = @pipelineCacheUUID;  return ref this; }
		public ref Self setLimits(VkPhysicalDeviceLimits @limits) mut { limits = @limits;  return ref this; }
		public ref Self setSparseProperties(VkPhysicalDeviceSparseProperties @sparseProperties) mut { sparseProperties = @sparseProperties;  return ref this; }
	}

	[CRepr]
	public struct VkExtensionProperties
	{
		public char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] extensionName;
		public uint32 specVersion;

		public ref Self setExtensionName(char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] @extensionName) mut { extensionName = @extensionName;  return ref this; }
		public ref Self setSpecVersion(uint32 @specVersion) mut { specVersion = @specVersion;  return ref this; }
	}

	[CRepr]
	public struct VkLayerProperties
	{
		public char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] layerName;
		public uint32 specVersion;
		public uint32 implementationVersion;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;

		public ref Self setLayerName(char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] @layerName) mut { layerName = @layerName;  return ref this; }
		public ref Self setSpecVersion(uint32 @specVersion) mut { specVersion = @specVersion;  return ref this; }
		public ref Self setImplementationVersion(uint32 @implementationVersion) mut { implementationVersion = @implementationVersion;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
	}

	[CRepr]
	public struct VkApplicationInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_APPLICATION_INFO;
		public void* pNext = null;
		public char8* pApplicationName;
		public uint32 applicationVersion;
		public char8* pEngineName;
		public uint32 engineVersion;
		public uint32 apiVersion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPApplicationName(char8* @pApplicationName) mut { pApplicationName = @pApplicationName;  return ref this; }
		public ref Self setApplicationVersion(uint32 @applicationVersion) mut { applicationVersion = @applicationVersion;  return ref this; }
		public ref Self setPEngineName(char8* @pEngineName) mut { pEngineName = @pEngineName;  return ref this; }
		public ref Self setEngineVersion(uint32 @engineVersion) mut { engineVersion = @engineVersion;  return ref this; }
		public ref Self setApiVersion(uint32 @apiVersion) mut { apiVersion = @apiVersion;  return ref this; }
	}

	[CRepr]
	public struct VkAllocationCallbacks
	{
		public void* pUserData;
		public void* pfnAllocation;
		public void* pfnReallocation;
		public void* pfnFree;
		public void* pfnInternalAllocation;
		public void* pfnInternalFree;

		public ref Self setPUserData(void* @pUserData) mut { pUserData = @pUserData;  return ref this; }
		public ref Self setPfnAllocation(void* @pfnAllocation) mut { pfnAllocation = @pfnAllocation;  return ref this; }
		public ref Self setPfnReallocation(void* @pfnReallocation) mut { pfnReallocation = @pfnReallocation;  return ref this; }
		public ref Self setPfnFree(void* @pfnFree) mut { pfnFree = @pfnFree;  return ref this; }
		public ref Self setPfnInternalAllocation(void* @pfnInternalAllocation) mut { pfnInternalAllocation = @pfnInternalAllocation;  return ref this; }
		public ref Self setPfnInternalFree(void* @pfnInternalFree) mut { pfnInternalFree = @pfnInternalFree;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceQueueCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
		public void* pNext = null;
		public VkDeviceQueueCreateFlags flags;
		public uint32 queueFamilyIndex;
		public uint32 queueCount;
		public float* pQueuePriorities;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDeviceQueueCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQueueFamilyIndex(uint32 @queueFamilyIndex) mut { queueFamilyIndex = @queueFamilyIndex;  return ref this; }
		public ref Self setQueueCount(uint32 @queueCount) mut { queueCount = @queueCount;  return ref this; }
		public ref Self setPQueuePriorities(float* @pQueuePriorities) mut { pQueuePriorities = @pQueuePriorities;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 queueCreateInfoCount;
		public VkDeviceQueueCreateInfo* pQueueCreateInfos;
		public uint32 enabledLayerCount;
		public char8** ppEnabledLayerNames;
		public uint32 enabledExtensionCount;
		public char8** ppEnabledExtensionNames;
		public VkPhysicalDeviceFeatures* pEnabledFeatures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQueueCreateInfoCount(uint32 @queueCreateInfoCount) mut { queueCreateInfoCount = @queueCreateInfoCount;  return ref this; }
		public ref Self setPQueueCreateInfos(VkDeviceQueueCreateInfo* @pQueueCreateInfos) mut { pQueueCreateInfos = @pQueueCreateInfos;  return ref this; }
		public ref Self setEnabledLayerCount(uint32 @enabledLayerCount) mut { enabledLayerCount = @enabledLayerCount;  return ref this; }
		public ref Self setPpEnabledLayerNames(char8** @ppEnabledLayerNames) mut { ppEnabledLayerNames = @ppEnabledLayerNames;  return ref this; }
		public ref Self setEnabledExtensionCount(uint32 @enabledExtensionCount) mut { enabledExtensionCount = @enabledExtensionCount;  return ref this; }
		public ref Self setPpEnabledExtensionNames(char8** @ppEnabledExtensionNames) mut { ppEnabledExtensionNames = @ppEnabledExtensionNames;  return ref this; }
		public ref Self setPEnabledFeatures(VkPhysicalDeviceFeatures* @pEnabledFeatures) mut { pEnabledFeatures = @pEnabledFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkInstanceCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
		public void* pNext = null;
		public VkInstanceCreateFlags flags;
		public VkApplicationInfo* pApplicationInfo;
		public uint32 enabledLayerCount;
		public char8** ppEnabledLayerNames;
		public uint32 enabledExtensionCount;
		public char8** ppEnabledExtensionNames;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkInstanceCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPApplicationInfo(VkApplicationInfo* @pApplicationInfo) mut { pApplicationInfo = @pApplicationInfo;  return ref this; }
		public ref Self setEnabledLayerCount(uint32 @enabledLayerCount) mut { enabledLayerCount = @enabledLayerCount;  return ref this; }
		public ref Self setPpEnabledLayerNames(char8** @ppEnabledLayerNames) mut { ppEnabledLayerNames = @ppEnabledLayerNames;  return ref this; }
		public ref Self setEnabledExtensionCount(uint32 @enabledExtensionCount) mut { enabledExtensionCount = @enabledExtensionCount;  return ref this; }
		public ref Self setPpEnabledExtensionNames(char8** @ppEnabledExtensionNames) mut { ppEnabledExtensionNames = @ppEnabledExtensionNames;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyProperties
	{
		public VkQueueFlags queueFlags;
		public uint32 queueCount;
		public uint32 timestampValidBits;
		public VkExtent3D minImageTransferGranularity;

		public ref Self setQueueFlags(VkQueueFlags @queueFlags) mut { queueFlags = @queueFlags;  return ref this; }
		public ref Self setQueueCount(uint32 @queueCount) mut { queueCount = @queueCount;  return ref this; }
		public ref Self setTimestampValidBits(uint32 @timestampValidBits) mut { timestampValidBits = @timestampValidBits;  return ref this; }
		public ref Self setMinImageTransferGranularity(VkExtent3D @minImageTransferGranularity) mut { minImageTransferGranularity = @minImageTransferGranularity;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMemoryProperties
	{
		public uint32 memoryTypeCount;
		public VkMemoryType[32] memoryTypes;
		public uint32 memoryHeapCount;
		public VkMemoryHeap[16] memoryHeaps;

		public ref Self setMemoryTypeCount(uint32 @memoryTypeCount) mut { memoryTypeCount = @memoryTypeCount;  return ref this; }
		public ref Self setMemoryTypes(VkMemoryType[32] @memoryTypes) mut { memoryTypes = @memoryTypes;  return ref this; }
		public ref Self setMemoryHeapCount(uint32 @memoryHeapCount) mut { memoryHeapCount = @memoryHeapCount;  return ref this; }
		public ref Self setMemoryHeaps(VkMemoryHeap[16] @memoryHeaps) mut { memoryHeaps = @memoryHeaps;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
		public void* pNext = null;
		public uint64 allocationSize;
		public uint32 memoryTypeIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAllocationSize(uint64 @allocationSize) mut { allocationSize = @allocationSize;  return ref this; }
		public ref Self setMemoryTypeIndex(uint32 @memoryTypeIndex) mut { memoryTypeIndex = @memoryTypeIndex;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryRequirements
	{
		public uint64 size;
		public uint64 alignment;
		public uint32 memoryTypeBits;

		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setAlignment(uint64 @alignment) mut { alignment = @alignment;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageFormatProperties
	{
		public VkImageAspectFlags aspectMask;
		public VkExtent3D imageGranularity;
		public VkSparseImageFormatFlags flags;

		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
		public ref Self setImageGranularity(VkExtent3D @imageGranularity) mut { imageGranularity = @imageGranularity;  return ref this; }
		public ref Self setFlags(VkSparseImageFormatFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageMemoryRequirements
	{
		public VkSparseImageFormatProperties formatProperties;
		public uint32 imageMipTailFirstLod;
		public uint64 imageMipTailSize;
		public uint64 imageMipTailOffset;
		public uint64 imageMipTailStride;

		public ref Self setFormatProperties(VkSparseImageFormatProperties @formatProperties) mut { formatProperties = @formatProperties;  return ref this; }
		public ref Self setImageMipTailFirstLod(uint32 @imageMipTailFirstLod) mut { imageMipTailFirstLod = @imageMipTailFirstLod;  return ref this; }
		public ref Self setImageMipTailSize(uint64 @imageMipTailSize) mut { imageMipTailSize = @imageMipTailSize;  return ref this; }
		public ref Self setImageMipTailOffset(uint64 @imageMipTailOffset) mut { imageMipTailOffset = @imageMipTailOffset;  return ref this; }
		public ref Self setImageMipTailStride(uint64 @imageMipTailStride) mut { imageMipTailStride = @imageMipTailStride;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryType
	{
		public VkMemoryPropertyFlags propertyFlags;
		public uint32 heapIndex;

		public ref Self setPropertyFlags(VkMemoryPropertyFlags @propertyFlags) mut { propertyFlags = @propertyFlags;  return ref this; }
		public ref Self setHeapIndex(uint32 @heapIndex) mut { heapIndex = @heapIndex;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryHeap
	{
		public uint64 size;
		public VkMemoryHeapFlags flags;

		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setFlags(VkMemoryHeapFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkMappedMemoryRange
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public uint64 offset;
		public uint64 size;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkFormatProperties
	{
		public VkFormatFeatureFlags linearTilingFeatures;
		public VkFormatFeatureFlags optimalTilingFeatures;
		public VkFormatFeatureFlags bufferFeatures;

		public ref Self setLinearTilingFeatures(VkFormatFeatureFlags @linearTilingFeatures) mut { linearTilingFeatures = @linearTilingFeatures;  return ref this; }
		public ref Self setOptimalTilingFeatures(VkFormatFeatureFlags @optimalTilingFeatures) mut { optimalTilingFeatures = @optimalTilingFeatures;  return ref this; }
		public ref Self setBufferFeatures(VkFormatFeatureFlags @bufferFeatures) mut { bufferFeatures = @bufferFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkImageFormatProperties
	{
		public VkExtent3D maxExtent;
		public uint32 maxMipLevels;
		public uint32 maxArrayLayers;
		public VkSampleCountFlags sampleCounts;
		public uint64 maxResourceSize;

		public ref Self setMaxExtent(VkExtent3D @maxExtent) mut { maxExtent = @maxExtent;  return ref this; }
		public ref Self setMaxMipLevels(uint32 @maxMipLevels) mut { maxMipLevels = @maxMipLevels;  return ref this; }
		public ref Self setMaxArrayLayers(uint32 @maxArrayLayers) mut { maxArrayLayers = @maxArrayLayers;  return ref this; }
		public ref Self setSampleCounts(VkSampleCountFlags @sampleCounts) mut { sampleCounts = @sampleCounts;  return ref this; }
		public ref Self setMaxResourceSize(uint64 @maxResourceSize) mut { maxResourceSize = @maxResourceSize;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorBufferInfo
	{
		public VkBuffer buffer;
		public uint64 offset;
		public uint64 range;

		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setRange(uint64 @range) mut { range = @range;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorImageInfo
	{
		public VkSampler sampler;
		public VkImageView imageView;
		public VkImageLayout imageLayout;

		public ref Self setSampler(VkSampler @sampler) mut { sampler = @sampler;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setImageLayout(VkImageLayout @imageLayout) mut { imageLayout = @imageLayout;  return ref this; }
	}

	[CRepr]
	public struct VkWriteDescriptorSet
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
		public void* pNext = null;
		public VkDescriptorSet dstSet;
		public uint32 dstBinding;
		public uint32 dstArrayElement;
		public uint32 descriptorCount;
		public VkDescriptorType descriptorType;
		public VkDescriptorImageInfo* pImageInfo;
		public VkDescriptorBufferInfo* pBufferInfo;
		public VkBufferView* pTexelBufferView;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDstSet(VkDescriptorSet @dstSet) mut { dstSet = @dstSet;  return ref this; }
		public ref Self setDstBinding(uint32 @dstBinding) mut { dstBinding = @dstBinding;  return ref this; }
		public ref Self setDstArrayElement(uint32 @dstArrayElement) mut { dstArrayElement = @dstArrayElement;  return ref this; }
		public ref Self setDescriptorCount(uint32 @descriptorCount) mut { descriptorCount = @descriptorCount;  return ref this; }
		public ref Self setDescriptorType(VkDescriptorType @descriptorType) mut { descriptorType = @descriptorType;  return ref this; }
		public ref Self setPImageInfo(VkDescriptorImageInfo* @pImageInfo) mut { pImageInfo = @pImageInfo;  return ref this; }
		public ref Self setPBufferInfo(VkDescriptorBufferInfo* @pBufferInfo) mut { pBufferInfo = @pBufferInfo;  return ref this; }
		public ref Self setPTexelBufferView(VkBufferView* @pTexelBufferView) mut { pTexelBufferView = @pTexelBufferView;  return ref this; }
	}

	[CRepr]
	public struct VkCopyDescriptorSet
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET;
		public void* pNext = null;
		public VkDescriptorSet srcSet;
		public uint32 srcBinding;
		public uint32 srcArrayElement;
		public VkDescriptorSet dstSet;
		public uint32 dstBinding;
		public uint32 dstArrayElement;
		public uint32 descriptorCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcSet(VkDescriptorSet @srcSet) mut { srcSet = @srcSet;  return ref this; }
		public ref Self setSrcBinding(uint32 @srcBinding) mut { srcBinding = @srcBinding;  return ref this; }
		public ref Self setSrcArrayElement(uint32 @srcArrayElement) mut { srcArrayElement = @srcArrayElement;  return ref this; }
		public ref Self setDstSet(VkDescriptorSet @dstSet) mut { dstSet = @dstSet;  return ref this; }
		public ref Self setDstBinding(uint32 @dstBinding) mut { dstBinding = @dstBinding;  return ref this; }
		public ref Self setDstArrayElement(uint32 @dstArrayElement) mut { dstArrayElement = @dstArrayElement;  return ref this; }
		public ref Self setDescriptorCount(uint32 @descriptorCount) mut { descriptorCount = @descriptorCount;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
		public void* pNext = null;
		public VkBufferCreateFlags flags;
		public uint64 size;
		public VkBufferUsageFlags usage;
		public VkSharingMode sharingMode;
		public uint32 queueFamilyIndexCount;
		public uint32* pQueueFamilyIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkBufferCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setUsage(VkBufferUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setSharingMode(VkSharingMode @sharingMode) mut { sharingMode = @sharingMode;  return ref this; }
		public ref Self setQueueFamilyIndexCount(uint32 @queueFamilyIndexCount) mut { queueFamilyIndexCount = @queueFamilyIndexCount;  return ref this; }
		public ref Self setPQueueFamilyIndices(uint32* @pQueueFamilyIndices) mut { pQueueFamilyIndices = @pQueueFamilyIndices;  return ref this; }
	}

	[CRepr]
	public struct VkBufferViewCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public VkBuffer buffer;
		public VkFormat format;
		public uint64 offset;
		public uint64 range;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setRange(uint64 @range) mut { range = @range;  return ref this; }
	}

	[CRepr]
	public struct VkImageSubresource
	{
		public VkImageAspectFlags aspectMask;
		public uint32 mipLevel;
		public uint32 arrayLayer;

		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
		public ref Self setMipLevel(uint32 @mipLevel) mut { mipLevel = @mipLevel;  return ref this; }
		public ref Self setArrayLayer(uint32 @arrayLayer) mut { arrayLayer = @arrayLayer;  return ref this; }
	}

	[CRepr]
	public struct VkImageSubresourceLayers
	{
		public VkImageAspectFlags aspectMask;
		public uint32 mipLevel;
		public uint32 baseArrayLayer;
		public uint32 layerCount;

		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
		public ref Self setMipLevel(uint32 @mipLevel) mut { mipLevel = @mipLevel;  return ref this; }
		public ref Self setBaseArrayLayer(uint32 @baseArrayLayer) mut { baseArrayLayer = @baseArrayLayer;  return ref this; }
		public ref Self setLayerCount(uint32 @layerCount) mut { layerCount = @layerCount;  return ref this; }
	}

	[CRepr]
	public struct VkImageSubresourceRange
	{
		public VkImageAspectFlags aspectMask;
		public uint32 baseMipLevel;
		public uint32 levelCount;
		public uint32 baseArrayLayer;
		public uint32 layerCount;

		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
		public ref Self setBaseMipLevel(uint32 @baseMipLevel) mut { baseMipLevel = @baseMipLevel;  return ref this; }
		public ref Self setLevelCount(uint32 @levelCount) mut { levelCount = @levelCount;  return ref this; }
		public ref Self setBaseArrayLayer(uint32 @baseArrayLayer) mut { baseArrayLayer = @baseArrayLayer;  return ref this; }
		public ref Self setLayerCount(uint32 @layerCount) mut { layerCount = @layerCount;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryBarrier
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_BARRIER;
		public void* pNext = null;
		public VkAccessFlags srcAccessMask;
		public VkAccessFlags dstAccessMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcAccessMask(VkAccessFlags @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstAccessMask(VkAccessFlags @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
	}

	[CRepr]
	public struct VkBufferMemoryBarrier
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
		public void* pNext = null;
		public VkAccessFlags srcAccessMask;
		public VkAccessFlags dstAccessMask;
		public uint32 srcQueueFamilyIndex;
		public uint32 dstQueueFamilyIndex;
		public VkBuffer buffer;
		public uint64 offset;
		public uint64 size;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcAccessMask(VkAccessFlags @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstAccessMask(VkAccessFlags @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setSrcQueueFamilyIndex(uint32 @srcQueueFamilyIndex) mut { srcQueueFamilyIndex = @srcQueueFamilyIndex;  return ref this; }
		public ref Self setDstQueueFamilyIndex(uint32 @dstQueueFamilyIndex) mut { dstQueueFamilyIndex = @dstQueueFamilyIndex;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkImageMemoryBarrier
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
		public void* pNext = null;
		public VkAccessFlags srcAccessMask;
		public VkAccessFlags dstAccessMask;
		public VkImageLayout oldLayout;
		public VkImageLayout newLayout;
		public uint32 srcQueueFamilyIndex;
		public uint32 dstQueueFamilyIndex;
		public VkImage image;
		public VkImageSubresourceRange subresourceRange;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcAccessMask(VkAccessFlags @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstAccessMask(VkAccessFlags @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setOldLayout(VkImageLayout @oldLayout) mut { oldLayout = @oldLayout;  return ref this; }
		public ref Self setNewLayout(VkImageLayout @newLayout) mut { newLayout = @newLayout;  return ref this; }
		public ref Self setSrcQueueFamilyIndex(uint32 @srcQueueFamilyIndex) mut { srcQueueFamilyIndex = @srcQueueFamilyIndex;  return ref this; }
		public ref Self setDstQueueFamilyIndex(uint32 @dstQueueFamilyIndex) mut { dstQueueFamilyIndex = @dstQueueFamilyIndex;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setSubresourceRange(VkImageSubresourceRange @subresourceRange) mut { subresourceRange = @subresourceRange;  return ref this; }
	}

	[CRepr]
	public struct VkImageCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
		public void* pNext = null;
		public VkImageCreateFlags flags;
		public VkImageType imageType;
		public VkFormat format;
		public VkExtent3D extent;
		public uint32 mipLevels;
		public uint32 arrayLayers;
		public VkSampleCountFlags samples;
		public VkImageTiling tiling;
		public VkImageUsageFlags usage;
		public VkSharingMode sharingMode;
		public uint32 queueFamilyIndexCount;
		public uint32* pQueueFamilyIndices;
		public VkImageLayout initialLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkImageCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setImageType(VkImageType @imageType) mut { imageType = @imageType;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
		public ref Self setMipLevels(uint32 @mipLevels) mut { mipLevels = @mipLevels;  return ref this; }
		public ref Self setArrayLayers(uint32 @arrayLayers) mut { arrayLayers = @arrayLayers;  return ref this; }
		public ref Self setSamples(VkSampleCountFlags @samples) mut { samples = @samples;  return ref this; }
		public ref Self setTiling(VkImageTiling @tiling) mut { tiling = @tiling;  return ref this; }
		public ref Self setUsage(VkImageUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setSharingMode(VkSharingMode @sharingMode) mut { sharingMode = @sharingMode;  return ref this; }
		public ref Self setQueueFamilyIndexCount(uint32 @queueFamilyIndexCount) mut { queueFamilyIndexCount = @queueFamilyIndexCount;  return ref this; }
		public ref Self setPQueueFamilyIndices(uint32* @pQueueFamilyIndices) mut { pQueueFamilyIndices = @pQueueFamilyIndices;  return ref this; }
		public ref Self setInitialLayout(VkImageLayout @initialLayout) mut { initialLayout = @initialLayout;  return ref this; }
	}

	[CRepr]
	public struct VkSubresourceLayout
	{
		public uint64 offset;
		public uint64 size;
		public uint64 rowPitch;
		public uint64 arrayPitch;
		public uint64 depthPitch;

		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setRowPitch(uint64 @rowPitch) mut { rowPitch = @rowPitch;  return ref this; }
		public ref Self setArrayPitch(uint64 @arrayPitch) mut { arrayPitch = @arrayPitch;  return ref this; }
		public ref Self setDepthPitch(uint64 @depthPitch) mut { depthPitch = @depthPitch;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
		public void* pNext = null;
		public VkImageViewCreateFlags flags;
		public VkImage image;
		public VkImageViewType viewType;
		public VkFormat format;
		public VkComponentMapping components;
		public VkImageSubresourceRange subresourceRange;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkImageViewCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setViewType(VkImageViewType @viewType) mut { viewType = @viewType;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setComponents(VkComponentMapping @components) mut { components = @components;  return ref this; }
		public ref Self setSubresourceRange(VkImageSubresourceRange @subresourceRange) mut { subresourceRange = @subresourceRange;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCopy
	{
		public uint64 srcOffset;
		public uint64 dstOffset;
		public uint64 size;

		public ref Self setSrcOffset(uint64 @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstOffset(uint64 @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkSparseMemoryBind
	{
		public uint64 resourceOffset;
		public uint64 size;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;
		public VkSparseMemoryBindFlags flags;

		public ref Self setResourceOffset(uint64 @resourceOffset) mut { resourceOffset = @resourceOffset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
		public ref Self setFlags(VkSparseMemoryBindFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageMemoryBind
	{
		public VkImageSubresource subresource;
		public VkOffset3D offset;
		public VkExtent3D extent;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;
		public VkSparseMemoryBindFlags flags;

		public ref Self setSubresource(VkImageSubresource @subresource) mut { subresource = @subresource;  return ref this; }
		public ref Self setOffset(VkOffset3D @offset) mut { offset = @offset;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
		public ref Self setFlags(VkSparseMemoryBindFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkSparseBufferMemoryBindInfo
	{
		public VkBuffer buffer;
		public uint32 bindCount;
		public VkSparseMemoryBind* pBinds;

		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setBindCount(uint32 @bindCount) mut { bindCount = @bindCount;  return ref this; }
		public ref Self setPBinds(VkSparseMemoryBind* @pBinds) mut { pBinds = @pBinds;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageOpaqueMemoryBindInfo
	{
		public VkImage image;
		public uint32 bindCount;
		public VkSparseMemoryBind* pBinds;

		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setBindCount(uint32 @bindCount) mut { bindCount = @bindCount;  return ref this; }
		public ref Self setPBinds(VkSparseMemoryBind* @pBinds) mut { pBinds = @pBinds;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageMemoryBindInfo
	{
		public VkImage image;
		public uint32 bindCount;
		public VkSparseImageMemoryBind* pBinds;

		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setBindCount(uint32 @bindCount) mut { bindCount = @bindCount;  return ref this; }
		public ref Self setPBinds(VkSparseImageMemoryBind* @pBinds) mut { pBinds = @pBinds;  return ref this; }
	}

	[CRepr]
	public struct VkBindSparseInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_SPARSE_INFO;
		public void* pNext = null;
		public uint32 waitSemaphoreCount;
		public VkSemaphore* pWaitSemaphores;
		public uint32 bufferBindCount;
		public VkSparseBufferMemoryBindInfo* pBufferBinds;
		public uint32 imageOpaqueBindCount;
		public VkSparseImageOpaqueMemoryBindInfo* pImageOpaqueBinds;
		public uint32 imageBindCount;
		public VkSparseImageMemoryBindInfo* pImageBinds;
		public uint32 signalSemaphoreCount;
		public VkSemaphore* pSignalSemaphores;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreCount(uint32 @waitSemaphoreCount) mut { waitSemaphoreCount = @waitSemaphoreCount;  return ref this; }
		public ref Self setPWaitSemaphores(VkSemaphore* @pWaitSemaphores) mut { pWaitSemaphores = @pWaitSemaphores;  return ref this; }
		public ref Self setBufferBindCount(uint32 @bufferBindCount) mut { bufferBindCount = @bufferBindCount;  return ref this; }
		public ref Self setPBufferBinds(VkSparseBufferMemoryBindInfo* @pBufferBinds) mut { pBufferBinds = @pBufferBinds;  return ref this; }
		public ref Self setImageOpaqueBindCount(uint32 @imageOpaqueBindCount) mut { imageOpaqueBindCount = @imageOpaqueBindCount;  return ref this; }
		public ref Self setPImageOpaqueBinds(VkSparseImageOpaqueMemoryBindInfo* @pImageOpaqueBinds) mut { pImageOpaqueBinds = @pImageOpaqueBinds;  return ref this; }
		public ref Self setImageBindCount(uint32 @imageBindCount) mut { imageBindCount = @imageBindCount;  return ref this; }
		public ref Self setPImageBinds(VkSparseImageMemoryBindInfo* @pImageBinds) mut { pImageBinds = @pImageBinds;  return ref this; }
		public ref Self setSignalSemaphoreCount(uint32 @signalSemaphoreCount) mut { signalSemaphoreCount = @signalSemaphoreCount;  return ref this; }
		public ref Self setPSignalSemaphores(VkSemaphore* @pSignalSemaphores) mut { pSignalSemaphores = @pSignalSemaphores;  return ref this; }
	}

	[CRepr]
	public struct VkImageCopy
	{
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D srcOffset;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D dstOffset;
		public VkExtent3D extent;

		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffset(VkOffset3D @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffset(VkOffset3D @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
	}

	[CRepr]
	public struct VkImageBlit
	{
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D[2] srcOffsets;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D[2] dstOffsets;

		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffsets(VkOffset3D[2] @srcOffsets) mut { srcOffsets = @srcOffsets;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffsets(VkOffset3D[2] @dstOffsets) mut { dstOffsets = @dstOffsets;  return ref this; }
	}

	[CRepr]
	public struct VkBufferImageCopy
	{
		public uint64 bufferOffset;
		public uint32 bufferRowLength;
		public uint32 bufferImageHeight;
		public VkImageSubresourceLayers imageSubresource;
		public VkOffset3D imageOffset;
		public VkExtent3D imageExtent;

		public ref Self setBufferOffset(uint64 @bufferOffset) mut { bufferOffset = @bufferOffset;  return ref this; }
		public ref Self setBufferRowLength(uint32 @bufferRowLength) mut { bufferRowLength = @bufferRowLength;  return ref this; }
		public ref Self setBufferImageHeight(uint32 @bufferImageHeight) mut { bufferImageHeight = @bufferImageHeight;  return ref this; }
		public ref Self setImageSubresource(VkImageSubresourceLayers @imageSubresource) mut { imageSubresource = @imageSubresource;  return ref this; }
		public ref Self setImageOffset(VkOffset3D @imageOffset) mut { imageOffset = @imageOffset;  return ref this; }
		public ref Self setImageExtent(VkExtent3D @imageExtent) mut { imageExtent = @imageExtent;  return ref this; }
	}

	[CRepr]
	public struct VkImageResolve
	{
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D srcOffset;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D dstOffset;
		public VkExtent3D extent;

		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffset(VkOffset3D @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffset(VkOffset3D @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
	}

	[CRepr]
	public struct VkShaderModuleCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint codeSize;
		public uint32* pCode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCodeSize(uint @codeSize) mut { codeSize = @codeSize;  return ref this; }
		public ref Self setPCode(uint32* @pCode) mut { pCode = @pCode;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetLayoutBinding
	{
		public uint32 binding;
		public VkDescriptorType descriptorType;
		public uint32 descriptorCount;
		public VkShaderStageFlags stageFlags;
		public VkSampler* pImmutableSamplers;

		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setDescriptorType(VkDescriptorType @descriptorType) mut { descriptorType = @descriptorType;  return ref this; }
		public ref Self setDescriptorCount(uint32 @descriptorCount) mut { descriptorCount = @descriptorCount;  return ref this; }
		public ref Self setStageFlags(VkShaderStageFlags @stageFlags) mut { stageFlags = @stageFlags;  return ref this; }
		public ref Self setPImmutableSamplers(VkSampler* @pImmutableSamplers) mut { pImmutableSamplers = @pImmutableSamplers;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetLayoutCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
		public void* pNext = null;
		public VkDescriptorSetLayoutCreateFlags flags;
		public uint32 bindingCount;
		public VkDescriptorSetLayoutBinding* pBindings;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDescriptorSetLayoutCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setBindingCount(uint32 @bindingCount) mut { bindingCount = @bindingCount;  return ref this; }
		public ref Self setPBindings(VkDescriptorSetLayoutBinding* @pBindings) mut { pBindings = @pBindings;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorPoolSize
	{
		public VkDescriptorType type;
		public uint32 descriptorCount;

		public ref Self setType(VkDescriptorType @type) mut { type = @type;  return ref this; }
		public ref Self setDescriptorCount(uint32 @descriptorCount) mut { descriptorCount = @descriptorCount;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorPoolCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
		public void* pNext = null;
		public VkDescriptorPoolCreateFlags flags;
		public uint32 maxSets;
		public uint32 poolSizeCount;
		public VkDescriptorPoolSize* pPoolSizes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDescriptorPoolCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setMaxSets(uint32 @maxSets) mut { maxSets = @maxSets;  return ref this; }
		public ref Self setPoolSizeCount(uint32 @poolSizeCount) mut { poolSizeCount = @poolSizeCount;  return ref this; }
		public ref Self setPPoolSizes(VkDescriptorPoolSize* @pPoolSizes) mut { pPoolSizes = @pPoolSizes;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
		public void* pNext = null;
		public VkDescriptorPool descriptorPool;
		public uint32 descriptorSetCount;
		public VkDescriptorSetLayout* pSetLayouts;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDescriptorPool(VkDescriptorPool @descriptorPool) mut { descriptorPool = @descriptorPool;  return ref this; }
		public ref Self setDescriptorSetCount(uint32 @descriptorSetCount) mut { descriptorSetCount = @descriptorSetCount;  return ref this; }
		public ref Self setPSetLayouts(VkDescriptorSetLayout* @pSetLayouts) mut { pSetLayouts = @pSetLayouts;  return ref this; }
	}

	[CRepr]
	public struct VkSpecializationMapEntry
	{
		public uint32 constantID;
		public uint32 offset;
		public uint size;

		public ref Self setConstantID(uint32 @constantID) mut { constantID = @constantID;  return ref this; }
		public ref Self setOffset(uint32 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkSpecializationInfo
	{
		public uint32 mapEntryCount;
		public VkSpecializationMapEntry* pMapEntries;
		public uint dataSize;
		public void* pData;

		public ref Self setMapEntryCount(uint32 @mapEntryCount) mut { mapEntryCount = @mapEntryCount;  return ref this; }
		public ref Self setPMapEntries(VkSpecializationMapEntry* @pMapEntries) mut { pMapEntries = @pMapEntries;  return ref this; }
		public ref Self setDataSize(uint @dataSize) mut { dataSize = @dataSize;  return ref this; }
		public ref Self setPData(void* @pData) mut { pData = @pData;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineShaderStageCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineShaderStageCreateFlags flags;
		public VkShaderStageFlags stage;
		public VkShaderModule module;
		public char8* pName;
		public VkSpecializationInfo* pSpecializationInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineShaderStageCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStage(VkShaderStageFlags @stage) mut { stage = @stage;  return ref this; }
		public ref Self setModule(VkShaderModule @module) mut { module = @module;  return ref this; }
		public ref Self setPName(char8* @pName) mut { pName = @pName;  return ref this; }
		public ref Self setPSpecializationInfo(VkSpecializationInfo* @pSpecializationInfo) mut { pSpecializationInfo = @pSpecializationInfo;  return ref this; }
	}

	[CRepr]
	public struct VkComputePipelineCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineCreateFlags flags;
		public VkPipelineShaderStageCreateInfo stage;
		public VkPipelineLayout layout;
		public VkPipeline basePipelineHandle;
		public int32 basePipelineIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStage(VkPipelineShaderStageCreateInfo @stage) mut { stage = @stage;  return ref this; }
		public ref Self setLayout(VkPipelineLayout @layout) mut { layout = @layout;  return ref this; }
		public ref Self setBasePipelineHandle(VkPipeline @basePipelineHandle) mut { basePipelineHandle = @basePipelineHandle;  return ref this; }
		public ref Self setBasePipelineIndex(int32 @basePipelineIndex) mut { basePipelineIndex = @basePipelineIndex;  return ref this; }
	}

	[CRepr]
	public struct VkVertexInputBindingDescription
	{
		public uint32 binding;
		public uint32 stride;
		public VkVertexInputRate inputRate;

		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setStride(uint32 @stride) mut { stride = @stride;  return ref this; }
		public ref Self setInputRate(VkVertexInputRate @inputRate) mut { inputRate = @inputRate;  return ref this; }
	}

	[CRepr]
	public struct VkVertexInputAttributeDescription
	{
		public uint32 location;
		public uint32 binding;
		public VkFormat format;
		public uint32 offset;

		public ref Self setLocation(uint32 @location) mut { location = @location;  return ref this; }
		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setOffset(uint32 @offset) mut { offset = @offset;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineVertexInputStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 vertexBindingDescriptionCount;
		public VkVertexInputBindingDescription* pVertexBindingDescriptions;
		public uint32 vertexAttributeDescriptionCount;
		public VkVertexInputAttributeDescription* pVertexAttributeDescriptions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setVertexBindingDescriptionCount(uint32 @vertexBindingDescriptionCount) mut { vertexBindingDescriptionCount = @vertexBindingDescriptionCount;  return ref this; }
		public ref Self setPVertexBindingDescriptions(VkVertexInputBindingDescription* @pVertexBindingDescriptions) mut { pVertexBindingDescriptions = @pVertexBindingDescriptions;  return ref this; }
		public ref Self setVertexAttributeDescriptionCount(uint32 @vertexAttributeDescriptionCount) mut { vertexAttributeDescriptionCount = @vertexAttributeDescriptionCount;  return ref this; }
		public ref Self setPVertexAttributeDescriptions(VkVertexInputAttributeDescription* @pVertexAttributeDescriptions) mut { pVertexAttributeDescriptions = @pVertexAttributeDescriptions;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineInputAssemblyStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public VkPrimitiveTopology topology;
		public VkBool32 primitiveRestartEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setTopology(VkPrimitiveTopology @topology) mut { topology = @topology;  return ref this; }
		public ref Self setPrimitiveRestartEnable(VkBool32 @primitiveRestartEnable) mut { primitiveRestartEnable = @primitiveRestartEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineTessellationStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 patchControlPoints;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPatchControlPoints(uint32 @patchControlPoints) mut { patchControlPoints = @patchControlPoints;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 viewportCount;
		public VkViewport* pViewports;
		public uint32 scissorCount;
		public VkRect2D* pScissors;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setViewportCount(uint32 @viewportCount) mut { viewportCount = @viewportCount;  return ref this; }
		public ref Self setPViewports(VkViewport* @pViewports) mut { pViewports = @pViewports;  return ref this; }
		public ref Self setScissorCount(uint32 @scissorCount) mut { scissorCount = @scissorCount;  return ref this; }
		public ref Self setPScissors(VkRect2D* @pScissors) mut { pScissors = @pScissors;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public VkBool32 depthClampEnable;
		public VkBool32 rasterizerDiscardEnable;
		public VkPolygonMode polygonMode;
		public VkCullModeFlags cullMode;
		public VkFrontFace frontFace;
		public VkBool32 depthBiasEnable;
		public float depthBiasConstantFactor;
		public float depthBiasClamp;
		public float depthBiasSlopeFactor;
		public float lineWidth;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDepthClampEnable(VkBool32 @depthClampEnable) mut { depthClampEnable = @depthClampEnable;  return ref this; }
		public ref Self setRasterizerDiscardEnable(VkBool32 @rasterizerDiscardEnable) mut { rasterizerDiscardEnable = @rasterizerDiscardEnable;  return ref this; }
		public ref Self setPolygonMode(VkPolygonMode @polygonMode) mut { polygonMode = @polygonMode;  return ref this; }
		public ref Self setCullMode(VkCullModeFlags @cullMode) mut { cullMode = @cullMode;  return ref this; }
		public ref Self setFrontFace(VkFrontFace @frontFace) mut { frontFace = @frontFace;  return ref this; }
		public ref Self setDepthBiasEnable(VkBool32 @depthBiasEnable) mut { depthBiasEnable = @depthBiasEnable;  return ref this; }
		public ref Self setDepthBiasConstantFactor(float @depthBiasConstantFactor) mut { depthBiasConstantFactor = @depthBiasConstantFactor;  return ref this; }
		public ref Self setDepthBiasClamp(float @depthBiasClamp) mut { depthBiasClamp = @depthBiasClamp;  return ref this; }
		public ref Self setDepthBiasSlopeFactor(float @depthBiasSlopeFactor) mut { depthBiasSlopeFactor = @depthBiasSlopeFactor;  return ref this; }
		public ref Self setLineWidth(float @lineWidth) mut { lineWidth = @lineWidth;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineMultisampleStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public VkSampleCountFlags rasterizationSamples;
		public VkBool32 sampleShadingEnable;
		public float minSampleShading;
		public uint32* pSampleMask;
		public VkBool32 alphaToCoverageEnable;
		public VkBool32 alphaToOneEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRasterizationSamples(VkSampleCountFlags @rasterizationSamples) mut { rasterizationSamples = @rasterizationSamples;  return ref this; }
		public ref Self setSampleShadingEnable(VkBool32 @sampleShadingEnable) mut { sampleShadingEnable = @sampleShadingEnable;  return ref this; }
		public ref Self setMinSampleShading(float @minSampleShading) mut { minSampleShading = @minSampleShading;  return ref this; }
		public ref Self setPSampleMask(uint32* @pSampleMask) mut { pSampleMask = @pSampleMask;  return ref this; }
		public ref Self setAlphaToCoverageEnable(VkBool32 @alphaToCoverageEnable) mut { alphaToCoverageEnable = @alphaToCoverageEnable;  return ref this; }
		public ref Self setAlphaToOneEnable(VkBool32 @alphaToOneEnable) mut { alphaToOneEnable = @alphaToOneEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineColorBlendAttachmentState
	{
		public VkBool32 blendEnable;
		public VkBlendFactor srcColorBlendFactor;
		public VkBlendFactor dstColorBlendFactor;
		public VkBlendOp colorBlendOp;
		public VkBlendFactor srcAlphaBlendFactor;
		public VkBlendFactor dstAlphaBlendFactor;
		public VkBlendOp alphaBlendOp;
		public VkColorComponentFlags colorWriteMask;

		public ref Self setBlendEnable(VkBool32 @blendEnable) mut { blendEnable = @blendEnable;  return ref this; }
		public ref Self setSrcColorBlendFactor(VkBlendFactor @srcColorBlendFactor) mut { srcColorBlendFactor = @srcColorBlendFactor;  return ref this; }
		public ref Self setDstColorBlendFactor(VkBlendFactor @dstColorBlendFactor) mut { dstColorBlendFactor = @dstColorBlendFactor;  return ref this; }
		public ref Self setColorBlendOp(VkBlendOp @colorBlendOp) mut { colorBlendOp = @colorBlendOp;  return ref this; }
		public ref Self setSrcAlphaBlendFactor(VkBlendFactor @srcAlphaBlendFactor) mut { srcAlphaBlendFactor = @srcAlphaBlendFactor;  return ref this; }
		public ref Self setDstAlphaBlendFactor(VkBlendFactor @dstAlphaBlendFactor) mut { dstAlphaBlendFactor = @dstAlphaBlendFactor;  return ref this; }
		public ref Self setAlphaBlendOp(VkBlendOp @alphaBlendOp) mut { alphaBlendOp = @alphaBlendOp;  return ref this; }
		public ref Self setColorWriteMask(VkColorComponentFlags @colorWriteMask) mut { colorWriteMask = @colorWriteMask;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineColorBlendStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineColorBlendStateCreateFlags flags;
		public VkBool32 logicOpEnable;
		public VkLogicOp logicOp;
		public uint32 attachmentCount;
		public VkPipelineColorBlendAttachmentState* pAttachments;
		public float[4] blendConstants;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineColorBlendStateCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setLogicOpEnable(VkBool32 @logicOpEnable) mut { logicOpEnable = @logicOpEnable;  return ref this; }
		public ref Self setLogicOp(VkLogicOp @logicOp) mut { logicOp = @logicOp;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPAttachments(VkPipelineColorBlendAttachmentState* @pAttachments) mut { pAttachments = @pAttachments;  return ref this; }
		public ref Self setBlendConstants(float[4] @blendConstants) mut { blendConstants = @blendConstants;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineDynamicStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 dynamicStateCount;
		public VkDynamicState* pDynamicStates;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDynamicStateCount(uint32 @dynamicStateCount) mut { dynamicStateCount = @dynamicStateCount;  return ref this; }
		public ref Self setPDynamicStates(VkDynamicState* @pDynamicStates) mut { pDynamicStates = @pDynamicStates;  return ref this; }
	}

	[CRepr]
	public struct VkStencilOpState
	{
		public VkStencilOp failOp;
		public VkStencilOp passOp;
		public VkStencilOp depthFailOp;
		public VkCompareOp compareOp;
		public uint32 compareMask;
		public uint32 writeMask;
		public uint32 reference;

		public ref Self setFailOp(VkStencilOp @failOp) mut { failOp = @failOp;  return ref this; }
		public ref Self setPassOp(VkStencilOp @passOp) mut { passOp = @passOp;  return ref this; }
		public ref Self setDepthFailOp(VkStencilOp @depthFailOp) mut { depthFailOp = @depthFailOp;  return ref this; }
		public ref Self setCompareOp(VkCompareOp @compareOp) mut { compareOp = @compareOp;  return ref this; }
		public ref Self setCompareMask(uint32 @compareMask) mut { compareMask = @compareMask;  return ref this; }
		public ref Self setWriteMask(uint32 @writeMask) mut { writeMask = @writeMask;  return ref this; }
		public ref Self setReference(uint32 @reference) mut { reference = @reference;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineDepthStencilStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineDepthStencilStateCreateFlags flags;
		public VkBool32 depthTestEnable;
		public VkBool32 depthWriteEnable;
		public VkCompareOp depthCompareOp;
		public VkBool32 depthBoundsTestEnable;
		public VkBool32 stencilTestEnable;
		public VkStencilOpState front;
		public VkStencilOpState back;
		public float minDepthBounds;
		public float maxDepthBounds;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineDepthStencilStateCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDepthTestEnable(VkBool32 @depthTestEnable) mut { depthTestEnable = @depthTestEnable;  return ref this; }
		public ref Self setDepthWriteEnable(VkBool32 @depthWriteEnable) mut { depthWriteEnable = @depthWriteEnable;  return ref this; }
		public ref Self setDepthCompareOp(VkCompareOp @depthCompareOp) mut { depthCompareOp = @depthCompareOp;  return ref this; }
		public ref Self setDepthBoundsTestEnable(VkBool32 @depthBoundsTestEnable) mut { depthBoundsTestEnable = @depthBoundsTestEnable;  return ref this; }
		public ref Self setStencilTestEnable(VkBool32 @stencilTestEnable) mut { stencilTestEnable = @stencilTestEnable;  return ref this; }
		public ref Self setFront(VkStencilOpState @front) mut { front = @front;  return ref this; }
		public ref Self setBack(VkStencilOpState @back) mut { back = @back;  return ref this; }
		public ref Self setMinDepthBounds(float @minDepthBounds) mut { minDepthBounds = @minDepthBounds;  return ref this; }
		public ref Self setMaxDepthBounds(float @maxDepthBounds) mut { maxDepthBounds = @maxDepthBounds;  return ref this; }
	}

	[CRepr]
	public struct VkGraphicsPipelineCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineCreateFlags flags;
		public uint32 stageCount;
		public VkPipelineShaderStageCreateInfo* pStages;
		public VkPipelineVertexInputStateCreateInfo* pVertexInputState;
		public VkPipelineInputAssemblyStateCreateInfo* pInputAssemblyState;
		public VkPipelineTessellationStateCreateInfo* pTessellationState;
		public VkPipelineViewportStateCreateInfo* pViewportState;
		public VkPipelineRasterizationStateCreateInfo* pRasterizationState;
		public VkPipelineMultisampleStateCreateInfo* pMultisampleState;
		public VkPipelineDepthStencilStateCreateInfo* pDepthStencilState;
		public VkPipelineColorBlendStateCreateInfo* pColorBlendState;
		public VkPipelineDynamicStateCreateInfo* pDynamicState;
		public VkPipelineLayout layout;
		public VkRenderPass renderPass;
		public uint32 subpass;
		public VkPipeline basePipelineHandle;
		public int32 basePipelineIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStageCount(uint32 @stageCount) mut { stageCount = @stageCount;  return ref this; }
		public ref Self setPStages(VkPipelineShaderStageCreateInfo* @pStages) mut { pStages = @pStages;  return ref this; }
		public ref Self setPVertexInputState(VkPipelineVertexInputStateCreateInfo* @pVertexInputState) mut { pVertexInputState = @pVertexInputState;  return ref this; }
		public ref Self setPInputAssemblyState(VkPipelineInputAssemblyStateCreateInfo* @pInputAssemblyState) mut { pInputAssemblyState = @pInputAssemblyState;  return ref this; }
		public ref Self setPTessellationState(VkPipelineTessellationStateCreateInfo* @pTessellationState) mut { pTessellationState = @pTessellationState;  return ref this; }
		public ref Self setPViewportState(VkPipelineViewportStateCreateInfo* @pViewportState) mut { pViewportState = @pViewportState;  return ref this; }
		public ref Self setPRasterizationState(VkPipelineRasterizationStateCreateInfo* @pRasterizationState) mut { pRasterizationState = @pRasterizationState;  return ref this; }
		public ref Self setPMultisampleState(VkPipelineMultisampleStateCreateInfo* @pMultisampleState) mut { pMultisampleState = @pMultisampleState;  return ref this; }
		public ref Self setPDepthStencilState(VkPipelineDepthStencilStateCreateInfo* @pDepthStencilState) mut { pDepthStencilState = @pDepthStencilState;  return ref this; }
		public ref Self setPColorBlendState(VkPipelineColorBlendStateCreateInfo* @pColorBlendState) mut { pColorBlendState = @pColorBlendState;  return ref this; }
		public ref Self setPDynamicState(VkPipelineDynamicStateCreateInfo* @pDynamicState) mut { pDynamicState = @pDynamicState;  return ref this; }
		public ref Self setLayout(VkPipelineLayout @layout) mut { layout = @layout;  return ref this; }
		public ref Self setRenderPass(VkRenderPass @renderPass) mut { renderPass = @renderPass;  return ref this; }
		public ref Self setSubpass(uint32 @subpass) mut { subpass = @subpass;  return ref this; }
		public ref Self setBasePipelineHandle(VkPipeline @basePipelineHandle) mut { basePipelineHandle = @basePipelineHandle;  return ref this; }
		public ref Self setBasePipelineIndex(int32 @basePipelineIndex) mut { basePipelineIndex = @basePipelineIndex;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCacheCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineCacheCreateFlags flags;
		public uint initialDataSize;
		public void* pInitialData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineCacheCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setInitialDataSize(uint @initialDataSize) mut { initialDataSize = @initialDataSize;  return ref this; }
		public ref Self setPInitialData(void* @pInitialData) mut { pInitialData = @pInitialData;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCacheHeaderVersionOne
	{
		public uint32 headerSize;
		public VkPipelineCacheHeaderVersion headerVersion;
		public uint32 vendorID;
		public uint32 deviceID;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] pipelineCacheUUID;

		public ref Self setHeaderSize(uint32 @headerSize) mut { headerSize = @headerSize;  return ref this; }
		public ref Self setHeaderVersion(VkPipelineCacheHeaderVersion @headerVersion) mut { headerVersion = @headerVersion;  return ref this; }
		public ref Self setVendorID(uint32 @vendorID) mut { vendorID = @vendorID;  return ref this; }
		public ref Self setDeviceID(uint32 @deviceID) mut { deviceID = @deviceID;  return ref this; }
		public ref Self setPipelineCacheUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @pipelineCacheUUID) mut { pipelineCacheUUID = @pipelineCacheUUID;  return ref this; }
	}

	[CRepr]
	public struct VkPushConstantRange
	{
		public VkShaderStageFlags stageFlags;
		public uint32 offset;
		public uint32 size;

		public ref Self setStageFlags(VkShaderStageFlags @stageFlags) mut { stageFlags = @stageFlags;  return ref this; }
		public ref Self setOffset(uint32 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint32 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineLayoutCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineLayoutCreateFlags flags;
		public uint32 setLayoutCount;
		public VkDescriptorSetLayout* pSetLayouts;
		public uint32 pushConstantRangeCount;
		public VkPushConstantRange* pPushConstantRanges;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineLayoutCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSetLayoutCount(uint32 @setLayoutCount) mut { setLayoutCount = @setLayoutCount;  return ref this; }
		public ref Self setPSetLayouts(VkDescriptorSetLayout* @pSetLayouts) mut { pSetLayouts = @pSetLayouts;  return ref this; }
		public ref Self setPushConstantRangeCount(uint32 @pushConstantRangeCount) mut { pushConstantRangeCount = @pushConstantRangeCount;  return ref this; }
		public ref Self setPPushConstantRanges(VkPushConstantRange* @pPushConstantRanges) mut { pPushConstantRanges = @pPushConstantRanges;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
		public void* pNext = null;
		public VkSamplerCreateFlags flags;
		public VkFilter magFilter;
		public VkFilter minFilter;
		public VkSamplerMipmapMode mipmapMode;
		public VkSamplerAddressMode addressModeU;
		public VkSamplerAddressMode addressModeV;
		public VkSamplerAddressMode addressModeW;
		public float mipLodBias;
		public VkBool32 anisotropyEnable;
		public float maxAnisotropy;
		public VkBool32 compareEnable;
		public VkCompareOp compareOp;
		public float minLod;
		public float maxLod;
		public VkBorderColor borderColor;
		public VkBool32 unnormalizedCoordinates;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkSamplerCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setMagFilter(VkFilter @magFilter) mut { magFilter = @magFilter;  return ref this; }
		public ref Self setMinFilter(VkFilter @minFilter) mut { minFilter = @minFilter;  return ref this; }
		public ref Self setMipmapMode(VkSamplerMipmapMode @mipmapMode) mut { mipmapMode = @mipmapMode;  return ref this; }
		public ref Self setAddressModeU(VkSamplerAddressMode @addressModeU) mut { addressModeU = @addressModeU;  return ref this; }
		public ref Self setAddressModeV(VkSamplerAddressMode @addressModeV) mut { addressModeV = @addressModeV;  return ref this; }
		public ref Self setAddressModeW(VkSamplerAddressMode @addressModeW) mut { addressModeW = @addressModeW;  return ref this; }
		public ref Self setMipLodBias(float @mipLodBias) mut { mipLodBias = @mipLodBias;  return ref this; }
		public ref Self setAnisotropyEnable(VkBool32 @anisotropyEnable) mut { anisotropyEnable = @anisotropyEnable;  return ref this; }
		public ref Self setMaxAnisotropy(float @maxAnisotropy) mut { maxAnisotropy = @maxAnisotropy;  return ref this; }
		public ref Self setCompareEnable(VkBool32 @compareEnable) mut { compareEnable = @compareEnable;  return ref this; }
		public ref Self setCompareOp(VkCompareOp @compareOp) mut { compareOp = @compareOp;  return ref this; }
		public ref Self setMinLod(float @minLod) mut { minLod = @minLod;  return ref this; }
		public ref Self setMaxLod(float @maxLod) mut { maxLod = @maxLod;  return ref this; }
		public ref Self setBorderColor(VkBorderColor @borderColor) mut { borderColor = @borderColor;  return ref this; }
		public ref Self setUnnormalizedCoordinates(VkBool32 @unnormalizedCoordinates) mut { unnormalizedCoordinates = @unnormalizedCoordinates;  return ref this; }
	}

	[CRepr]
	public struct VkCommandPoolCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
		public void* pNext = null;
		public VkCommandPoolCreateFlags flags;
		public uint32 queueFamilyIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkCommandPoolCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQueueFamilyIndex(uint32 @queueFamilyIndex) mut { queueFamilyIndex = @queueFamilyIndex;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
		public void* pNext = null;
		public VkCommandPool commandPool;
		public VkCommandBufferLevel level;
		public uint32 commandBufferCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCommandPool(VkCommandPool @commandPool) mut { commandPool = @commandPool;  return ref this; }
		public ref Self setLevel(VkCommandBufferLevel @level) mut { level = @level;  return ref this; }
		public ref Self setCommandBufferCount(uint32 @commandBufferCount) mut { commandBufferCount = @commandBufferCount;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferInheritanceInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO;
		public void* pNext = null;
		public VkRenderPass renderPass;
		public uint32 subpass;
		public VkFramebuffer framebuffer;
		public VkBool32 occlusionQueryEnable;
		public VkQueryControlFlags queryFlags;
		public VkQueryPipelineStatisticFlags pipelineStatistics;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRenderPass(VkRenderPass @renderPass) mut { renderPass = @renderPass;  return ref this; }
		public ref Self setSubpass(uint32 @subpass) mut { subpass = @subpass;  return ref this; }
		public ref Self setFramebuffer(VkFramebuffer @framebuffer) mut { framebuffer = @framebuffer;  return ref this; }
		public ref Self setOcclusionQueryEnable(VkBool32 @occlusionQueryEnable) mut { occlusionQueryEnable = @occlusionQueryEnable;  return ref this; }
		public ref Self setQueryFlags(VkQueryControlFlags @queryFlags) mut { queryFlags = @queryFlags;  return ref this; }
		public ref Self setPipelineStatistics(VkQueryPipelineStatisticFlags @pipelineStatistics) mut { pipelineStatistics = @pipelineStatistics;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
		public void* pNext = null;
		public VkCommandBufferUsageFlags flags;
		public VkCommandBufferInheritanceInfo* pInheritanceInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkCommandBufferUsageFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPInheritanceInfo(VkCommandBufferInheritanceInfo* @pInheritanceInfo) mut { pInheritanceInfo = @pInheritanceInfo;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO;
		public void* pNext = null;
		public VkRenderPass renderPass;
		public VkFramebuffer framebuffer;
		public VkRect2D renderArea;
		public uint32 clearValueCount;
		public VkClearValue* pClearValues;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRenderPass(VkRenderPass @renderPass) mut { renderPass = @renderPass;  return ref this; }
		public ref Self setFramebuffer(VkFramebuffer @framebuffer) mut { framebuffer = @framebuffer;  return ref this; }
		public ref Self setRenderArea(VkRect2D @renderArea) mut { renderArea = @renderArea;  return ref this; }
		public ref Self setClearValueCount(uint32 @clearValueCount) mut { clearValueCount = @clearValueCount;  return ref this; }
		public ref Self setPClearValues(VkClearValue* @pClearValues) mut { pClearValues = @pClearValues;  return ref this; }
	}

	[CRepr]
	public struct VkClearDepthStencilValue
	{
		public float depth;
		public uint32 stencil;

		public ref Self setDepth(float @depth) mut { depth = @depth;  return ref this; }
		public ref Self setStencil(uint32 @stencil) mut { stencil = @stencil;  return ref this; }
	}

	[CRepr]
	public struct VkClearAttachment
	{
		public VkImageAspectFlags aspectMask;
		public uint32 colorAttachment;
		public VkClearValue clearValue;

		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
		public ref Self setColorAttachment(uint32 @colorAttachment) mut { colorAttachment = @colorAttachment;  return ref this; }
		public ref Self setClearValue(VkClearValue @clearValue) mut { clearValue = @clearValue;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentDescription
	{
		public VkAttachmentDescriptionFlags flags;
		public VkFormat format;
		public VkSampleCountFlags samples;
		public VkAttachmentLoadOp loadOp;
		public VkAttachmentStoreOp storeOp;
		public VkAttachmentLoadOp stencilLoadOp;
		public VkAttachmentStoreOp stencilStoreOp;
		public VkImageLayout initialLayout;
		public VkImageLayout finalLayout;

		public ref Self setFlags(VkAttachmentDescriptionFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setSamples(VkSampleCountFlags @samples) mut { samples = @samples;  return ref this; }
		public ref Self setLoadOp(VkAttachmentLoadOp @loadOp) mut { loadOp = @loadOp;  return ref this; }
		public ref Self setStoreOp(VkAttachmentStoreOp @storeOp) mut { storeOp = @storeOp;  return ref this; }
		public ref Self setStencilLoadOp(VkAttachmentLoadOp @stencilLoadOp) mut { stencilLoadOp = @stencilLoadOp;  return ref this; }
		public ref Self setStencilStoreOp(VkAttachmentStoreOp @stencilStoreOp) mut { stencilStoreOp = @stencilStoreOp;  return ref this; }
		public ref Self setInitialLayout(VkImageLayout @initialLayout) mut { initialLayout = @initialLayout;  return ref this; }
		public ref Self setFinalLayout(VkImageLayout @finalLayout) mut { finalLayout = @finalLayout;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentReference
	{
		public uint32 attachment;
		public VkImageLayout layout;

		public ref Self setAttachment(uint32 @attachment) mut { attachment = @attachment;  return ref this; }
		public ref Self setLayout(VkImageLayout @layout) mut { layout = @layout;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassDescription
	{
		public VkSubpassDescriptionFlags flags;
		public VkPipelineBindPoint pipelineBindPoint;
		public uint32 inputAttachmentCount;
		public VkAttachmentReference* pInputAttachments;
		public uint32 colorAttachmentCount;
		public VkAttachmentReference* pColorAttachments;
		public VkAttachmentReference* pResolveAttachments;
		public VkAttachmentReference* pDepthStencilAttachment;
		public uint32 preserveAttachmentCount;
		public uint32* pPreserveAttachments;

		public ref Self setFlags(VkSubpassDescriptionFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setInputAttachmentCount(uint32 @inputAttachmentCount) mut { inputAttachmentCount = @inputAttachmentCount;  return ref this; }
		public ref Self setPInputAttachments(VkAttachmentReference* @pInputAttachments) mut { pInputAttachments = @pInputAttachments;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachments(VkAttachmentReference* @pColorAttachments) mut { pColorAttachments = @pColorAttachments;  return ref this; }
		public ref Self setPResolveAttachments(VkAttachmentReference* @pResolveAttachments) mut { pResolveAttachments = @pResolveAttachments;  return ref this; }
		public ref Self setPDepthStencilAttachment(VkAttachmentReference* @pDepthStencilAttachment) mut { pDepthStencilAttachment = @pDepthStencilAttachment;  return ref this; }
		public ref Self setPreserveAttachmentCount(uint32 @preserveAttachmentCount) mut { preserveAttachmentCount = @preserveAttachmentCount;  return ref this; }
		public ref Self setPPreserveAttachments(uint32* @pPreserveAttachments) mut { pPreserveAttachments = @pPreserveAttachments;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassDependency
	{
		public uint32 srcSubpass;
		public uint32 dstSubpass;
		public VkPipelineStageFlags srcStageMask;
		public VkPipelineStageFlags dstStageMask;
		public VkAccessFlags srcAccessMask;
		public VkAccessFlags dstAccessMask;
		public VkDependencyFlags dependencyFlags;

		public ref Self setSrcSubpass(uint32 @srcSubpass) mut { srcSubpass = @srcSubpass;  return ref this; }
		public ref Self setDstSubpass(uint32 @dstSubpass) mut { dstSubpass = @dstSubpass;  return ref this; }
		public ref Self setSrcStageMask(VkPipelineStageFlags @srcStageMask) mut { srcStageMask = @srcStageMask;  return ref this; }
		public ref Self setDstStageMask(VkPipelineStageFlags @dstStageMask) mut { dstStageMask = @dstStageMask;  return ref this; }
		public ref Self setSrcAccessMask(VkAccessFlags @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstAccessMask(VkAccessFlags @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setDependencyFlags(VkDependencyFlags @dependencyFlags) mut { dependencyFlags = @dependencyFlags;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO;
		public void* pNext = null;
		public VkRenderPassCreateFlags flags;
		public uint32 attachmentCount;
		public VkAttachmentDescription* pAttachments;
		public uint32 subpassCount;
		public VkSubpassDescription* pSubpasses;
		public uint32 dependencyCount;
		public VkSubpassDependency* pDependencies;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkRenderPassCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPAttachments(VkAttachmentDescription* @pAttachments) mut { pAttachments = @pAttachments;  return ref this; }
		public ref Self setSubpassCount(uint32 @subpassCount) mut { subpassCount = @subpassCount;  return ref this; }
		public ref Self setPSubpasses(VkSubpassDescription* @pSubpasses) mut { pSubpasses = @pSubpasses;  return ref this; }
		public ref Self setDependencyCount(uint32 @dependencyCount) mut { dependencyCount = @dependencyCount;  return ref this; }
		public ref Self setPDependencies(VkSubpassDependency* @pDependencies) mut { pDependencies = @pDependencies;  return ref this; }
	}

	[CRepr]
	public struct VkEventCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EVENT_CREATE_INFO;
		public void* pNext = null;
		public VkEventCreateFlags flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkEventCreateFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkFenceCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
		public void* pNext = null;
		public VkFenceCreateFlags flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkFenceCreateFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFeatures
	{
		public VkBool32 robustBufferAccess;
		public VkBool32 fullDrawIndexUint32;
		public VkBool32 imageCubeArray;
		public VkBool32 independentBlend;
		public VkBool32 geometryShader;
		public VkBool32 tessellationShader;
		public VkBool32 sampleRateShading;
		public VkBool32 dualSrcBlend;
		public VkBool32 logicOp;
		public VkBool32 multiDrawIndirect;
		public VkBool32 drawIndirectFirstInstance;
		public VkBool32 depthClamp;
		public VkBool32 depthBiasClamp;
		public VkBool32 fillModeNonSolid;
		public VkBool32 depthBounds;
		public VkBool32 wideLines;
		public VkBool32 largePoints;
		public VkBool32 alphaToOne;
		public VkBool32 multiViewport;
		public VkBool32 samplerAnisotropy;
		public VkBool32 textureCompressionETC2;
		public VkBool32 textureCompressionASTC_LDR;
		public VkBool32 textureCompressionBC;
		public VkBool32 occlusionQueryPrecise;
		public VkBool32 pipelineStatisticsQuery;
		public VkBool32 vertexPipelineStoresAndAtomics;
		public VkBool32 fragmentStoresAndAtomics;
		public VkBool32 shaderTessellationAndGeometryPointSize;
		public VkBool32 shaderImageGatherExtended;
		public VkBool32 shaderStorageImageExtendedFormats;
		public VkBool32 shaderStorageImageMultisample;
		public VkBool32 shaderStorageImageReadWithoutFormat;
		public VkBool32 shaderStorageImageWriteWithoutFormat;
		public VkBool32 shaderUniformBufferArrayDynamicIndexing;
		public VkBool32 shaderSampledImageArrayDynamicIndexing;
		public VkBool32 shaderStorageBufferArrayDynamicIndexing;
		public VkBool32 shaderStorageImageArrayDynamicIndexing;
		public VkBool32 shaderClipDistance;
		public VkBool32 shaderCullDistance;
		public VkBool32 shaderFloat64;
		public VkBool32 shaderInt64;
		public VkBool32 shaderInt16;
		public VkBool32 shaderResourceResidency;
		public VkBool32 shaderResourceMinLod;
		public VkBool32 sparseBinding;
		public VkBool32 sparseResidencyBuffer;
		public VkBool32 sparseResidencyImage2D;
		public VkBool32 sparseResidencyImage3D;
		public VkBool32 sparseResidency2Samples;
		public VkBool32 sparseResidency4Samples;
		public VkBool32 sparseResidency8Samples;
		public VkBool32 sparseResidency16Samples;
		public VkBool32 sparseResidencyAliased;
		public VkBool32 variableMultisampleRate;
		public VkBool32 inheritedQueries;

		public ref Self setRobustBufferAccess(VkBool32 @robustBufferAccess) mut { robustBufferAccess = @robustBufferAccess;  return ref this; }
		public ref Self setFullDrawIndexUint32(VkBool32 @fullDrawIndexUint32) mut { fullDrawIndexUint32 = @fullDrawIndexUint32;  return ref this; }
		public ref Self setImageCubeArray(VkBool32 @imageCubeArray) mut { imageCubeArray = @imageCubeArray;  return ref this; }
		public ref Self setIndependentBlend(VkBool32 @independentBlend) mut { independentBlend = @independentBlend;  return ref this; }
		public ref Self setGeometryShader(VkBool32 @geometryShader) mut { geometryShader = @geometryShader;  return ref this; }
		public ref Self setTessellationShader(VkBool32 @tessellationShader) mut { tessellationShader = @tessellationShader;  return ref this; }
		public ref Self setSampleRateShading(VkBool32 @sampleRateShading) mut { sampleRateShading = @sampleRateShading;  return ref this; }
		public ref Self setDualSrcBlend(VkBool32 @dualSrcBlend) mut { dualSrcBlend = @dualSrcBlend;  return ref this; }
		public ref Self setLogicOp(VkBool32 @logicOp) mut { logicOp = @logicOp;  return ref this; }
		public ref Self setMultiDrawIndirect(VkBool32 @multiDrawIndirect) mut { multiDrawIndirect = @multiDrawIndirect;  return ref this; }
		public ref Self setDrawIndirectFirstInstance(VkBool32 @drawIndirectFirstInstance) mut { drawIndirectFirstInstance = @drawIndirectFirstInstance;  return ref this; }
		public ref Self setDepthClamp(VkBool32 @depthClamp) mut { depthClamp = @depthClamp;  return ref this; }
		public ref Self setDepthBiasClamp(VkBool32 @depthBiasClamp) mut { depthBiasClamp = @depthBiasClamp;  return ref this; }
		public ref Self setFillModeNonSolid(VkBool32 @fillModeNonSolid) mut { fillModeNonSolid = @fillModeNonSolid;  return ref this; }
		public ref Self setDepthBounds(VkBool32 @depthBounds) mut { depthBounds = @depthBounds;  return ref this; }
		public ref Self setWideLines(VkBool32 @wideLines) mut { wideLines = @wideLines;  return ref this; }
		public ref Self setLargePoints(VkBool32 @largePoints) mut { largePoints = @largePoints;  return ref this; }
		public ref Self setAlphaToOne(VkBool32 @alphaToOne) mut { alphaToOne = @alphaToOne;  return ref this; }
		public ref Self setMultiViewport(VkBool32 @multiViewport) mut { multiViewport = @multiViewport;  return ref this; }
		public ref Self setSamplerAnisotropy(VkBool32 @samplerAnisotropy) mut { samplerAnisotropy = @samplerAnisotropy;  return ref this; }
		public ref Self setTextureCompressionETC2(VkBool32 @textureCompressionETC2) mut { textureCompressionETC2 = @textureCompressionETC2;  return ref this; }
		public ref Self setTextureCompressionASTC_LDR(VkBool32 @textureCompressionASTC_LDR) mut { textureCompressionASTC_LDR = @textureCompressionASTC_LDR;  return ref this; }
		public ref Self setTextureCompressionBC(VkBool32 @textureCompressionBC) mut { textureCompressionBC = @textureCompressionBC;  return ref this; }
		public ref Self setOcclusionQueryPrecise(VkBool32 @occlusionQueryPrecise) mut { occlusionQueryPrecise = @occlusionQueryPrecise;  return ref this; }
		public ref Self setPipelineStatisticsQuery(VkBool32 @pipelineStatisticsQuery) mut { pipelineStatisticsQuery = @pipelineStatisticsQuery;  return ref this; }
		public ref Self setVertexPipelineStoresAndAtomics(VkBool32 @vertexPipelineStoresAndAtomics) mut { vertexPipelineStoresAndAtomics = @vertexPipelineStoresAndAtomics;  return ref this; }
		public ref Self setFragmentStoresAndAtomics(VkBool32 @fragmentStoresAndAtomics) mut { fragmentStoresAndAtomics = @fragmentStoresAndAtomics;  return ref this; }
		public ref Self setShaderTessellationAndGeometryPointSize(VkBool32 @shaderTessellationAndGeometryPointSize) mut { shaderTessellationAndGeometryPointSize = @shaderTessellationAndGeometryPointSize;  return ref this; }
		public ref Self setShaderImageGatherExtended(VkBool32 @shaderImageGatherExtended) mut { shaderImageGatherExtended = @shaderImageGatherExtended;  return ref this; }
		public ref Self setShaderStorageImageExtendedFormats(VkBool32 @shaderStorageImageExtendedFormats) mut { shaderStorageImageExtendedFormats = @shaderStorageImageExtendedFormats;  return ref this; }
		public ref Self setShaderStorageImageMultisample(VkBool32 @shaderStorageImageMultisample) mut { shaderStorageImageMultisample = @shaderStorageImageMultisample;  return ref this; }
		public ref Self setShaderStorageImageReadWithoutFormat(VkBool32 @shaderStorageImageReadWithoutFormat) mut { shaderStorageImageReadWithoutFormat = @shaderStorageImageReadWithoutFormat;  return ref this; }
		public ref Self setShaderStorageImageWriteWithoutFormat(VkBool32 @shaderStorageImageWriteWithoutFormat) mut { shaderStorageImageWriteWithoutFormat = @shaderStorageImageWriteWithoutFormat;  return ref this; }
		public ref Self setShaderUniformBufferArrayDynamicIndexing(VkBool32 @shaderUniformBufferArrayDynamicIndexing) mut { shaderUniformBufferArrayDynamicIndexing = @shaderUniformBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderSampledImageArrayDynamicIndexing(VkBool32 @shaderSampledImageArrayDynamicIndexing) mut { shaderSampledImageArrayDynamicIndexing = @shaderSampledImageArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderStorageBufferArrayDynamicIndexing(VkBool32 @shaderStorageBufferArrayDynamicIndexing) mut { shaderStorageBufferArrayDynamicIndexing = @shaderStorageBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderStorageImageArrayDynamicIndexing(VkBool32 @shaderStorageImageArrayDynamicIndexing) mut { shaderStorageImageArrayDynamicIndexing = @shaderStorageImageArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderClipDistance(VkBool32 @shaderClipDistance) mut { shaderClipDistance = @shaderClipDistance;  return ref this; }
		public ref Self setShaderCullDistance(VkBool32 @shaderCullDistance) mut { shaderCullDistance = @shaderCullDistance;  return ref this; }
		public ref Self setShaderFloat64(VkBool32 @shaderFloat64) mut { shaderFloat64 = @shaderFloat64;  return ref this; }
		public ref Self setShaderInt64(VkBool32 @shaderInt64) mut { shaderInt64 = @shaderInt64;  return ref this; }
		public ref Self setShaderInt16(VkBool32 @shaderInt16) mut { shaderInt16 = @shaderInt16;  return ref this; }
		public ref Self setShaderResourceResidency(VkBool32 @shaderResourceResidency) mut { shaderResourceResidency = @shaderResourceResidency;  return ref this; }
		public ref Self setShaderResourceMinLod(VkBool32 @shaderResourceMinLod) mut { shaderResourceMinLod = @shaderResourceMinLod;  return ref this; }
		public ref Self setSparseBinding(VkBool32 @sparseBinding) mut { sparseBinding = @sparseBinding;  return ref this; }
		public ref Self setSparseResidencyBuffer(VkBool32 @sparseResidencyBuffer) mut { sparseResidencyBuffer = @sparseResidencyBuffer;  return ref this; }
		public ref Self setSparseResidencyImage2D(VkBool32 @sparseResidencyImage2D) mut { sparseResidencyImage2D = @sparseResidencyImage2D;  return ref this; }
		public ref Self setSparseResidencyImage3D(VkBool32 @sparseResidencyImage3D) mut { sparseResidencyImage3D = @sparseResidencyImage3D;  return ref this; }
		public ref Self setSparseResidency2Samples(VkBool32 @sparseResidency2Samples) mut { sparseResidency2Samples = @sparseResidency2Samples;  return ref this; }
		public ref Self setSparseResidency4Samples(VkBool32 @sparseResidency4Samples) mut { sparseResidency4Samples = @sparseResidency4Samples;  return ref this; }
		public ref Self setSparseResidency8Samples(VkBool32 @sparseResidency8Samples) mut { sparseResidency8Samples = @sparseResidency8Samples;  return ref this; }
		public ref Self setSparseResidency16Samples(VkBool32 @sparseResidency16Samples) mut { sparseResidency16Samples = @sparseResidency16Samples;  return ref this; }
		public ref Self setSparseResidencyAliased(VkBool32 @sparseResidencyAliased) mut { sparseResidencyAliased = @sparseResidencyAliased;  return ref this; }
		public ref Self setVariableMultisampleRate(VkBool32 @variableMultisampleRate) mut { variableMultisampleRate = @variableMultisampleRate;  return ref this; }
		public ref Self setInheritedQueries(VkBool32 @inheritedQueries) mut { inheritedQueries = @inheritedQueries;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSparseProperties
	{
		public VkBool32 residencyStandard2DBlockShape;
		public VkBool32 residencyStandard2DMultisampleBlockShape;
		public VkBool32 residencyStandard3DBlockShape;
		public VkBool32 residencyAlignedMipSize;
		public VkBool32 residencyNonResidentStrict;

		public ref Self setResidencyStandard2DBlockShape(VkBool32 @residencyStandard2DBlockShape) mut { residencyStandard2DBlockShape = @residencyStandard2DBlockShape;  return ref this; }
		public ref Self setResidencyStandard2DMultisampleBlockShape(VkBool32 @residencyStandard2DMultisampleBlockShape) mut { residencyStandard2DMultisampleBlockShape = @residencyStandard2DMultisampleBlockShape;  return ref this; }
		public ref Self setResidencyStandard3DBlockShape(VkBool32 @residencyStandard3DBlockShape) mut { residencyStandard3DBlockShape = @residencyStandard3DBlockShape;  return ref this; }
		public ref Self setResidencyAlignedMipSize(VkBool32 @residencyAlignedMipSize) mut { residencyAlignedMipSize = @residencyAlignedMipSize;  return ref this; }
		public ref Self setResidencyNonResidentStrict(VkBool32 @residencyNonResidentStrict) mut { residencyNonResidentStrict = @residencyNonResidentStrict;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceLimits
	{
		public uint32 maxImageDimension1D;
		public uint32 maxImageDimension2D;
		public uint32 maxImageDimension3D;
		public uint32 maxImageDimensionCube;
		public uint32 maxImageArrayLayers;
		public uint32 maxTexelBufferElements;
		public uint32 maxUniformBufferRange;
		public uint32 maxStorageBufferRange;
		public uint32 maxPushConstantsSize;
		public uint32 maxMemoryAllocationCount;
		public uint32 maxSamplerAllocationCount;
		public uint64 bufferImageGranularity;
		public uint64 sparseAddressSpaceSize;
		public uint32 maxBoundDescriptorSets;
		public uint32 maxPerStageDescriptorSamplers;
		public uint32 maxPerStageDescriptorUniformBuffers;
		public uint32 maxPerStageDescriptorStorageBuffers;
		public uint32 maxPerStageDescriptorSampledImages;
		public uint32 maxPerStageDescriptorStorageImages;
		public uint32 maxPerStageDescriptorInputAttachments;
		public uint32 maxPerStageResources;
		public uint32 maxDescriptorSetSamplers;
		public uint32 maxDescriptorSetUniformBuffers;
		public uint32 maxDescriptorSetUniformBuffersDynamic;
		public uint32 maxDescriptorSetStorageBuffers;
		public uint32 maxDescriptorSetStorageBuffersDynamic;
		public uint32 maxDescriptorSetSampledImages;
		public uint32 maxDescriptorSetStorageImages;
		public uint32 maxDescriptorSetInputAttachments;
		public uint32 maxVertexInputAttributes;
		public uint32 maxVertexInputBindings;
		public uint32 maxVertexInputAttributeOffset;
		public uint32 maxVertexInputBindingStride;
		public uint32 maxVertexOutputComponents;
		public uint32 maxTessellationGenerationLevel;
		public uint32 maxTessellationPatchSize;
		public uint32 maxTessellationControlPerVertexInputComponents;
		public uint32 maxTessellationControlPerVertexOutputComponents;
		public uint32 maxTessellationControlPerPatchOutputComponents;
		public uint32 maxTessellationControlTotalOutputComponents;
		public uint32 maxTessellationEvaluationInputComponents;
		public uint32 maxTessellationEvaluationOutputComponents;
		public uint32 maxGeometryShaderInvocations;
		public uint32 maxGeometryInputComponents;
		public uint32 maxGeometryOutputComponents;
		public uint32 maxGeometryOutputVertices;
		public uint32 maxGeometryTotalOutputComponents;
		public uint32 maxFragmentInputComponents;
		public uint32 maxFragmentOutputAttachments;
		public uint32 maxFragmentDualSrcAttachments;
		public uint32 maxFragmentCombinedOutputResources;
		public uint32 maxComputeSharedMemorySize;
		public uint32[3] maxComputeWorkGroupCount;
		public uint32 maxComputeWorkGroupInvocations;
		public uint32[3] maxComputeWorkGroupSize;
		public uint32 subPixelPrecisionBits;
		public uint32 subTexelPrecisionBits;
		public uint32 mipmapPrecisionBits;
		public uint32 maxDrawIndexedIndexValue;
		public uint32 maxDrawIndirectCount;
		public float maxSamplerLodBias;
		public float maxSamplerAnisotropy;
		public uint32 maxViewports;
		public uint32[2] maxViewportDimensions;
		public float[2] viewportBoundsRange;
		public uint32 viewportSubPixelBits;
		public uint minMemoryMapAlignment;
		public uint64 minTexelBufferOffsetAlignment;
		public uint64 minUniformBufferOffsetAlignment;
		public uint64 minStorageBufferOffsetAlignment;
		public int32 minTexelOffset;
		public uint32 maxTexelOffset;
		public int32 minTexelGatherOffset;
		public uint32 maxTexelGatherOffset;
		public float minInterpolationOffset;
		public float maxInterpolationOffset;
		public uint32 subPixelInterpolationOffsetBits;
		public uint32 maxFramebufferWidth;
		public uint32 maxFramebufferHeight;
		public uint32 maxFramebufferLayers;
		public VkSampleCountFlags framebufferColorSampleCounts;
		public VkSampleCountFlags framebufferDepthSampleCounts;
		public VkSampleCountFlags framebufferStencilSampleCounts;
		public VkSampleCountFlags framebufferNoAttachmentsSampleCounts;
		public uint32 maxColorAttachments;
		public VkSampleCountFlags sampledImageColorSampleCounts;
		public VkSampleCountFlags sampledImageIntegerSampleCounts;
		public VkSampleCountFlags sampledImageDepthSampleCounts;
		public VkSampleCountFlags sampledImageStencilSampleCounts;
		public VkSampleCountFlags storageImageSampleCounts;
		public uint32 maxSampleMaskWords;
		public VkBool32 timestampComputeAndGraphics;
		public float timestampPeriod;
		public uint32 maxClipDistances;
		public uint32 maxCullDistances;
		public uint32 maxCombinedClipAndCullDistances;
		public uint32 discreteQueuePriorities;
		public float[2] pointSizeRange;
		public float[2] lineWidthRange;
		public float pointSizeGranularity;
		public float lineWidthGranularity;
		public VkBool32 strictLines;
		public VkBool32 standardSampleLocations;
		public uint64 optimalBufferCopyOffsetAlignment;
		public uint64 optimalBufferCopyRowPitchAlignment;
		public uint64 nonCoherentAtomSize;

		public ref Self setMaxImageDimension1D(uint32 @maxImageDimension1D) mut { maxImageDimension1D = @maxImageDimension1D;  return ref this; }
		public ref Self setMaxImageDimension2D(uint32 @maxImageDimension2D) mut { maxImageDimension2D = @maxImageDimension2D;  return ref this; }
		public ref Self setMaxImageDimension3D(uint32 @maxImageDimension3D) mut { maxImageDimension3D = @maxImageDimension3D;  return ref this; }
		public ref Self setMaxImageDimensionCube(uint32 @maxImageDimensionCube) mut { maxImageDimensionCube = @maxImageDimensionCube;  return ref this; }
		public ref Self setMaxImageArrayLayers(uint32 @maxImageArrayLayers) mut { maxImageArrayLayers = @maxImageArrayLayers;  return ref this; }
		public ref Self setMaxTexelBufferElements(uint32 @maxTexelBufferElements) mut { maxTexelBufferElements = @maxTexelBufferElements;  return ref this; }
		public ref Self setMaxUniformBufferRange(uint32 @maxUniformBufferRange) mut { maxUniformBufferRange = @maxUniformBufferRange;  return ref this; }
		public ref Self setMaxStorageBufferRange(uint32 @maxStorageBufferRange) mut { maxStorageBufferRange = @maxStorageBufferRange;  return ref this; }
		public ref Self setMaxPushConstantsSize(uint32 @maxPushConstantsSize) mut { maxPushConstantsSize = @maxPushConstantsSize;  return ref this; }
		public ref Self setMaxMemoryAllocationCount(uint32 @maxMemoryAllocationCount) mut { maxMemoryAllocationCount = @maxMemoryAllocationCount;  return ref this; }
		public ref Self setMaxSamplerAllocationCount(uint32 @maxSamplerAllocationCount) mut { maxSamplerAllocationCount = @maxSamplerAllocationCount;  return ref this; }
		public ref Self setBufferImageGranularity(uint64 @bufferImageGranularity) mut { bufferImageGranularity = @bufferImageGranularity;  return ref this; }
		public ref Self setSparseAddressSpaceSize(uint64 @sparseAddressSpaceSize) mut { sparseAddressSpaceSize = @sparseAddressSpaceSize;  return ref this; }
		public ref Self setMaxBoundDescriptorSets(uint32 @maxBoundDescriptorSets) mut { maxBoundDescriptorSets = @maxBoundDescriptorSets;  return ref this; }
		public ref Self setMaxPerStageDescriptorSamplers(uint32 @maxPerStageDescriptorSamplers) mut { maxPerStageDescriptorSamplers = @maxPerStageDescriptorSamplers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUniformBuffers(uint32 @maxPerStageDescriptorUniformBuffers) mut { maxPerStageDescriptorUniformBuffers = @maxPerStageDescriptorUniformBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorStorageBuffers(uint32 @maxPerStageDescriptorStorageBuffers) mut { maxPerStageDescriptorStorageBuffers = @maxPerStageDescriptorStorageBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorSampledImages(uint32 @maxPerStageDescriptorSampledImages) mut { maxPerStageDescriptorSampledImages = @maxPerStageDescriptorSampledImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorStorageImages(uint32 @maxPerStageDescriptorStorageImages) mut { maxPerStageDescriptorStorageImages = @maxPerStageDescriptorStorageImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorInputAttachments(uint32 @maxPerStageDescriptorInputAttachments) mut { maxPerStageDescriptorInputAttachments = @maxPerStageDescriptorInputAttachments;  return ref this; }
		public ref Self setMaxPerStageResources(uint32 @maxPerStageResources) mut { maxPerStageResources = @maxPerStageResources;  return ref this; }
		public ref Self setMaxDescriptorSetSamplers(uint32 @maxDescriptorSetSamplers) mut { maxDescriptorSetSamplers = @maxDescriptorSetSamplers;  return ref this; }
		public ref Self setMaxDescriptorSetUniformBuffers(uint32 @maxDescriptorSetUniformBuffers) mut { maxDescriptorSetUniformBuffers = @maxDescriptorSetUniformBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetUniformBuffersDynamic(uint32 @maxDescriptorSetUniformBuffersDynamic) mut { maxDescriptorSetUniformBuffersDynamic = @maxDescriptorSetUniformBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetStorageBuffers(uint32 @maxDescriptorSetStorageBuffers) mut { maxDescriptorSetStorageBuffers = @maxDescriptorSetStorageBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetStorageBuffersDynamic(uint32 @maxDescriptorSetStorageBuffersDynamic) mut { maxDescriptorSetStorageBuffersDynamic = @maxDescriptorSetStorageBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetSampledImages(uint32 @maxDescriptorSetSampledImages) mut { maxDescriptorSetSampledImages = @maxDescriptorSetSampledImages;  return ref this; }
		public ref Self setMaxDescriptorSetStorageImages(uint32 @maxDescriptorSetStorageImages) mut { maxDescriptorSetStorageImages = @maxDescriptorSetStorageImages;  return ref this; }
		public ref Self setMaxDescriptorSetInputAttachments(uint32 @maxDescriptorSetInputAttachments) mut { maxDescriptorSetInputAttachments = @maxDescriptorSetInputAttachments;  return ref this; }
		public ref Self setMaxVertexInputAttributes(uint32 @maxVertexInputAttributes) mut { maxVertexInputAttributes = @maxVertexInputAttributes;  return ref this; }
		public ref Self setMaxVertexInputBindings(uint32 @maxVertexInputBindings) mut { maxVertexInputBindings = @maxVertexInputBindings;  return ref this; }
		public ref Self setMaxVertexInputAttributeOffset(uint32 @maxVertexInputAttributeOffset) mut { maxVertexInputAttributeOffset = @maxVertexInputAttributeOffset;  return ref this; }
		public ref Self setMaxVertexInputBindingStride(uint32 @maxVertexInputBindingStride) mut { maxVertexInputBindingStride = @maxVertexInputBindingStride;  return ref this; }
		public ref Self setMaxVertexOutputComponents(uint32 @maxVertexOutputComponents) mut { maxVertexOutputComponents = @maxVertexOutputComponents;  return ref this; }
		public ref Self setMaxTessellationGenerationLevel(uint32 @maxTessellationGenerationLevel) mut { maxTessellationGenerationLevel = @maxTessellationGenerationLevel;  return ref this; }
		public ref Self setMaxTessellationPatchSize(uint32 @maxTessellationPatchSize) mut { maxTessellationPatchSize = @maxTessellationPatchSize;  return ref this; }
		public ref Self setMaxTessellationControlPerVertexInputComponents(uint32 @maxTessellationControlPerVertexInputComponents) mut { maxTessellationControlPerVertexInputComponents = @maxTessellationControlPerVertexInputComponents;  return ref this; }
		public ref Self setMaxTessellationControlPerVertexOutputComponents(uint32 @maxTessellationControlPerVertexOutputComponents) mut { maxTessellationControlPerVertexOutputComponents = @maxTessellationControlPerVertexOutputComponents;  return ref this; }
		public ref Self setMaxTessellationControlPerPatchOutputComponents(uint32 @maxTessellationControlPerPatchOutputComponents) mut { maxTessellationControlPerPatchOutputComponents = @maxTessellationControlPerPatchOutputComponents;  return ref this; }
		public ref Self setMaxTessellationControlTotalOutputComponents(uint32 @maxTessellationControlTotalOutputComponents) mut { maxTessellationControlTotalOutputComponents = @maxTessellationControlTotalOutputComponents;  return ref this; }
		public ref Self setMaxTessellationEvaluationInputComponents(uint32 @maxTessellationEvaluationInputComponents) mut { maxTessellationEvaluationInputComponents = @maxTessellationEvaluationInputComponents;  return ref this; }
		public ref Self setMaxTessellationEvaluationOutputComponents(uint32 @maxTessellationEvaluationOutputComponents) mut { maxTessellationEvaluationOutputComponents = @maxTessellationEvaluationOutputComponents;  return ref this; }
		public ref Self setMaxGeometryShaderInvocations(uint32 @maxGeometryShaderInvocations) mut { maxGeometryShaderInvocations = @maxGeometryShaderInvocations;  return ref this; }
		public ref Self setMaxGeometryInputComponents(uint32 @maxGeometryInputComponents) mut { maxGeometryInputComponents = @maxGeometryInputComponents;  return ref this; }
		public ref Self setMaxGeometryOutputComponents(uint32 @maxGeometryOutputComponents) mut { maxGeometryOutputComponents = @maxGeometryOutputComponents;  return ref this; }
		public ref Self setMaxGeometryOutputVertices(uint32 @maxGeometryOutputVertices) mut { maxGeometryOutputVertices = @maxGeometryOutputVertices;  return ref this; }
		public ref Self setMaxGeometryTotalOutputComponents(uint32 @maxGeometryTotalOutputComponents) mut { maxGeometryTotalOutputComponents = @maxGeometryTotalOutputComponents;  return ref this; }
		public ref Self setMaxFragmentInputComponents(uint32 @maxFragmentInputComponents) mut { maxFragmentInputComponents = @maxFragmentInputComponents;  return ref this; }
		public ref Self setMaxFragmentOutputAttachments(uint32 @maxFragmentOutputAttachments) mut { maxFragmentOutputAttachments = @maxFragmentOutputAttachments;  return ref this; }
		public ref Self setMaxFragmentDualSrcAttachments(uint32 @maxFragmentDualSrcAttachments) mut { maxFragmentDualSrcAttachments = @maxFragmentDualSrcAttachments;  return ref this; }
		public ref Self setMaxFragmentCombinedOutputResources(uint32 @maxFragmentCombinedOutputResources) mut { maxFragmentCombinedOutputResources = @maxFragmentCombinedOutputResources;  return ref this; }
		public ref Self setMaxComputeSharedMemorySize(uint32 @maxComputeSharedMemorySize) mut { maxComputeSharedMemorySize = @maxComputeSharedMemorySize;  return ref this; }
		public ref Self setMaxComputeWorkGroupCount(uint32[3] @maxComputeWorkGroupCount) mut { maxComputeWorkGroupCount = @maxComputeWorkGroupCount;  return ref this; }
		public ref Self setMaxComputeWorkGroupInvocations(uint32 @maxComputeWorkGroupInvocations) mut { maxComputeWorkGroupInvocations = @maxComputeWorkGroupInvocations;  return ref this; }
		public ref Self setMaxComputeWorkGroupSize(uint32[3] @maxComputeWorkGroupSize) mut { maxComputeWorkGroupSize = @maxComputeWorkGroupSize;  return ref this; }
		public ref Self setSubPixelPrecisionBits(uint32 @subPixelPrecisionBits) mut { subPixelPrecisionBits = @subPixelPrecisionBits;  return ref this; }
		public ref Self setSubTexelPrecisionBits(uint32 @subTexelPrecisionBits) mut { subTexelPrecisionBits = @subTexelPrecisionBits;  return ref this; }
		public ref Self setMipmapPrecisionBits(uint32 @mipmapPrecisionBits) mut { mipmapPrecisionBits = @mipmapPrecisionBits;  return ref this; }
		public ref Self setMaxDrawIndexedIndexValue(uint32 @maxDrawIndexedIndexValue) mut { maxDrawIndexedIndexValue = @maxDrawIndexedIndexValue;  return ref this; }
		public ref Self setMaxDrawIndirectCount(uint32 @maxDrawIndirectCount) mut { maxDrawIndirectCount = @maxDrawIndirectCount;  return ref this; }
		public ref Self setMaxSamplerLodBias(float @maxSamplerLodBias) mut { maxSamplerLodBias = @maxSamplerLodBias;  return ref this; }
		public ref Self setMaxSamplerAnisotropy(float @maxSamplerAnisotropy) mut { maxSamplerAnisotropy = @maxSamplerAnisotropy;  return ref this; }
		public ref Self setMaxViewports(uint32 @maxViewports) mut { maxViewports = @maxViewports;  return ref this; }
		public ref Self setMaxViewportDimensions(uint32[2] @maxViewportDimensions) mut { maxViewportDimensions = @maxViewportDimensions;  return ref this; }
		public ref Self setViewportBoundsRange(float[2] @viewportBoundsRange) mut { viewportBoundsRange = @viewportBoundsRange;  return ref this; }
		public ref Self setViewportSubPixelBits(uint32 @viewportSubPixelBits) mut { viewportSubPixelBits = @viewportSubPixelBits;  return ref this; }
		public ref Self setMinMemoryMapAlignment(uint @minMemoryMapAlignment) mut { minMemoryMapAlignment = @minMemoryMapAlignment;  return ref this; }
		public ref Self setMinTexelBufferOffsetAlignment(uint64 @minTexelBufferOffsetAlignment) mut { minTexelBufferOffsetAlignment = @minTexelBufferOffsetAlignment;  return ref this; }
		public ref Self setMinUniformBufferOffsetAlignment(uint64 @minUniformBufferOffsetAlignment) mut { minUniformBufferOffsetAlignment = @minUniformBufferOffsetAlignment;  return ref this; }
		public ref Self setMinStorageBufferOffsetAlignment(uint64 @minStorageBufferOffsetAlignment) mut { minStorageBufferOffsetAlignment = @minStorageBufferOffsetAlignment;  return ref this; }
		public ref Self setMinTexelOffset(int32 @minTexelOffset) mut { minTexelOffset = @minTexelOffset;  return ref this; }
		public ref Self setMaxTexelOffset(uint32 @maxTexelOffset) mut { maxTexelOffset = @maxTexelOffset;  return ref this; }
		public ref Self setMinTexelGatherOffset(int32 @minTexelGatherOffset) mut { minTexelGatherOffset = @minTexelGatherOffset;  return ref this; }
		public ref Self setMaxTexelGatherOffset(uint32 @maxTexelGatherOffset) mut { maxTexelGatherOffset = @maxTexelGatherOffset;  return ref this; }
		public ref Self setMinInterpolationOffset(float @minInterpolationOffset) mut { minInterpolationOffset = @minInterpolationOffset;  return ref this; }
		public ref Self setMaxInterpolationOffset(float @maxInterpolationOffset) mut { maxInterpolationOffset = @maxInterpolationOffset;  return ref this; }
		public ref Self setSubPixelInterpolationOffsetBits(uint32 @subPixelInterpolationOffsetBits) mut { subPixelInterpolationOffsetBits = @subPixelInterpolationOffsetBits;  return ref this; }
		public ref Self setMaxFramebufferWidth(uint32 @maxFramebufferWidth) mut { maxFramebufferWidth = @maxFramebufferWidth;  return ref this; }
		public ref Self setMaxFramebufferHeight(uint32 @maxFramebufferHeight) mut { maxFramebufferHeight = @maxFramebufferHeight;  return ref this; }
		public ref Self setMaxFramebufferLayers(uint32 @maxFramebufferLayers) mut { maxFramebufferLayers = @maxFramebufferLayers;  return ref this; }
		public ref Self setFramebufferColorSampleCounts(VkSampleCountFlags @framebufferColorSampleCounts) mut { framebufferColorSampleCounts = @framebufferColorSampleCounts;  return ref this; }
		public ref Self setFramebufferDepthSampleCounts(VkSampleCountFlags @framebufferDepthSampleCounts) mut { framebufferDepthSampleCounts = @framebufferDepthSampleCounts;  return ref this; }
		public ref Self setFramebufferStencilSampleCounts(VkSampleCountFlags @framebufferStencilSampleCounts) mut { framebufferStencilSampleCounts = @framebufferStencilSampleCounts;  return ref this; }
		public ref Self setFramebufferNoAttachmentsSampleCounts(VkSampleCountFlags @framebufferNoAttachmentsSampleCounts) mut { framebufferNoAttachmentsSampleCounts = @framebufferNoAttachmentsSampleCounts;  return ref this; }
		public ref Self setMaxColorAttachments(uint32 @maxColorAttachments) mut { maxColorAttachments = @maxColorAttachments;  return ref this; }
		public ref Self setSampledImageColorSampleCounts(VkSampleCountFlags @sampledImageColorSampleCounts) mut { sampledImageColorSampleCounts = @sampledImageColorSampleCounts;  return ref this; }
		public ref Self setSampledImageIntegerSampleCounts(VkSampleCountFlags @sampledImageIntegerSampleCounts) mut { sampledImageIntegerSampleCounts = @sampledImageIntegerSampleCounts;  return ref this; }
		public ref Self setSampledImageDepthSampleCounts(VkSampleCountFlags @sampledImageDepthSampleCounts) mut { sampledImageDepthSampleCounts = @sampledImageDepthSampleCounts;  return ref this; }
		public ref Self setSampledImageStencilSampleCounts(VkSampleCountFlags @sampledImageStencilSampleCounts) mut { sampledImageStencilSampleCounts = @sampledImageStencilSampleCounts;  return ref this; }
		public ref Self setStorageImageSampleCounts(VkSampleCountFlags @storageImageSampleCounts) mut { storageImageSampleCounts = @storageImageSampleCounts;  return ref this; }
		public ref Self setMaxSampleMaskWords(uint32 @maxSampleMaskWords) mut { maxSampleMaskWords = @maxSampleMaskWords;  return ref this; }
		public ref Self setTimestampComputeAndGraphics(VkBool32 @timestampComputeAndGraphics) mut { timestampComputeAndGraphics = @timestampComputeAndGraphics;  return ref this; }
		public ref Self setTimestampPeriod(float @timestampPeriod) mut { timestampPeriod = @timestampPeriod;  return ref this; }
		public ref Self setMaxClipDistances(uint32 @maxClipDistances) mut { maxClipDistances = @maxClipDistances;  return ref this; }
		public ref Self setMaxCullDistances(uint32 @maxCullDistances) mut { maxCullDistances = @maxCullDistances;  return ref this; }
		public ref Self setMaxCombinedClipAndCullDistances(uint32 @maxCombinedClipAndCullDistances) mut { maxCombinedClipAndCullDistances = @maxCombinedClipAndCullDistances;  return ref this; }
		public ref Self setDiscreteQueuePriorities(uint32 @discreteQueuePriorities) mut { discreteQueuePriorities = @discreteQueuePriorities;  return ref this; }
		public ref Self setPointSizeRange(float[2] @pointSizeRange) mut { pointSizeRange = @pointSizeRange;  return ref this; }
		public ref Self setLineWidthRange(float[2] @lineWidthRange) mut { lineWidthRange = @lineWidthRange;  return ref this; }
		public ref Self setPointSizeGranularity(float @pointSizeGranularity) mut { pointSizeGranularity = @pointSizeGranularity;  return ref this; }
		public ref Self setLineWidthGranularity(float @lineWidthGranularity) mut { lineWidthGranularity = @lineWidthGranularity;  return ref this; }
		public ref Self setStrictLines(VkBool32 @strictLines) mut { strictLines = @strictLines;  return ref this; }
		public ref Self setStandardSampleLocations(VkBool32 @standardSampleLocations) mut { standardSampleLocations = @standardSampleLocations;  return ref this; }
		public ref Self setOptimalBufferCopyOffsetAlignment(uint64 @optimalBufferCopyOffsetAlignment) mut { optimalBufferCopyOffsetAlignment = @optimalBufferCopyOffsetAlignment;  return ref this; }
		public ref Self setOptimalBufferCopyRowPitchAlignment(uint64 @optimalBufferCopyRowPitchAlignment) mut { optimalBufferCopyRowPitchAlignment = @optimalBufferCopyRowPitchAlignment;  return ref this; }
		public ref Self setNonCoherentAtomSize(uint64 @nonCoherentAtomSize) mut { nonCoherentAtomSize = @nonCoherentAtomSize;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkQueryPoolCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public VkQueryType queryType;
		public uint32 queryCount;
		public VkQueryPipelineStatisticFlags pipelineStatistics;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQueryType(VkQueryType @queryType) mut { queryType = @queryType;  return ref this; }
		public ref Self setQueryCount(uint32 @queryCount) mut { queryCount = @queryCount;  return ref this; }
		public ref Self setPipelineStatistics(VkQueryPipelineStatisticFlags @pipelineStatistics) mut { pipelineStatistics = @pipelineStatistics;  return ref this; }
	}

	[CRepr]
	public struct VkFramebufferCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO;
		public void* pNext = null;
		public VkFramebufferCreateFlags flags;
		public VkRenderPass renderPass;
		public uint32 attachmentCount;
		public VkImageView* pAttachments;
		public uint32 width;
		public uint32 height;
		public uint32 layers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkFramebufferCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRenderPass(VkRenderPass @renderPass) mut { renderPass = @renderPass;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPAttachments(VkImageView* @pAttachments) mut { pAttachments = @pAttachments;  return ref this; }
		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
		public ref Self setLayers(uint32 @layers) mut { layers = @layers;  return ref this; }
	}

	[CRepr]
	public struct VkDrawIndirectCommand
	{
		public uint32 vertexCount;
		public uint32 instanceCount;
		public uint32 firstVertex;
		public uint32 firstInstance;

		public ref Self setVertexCount(uint32 @vertexCount) mut { vertexCount = @vertexCount;  return ref this; }
		public ref Self setInstanceCount(uint32 @instanceCount) mut { instanceCount = @instanceCount;  return ref this; }
		public ref Self setFirstVertex(uint32 @firstVertex) mut { firstVertex = @firstVertex;  return ref this; }
		public ref Self setFirstInstance(uint32 @firstInstance) mut { firstInstance = @firstInstance;  return ref this; }
	}

	[CRepr]
	public struct VkDrawIndexedIndirectCommand
	{
		public uint32 indexCount;
		public uint32 instanceCount;
		public uint32 firstIndex;
		public int32 vertexOffset;
		public uint32 firstInstance;

		public ref Self setIndexCount(uint32 @indexCount) mut { indexCount = @indexCount;  return ref this; }
		public ref Self setInstanceCount(uint32 @instanceCount) mut { instanceCount = @instanceCount;  return ref this; }
		public ref Self setFirstIndex(uint32 @firstIndex) mut { firstIndex = @firstIndex;  return ref this; }
		public ref Self setVertexOffset(int32 @vertexOffset) mut { vertexOffset = @vertexOffset;  return ref this; }
		public ref Self setFirstInstance(uint32 @firstInstance) mut { firstInstance = @firstInstance;  return ref this; }
	}

	[CRepr]
	public struct VkDispatchIndirectCommand
	{
		public uint32 x;
		public uint32 y;
		public uint32 z;

		public ref Self setX(uint32 @x) mut { x = @x;  return ref this; }
		public ref Self setY(uint32 @y) mut { y = @y;  return ref this; }
		public ref Self setZ(uint32 @z) mut { z = @z;  return ref this; }
	}

	[CRepr]
	public struct VkMultiDrawInfoEXT
	{
		public uint32 firstVertex;
		public uint32 vertexCount;

		public ref Self setFirstVertex(uint32 @firstVertex) mut { firstVertex = @firstVertex;  return ref this; }
		public ref Self setVertexCount(uint32 @vertexCount) mut { vertexCount = @vertexCount;  return ref this; }
	}

	[CRepr]
	public struct VkMultiDrawIndexedInfoEXT
	{
		public uint32 firstIndex;
		public uint32 indexCount;
		public int32 vertexOffset;

		public ref Self setFirstIndex(uint32 @firstIndex) mut { firstIndex = @firstIndex;  return ref this; }
		public ref Self setIndexCount(uint32 @indexCount) mut { indexCount = @indexCount;  return ref this; }
		public ref Self setVertexOffset(int32 @vertexOffset) mut { vertexOffset = @vertexOffset;  return ref this; }
	}

	[CRepr]
	public struct VkSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBMIT_INFO;
		public void* pNext = null;
		public uint32 waitSemaphoreCount;
		public VkSemaphore* pWaitSemaphores;
		public VkPipelineStageFlags* pWaitDstStageMask;
		public uint32 commandBufferCount;
		public VkCommandBuffer* pCommandBuffers;
		public uint32 signalSemaphoreCount;
		public VkSemaphore* pSignalSemaphores;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreCount(uint32 @waitSemaphoreCount) mut { waitSemaphoreCount = @waitSemaphoreCount;  return ref this; }
		public ref Self setPWaitSemaphores(VkSemaphore* @pWaitSemaphores) mut { pWaitSemaphores = @pWaitSemaphores;  return ref this; }
		public ref Self setPWaitDstStageMask(VkPipelineStageFlags* @pWaitDstStageMask) mut { pWaitDstStageMask = @pWaitDstStageMask;  return ref this; }
		public ref Self setCommandBufferCount(uint32 @commandBufferCount) mut { commandBufferCount = @commandBufferCount;  return ref this; }
		public ref Self setPCommandBuffers(VkCommandBuffer* @pCommandBuffers) mut { pCommandBuffers = @pCommandBuffers;  return ref this; }
		public ref Self setSignalSemaphoreCount(uint32 @signalSemaphoreCount) mut { signalSemaphoreCount = @signalSemaphoreCount;  return ref this; }
		public ref Self setPSignalSemaphores(VkSemaphore* @pSignalSemaphores) mut { pSignalSemaphores = @pSignalSemaphores;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPropertiesKHR
	{
		public VkDisplayKHR display;
		public char8* displayName;
		public VkExtent2D physicalDimensions;
		public VkExtent2D physicalResolution;
		public VkSurfaceTransformFlagsKHR supportedTransforms;
		public VkBool32 planeReorderPossible;
		public VkBool32 persistentContent;

		public ref Self setDisplay(VkDisplayKHR @display) mut { display = @display;  return ref this; }
		public ref Self setDisplayName(char8* @displayName) mut { displayName = @displayName;  return ref this; }
		public ref Self setPhysicalDimensions(VkExtent2D @physicalDimensions) mut { physicalDimensions = @physicalDimensions;  return ref this; }
		public ref Self setPhysicalResolution(VkExtent2D @physicalResolution) mut { physicalResolution = @physicalResolution;  return ref this; }
		public ref Self setSupportedTransforms(VkSurfaceTransformFlagsKHR @supportedTransforms) mut { supportedTransforms = @supportedTransforms;  return ref this; }
		public ref Self setPlaneReorderPossible(VkBool32 @planeReorderPossible) mut { planeReorderPossible = @planeReorderPossible;  return ref this; }
		public ref Self setPersistentContent(VkBool32 @persistentContent) mut { persistentContent = @persistentContent;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPlanePropertiesKHR
	{
		public VkDisplayKHR currentDisplay;
		public uint32 currentStackIndex;

		public ref Self setCurrentDisplay(VkDisplayKHR @currentDisplay) mut { currentDisplay = @currentDisplay;  return ref this; }
		public ref Self setCurrentStackIndex(uint32 @currentStackIndex) mut { currentStackIndex = @currentStackIndex;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayModeParametersKHR
	{
		public VkExtent2D visibleRegion;
		public uint32 refreshRate;

		public ref Self setVisibleRegion(VkExtent2D @visibleRegion) mut { visibleRegion = @visibleRegion;  return ref this; }
		public ref Self setRefreshRate(uint32 @refreshRate) mut { refreshRate = @refreshRate;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayModePropertiesKHR
	{
		public VkDisplayModeKHR displayMode;
		public VkDisplayModeParametersKHR parameters;

		public ref Self setDisplayMode(VkDisplayModeKHR @displayMode) mut { displayMode = @displayMode;  return ref this; }
		public ref Self setParameters(VkDisplayModeParametersKHR @parameters) mut { parameters = @parameters;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayModeCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public VkDisplayModeParametersKHR parameters;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setParameters(VkDisplayModeParametersKHR @parameters) mut { parameters = @parameters;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPlaneCapabilitiesKHR
	{
		public VkDisplayPlaneAlphaFlagsKHR supportedAlpha;
		public VkOffset2D minSrcPosition;
		public VkOffset2D maxSrcPosition;
		public VkExtent2D minSrcExtent;
		public VkExtent2D maxSrcExtent;
		public VkOffset2D minDstPosition;
		public VkOffset2D maxDstPosition;
		public VkExtent2D minDstExtent;
		public VkExtent2D maxDstExtent;

		public ref Self setSupportedAlpha(VkDisplayPlaneAlphaFlagsKHR @supportedAlpha) mut { supportedAlpha = @supportedAlpha;  return ref this; }
		public ref Self setMinSrcPosition(VkOffset2D @minSrcPosition) mut { minSrcPosition = @minSrcPosition;  return ref this; }
		public ref Self setMaxSrcPosition(VkOffset2D @maxSrcPosition) mut { maxSrcPosition = @maxSrcPosition;  return ref this; }
		public ref Self setMinSrcExtent(VkExtent2D @minSrcExtent) mut { minSrcExtent = @minSrcExtent;  return ref this; }
		public ref Self setMaxSrcExtent(VkExtent2D @maxSrcExtent) mut { maxSrcExtent = @maxSrcExtent;  return ref this; }
		public ref Self setMinDstPosition(VkOffset2D @minDstPosition) mut { minDstPosition = @minDstPosition;  return ref this; }
		public ref Self setMaxDstPosition(VkOffset2D @maxDstPosition) mut { maxDstPosition = @maxDstPosition;  return ref this; }
		public ref Self setMinDstExtent(VkExtent2D @minDstExtent) mut { minDstExtent = @minDstExtent;  return ref this; }
		public ref Self setMaxDstExtent(VkExtent2D @maxDstExtent) mut { maxDstExtent = @maxDstExtent;  return ref this; }
	}

	[CRepr]
	public struct VkDisplaySurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public VkDisplayModeKHR displayMode;
		public uint32 planeIndex;
		public uint32 planeStackIndex;
		public VkSurfaceTransformFlagsKHR transform;
		public float globalAlpha;
		public VkDisplayPlaneAlphaFlagsKHR alphaMode;
		public VkExtent2D imageExtent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDisplayMode(VkDisplayModeKHR @displayMode) mut { displayMode = @displayMode;  return ref this; }
		public ref Self setPlaneIndex(uint32 @planeIndex) mut { planeIndex = @planeIndex;  return ref this; }
		public ref Self setPlaneStackIndex(uint32 @planeStackIndex) mut { planeStackIndex = @planeStackIndex;  return ref this; }
		public ref Self setTransform(VkSurfaceTransformFlagsKHR @transform) mut { transform = @transform;  return ref this; }
		public ref Self setGlobalAlpha(float @globalAlpha) mut { globalAlpha = @globalAlpha;  return ref this; }
		public ref Self setAlphaMode(VkDisplayPlaneAlphaFlagsKHR @alphaMode) mut { alphaMode = @alphaMode;  return ref this; }
		public ref Self setImageExtent(VkExtent2D @imageExtent) mut { imageExtent = @imageExtent;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPresentInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR;
		public void* pNext = null;
		public VkRect2D srcRect;
		public VkRect2D dstRect;
		public VkBool32 persistent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcRect(VkRect2D @srcRect) mut { srcRect = @srcRect;  return ref this; }
		public ref Self setDstRect(VkRect2D @dstRect) mut { dstRect = @dstRect;  return ref this; }
		public ref Self setPersistent(VkBool32 @persistent) mut { persistent = @persistent;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceCapabilitiesKHR
	{
		public uint32 minImageCount;
		public uint32 maxImageCount;
		public VkExtent2D currentExtent;
		public VkExtent2D minImageExtent;
		public VkExtent2D maxImageExtent;
		public uint32 maxImageArrayLayers;
		public VkSurfaceTransformFlagsKHR supportedTransforms;
		public VkSurfaceTransformFlagsKHR currentTransform;
		public VkCompositeAlphaFlagsKHR supportedCompositeAlpha;
		public VkImageUsageFlags supportedUsageFlags;

		public ref Self setMinImageCount(uint32 @minImageCount) mut { minImageCount = @minImageCount;  return ref this; }
		public ref Self setMaxImageCount(uint32 @maxImageCount) mut { maxImageCount = @maxImageCount;  return ref this; }
		public ref Self setCurrentExtent(VkExtent2D @currentExtent) mut { currentExtent = @currentExtent;  return ref this; }
		public ref Self setMinImageExtent(VkExtent2D @minImageExtent) mut { minImageExtent = @minImageExtent;  return ref this; }
		public ref Self setMaxImageExtent(VkExtent2D @maxImageExtent) mut { maxImageExtent = @maxImageExtent;  return ref this; }
		public ref Self setMaxImageArrayLayers(uint32 @maxImageArrayLayers) mut { maxImageArrayLayers = @maxImageArrayLayers;  return ref this; }
		public ref Self setSupportedTransforms(VkSurfaceTransformFlagsKHR @supportedTransforms) mut { supportedTransforms = @supportedTransforms;  return ref this; }
		public ref Self setCurrentTransform(VkSurfaceTransformFlagsKHR @currentTransform) mut { currentTransform = @currentTransform;  return ref this; }
		public ref Self setSupportedCompositeAlpha(VkCompositeAlphaFlagsKHR @supportedCompositeAlpha) mut { supportedCompositeAlpha = @supportedCompositeAlpha;  return ref this; }
		public ref Self setSupportedUsageFlags(VkImageUsageFlags @supportedUsageFlags) mut { supportedUsageFlags = @supportedUsageFlags;  return ref this; }
	}

	[CRepr]
	public struct VkAndroidSurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public void* window;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setWindow(void* @window) mut { window = @window;  return ref this; }
	}

	[CRepr]
	public struct VkViSurfaceCreateInfoNN
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN;
		public void* pNext = null;
		public uint32 flags;
		public void* window;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setWindow(void* @window) mut { window = @window;  return ref this; }
	}

	[CRepr]
	public struct VkWaylandSurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public void* display;
		public void* surface;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDisplay(void* @display) mut { display = @display;  return ref this; }
		public ref Self setSurface(void* @surface) mut { surface = @surface;  return ref this; }
	}

	[CRepr]
	public struct VkWin32SurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public void* hinstance;
		public void* hwnd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHinstance(void* @hinstance) mut { hinstance = @hinstance;  return ref this; }
		public ref Self setHwnd(void* @hwnd) mut { hwnd = @hwnd;  return ref this; }
	}

	[CRepr]
	public struct VkXlibSurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public void* dpy;
		public void* window;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDpy(void* @dpy) mut { dpy = @dpy;  return ref this; }
		public ref Self setWindow(void* @window) mut { window = @window;  return ref this; }
	}

	[CRepr]
	public struct VkXcbSurfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public void* connection;
		public void* window;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setConnection(void* @connection) mut { connection = @connection;  return ref this; }
		public ref Self setWindow(void* @window) mut { window = @window;  return ref this; }
	}

	[CRepr]
	public struct VkDirectFBSurfaceCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public void* dfb;
		public void* surface;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDfb(void* @dfb) mut { dfb = @dfb;  return ref this; }
		public ref Self setSurface(void* @surface) mut { surface = @surface;  return ref this; }
	}

	[CRepr]
	public struct VkImagePipeSurfaceCreateInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA;
		public void* pNext = null;
		public uint32 flags;
		public void* imagePipeHandle;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setImagePipeHandle(void* @imagePipeHandle) mut { imagePipeHandle = @imagePipeHandle;  return ref this; }
	}

	[CRepr]
	public struct VkStreamDescriptorSurfaceCreateInfoGGP
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP;
		public void* pNext = null;
		public uint32 flags;
		public void* streamDescriptor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStreamDescriptor(void* @streamDescriptor) mut { streamDescriptor = @streamDescriptor;  return ref this; }
	}

	[CRepr]
	public struct VkScreenSurfaceCreateInfoQNX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SCREEN_SURFACE_CREATE_INFO_QNX;
		public void* pNext = null;
		public uint32 flags;
		public void* context;
		public void* window;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setContext(void* @context) mut { context = @context;  return ref this; }
		public ref Self setWindow(void* @window) mut { window = @window;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceFormatKHR
	{
		public VkFormat format;
		public VkColorSpaceKHR colorSpace;

		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setColorSpace(VkColorSpaceKHR @colorSpace) mut { colorSpace = @colorSpace;  return ref this; }
	}

	[CRepr]
	public struct VkSwapchainCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkSwapchainCreateFlagsKHR flags;
		public VkSurfaceKHR surface;
		public uint32 minImageCount;
		public VkFormat imageFormat;
		public VkColorSpaceKHR imageColorSpace;
		public VkExtent2D imageExtent;
		public uint32 imageArrayLayers;
		public VkImageUsageFlags imageUsage;
		public VkSharingMode imageSharingMode;
		public uint32 queueFamilyIndexCount;
		public uint32* pQueueFamilyIndices;
		public VkSurfaceTransformFlagsKHR preTransform;
		public VkCompositeAlphaFlagsKHR compositeAlpha;
		public VkPresentModeKHR presentMode;
		public VkBool32 clipped;
		public VkSwapchainKHR oldSwapchain;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkSwapchainCreateFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSurface(VkSurfaceKHR @surface) mut { surface = @surface;  return ref this; }
		public ref Self setMinImageCount(uint32 @minImageCount) mut { minImageCount = @minImageCount;  return ref this; }
		public ref Self setImageFormat(VkFormat @imageFormat) mut { imageFormat = @imageFormat;  return ref this; }
		public ref Self setImageColorSpace(VkColorSpaceKHR @imageColorSpace) mut { imageColorSpace = @imageColorSpace;  return ref this; }
		public ref Self setImageExtent(VkExtent2D @imageExtent) mut { imageExtent = @imageExtent;  return ref this; }
		public ref Self setImageArrayLayers(uint32 @imageArrayLayers) mut { imageArrayLayers = @imageArrayLayers;  return ref this; }
		public ref Self setImageUsage(VkImageUsageFlags @imageUsage) mut { imageUsage = @imageUsage;  return ref this; }
		public ref Self setImageSharingMode(VkSharingMode @imageSharingMode) mut { imageSharingMode = @imageSharingMode;  return ref this; }
		public ref Self setQueueFamilyIndexCount(uint32 @queueFamilyIndexCount) mut { queueFamilyIndexCount = @queueFamilyIndexCount;  return ref this; }
		public ref Self setPQueueFamilyIndices(uint32* @pQueueFamilyIndices) mut { pQueueFamilyIndices = @pQueueFamilyIndices;  return ref this; }
		public ref Self setPreTransform(VkSurfaceTransformFlagsKHR @preTransform) mut { preTransform = @preTransform;  return ref this; }
		public ref Self setCompositeAlpha(VkCompositeAlphaFlagsKHR @compositeAlpha) mut { compositeAlpha = @compositeAlpha;  return ref this; }
		public ref Self setPresentMode(VkPresentModeKHR @presentMode) mut { presentMode = @presentMode;  return ref this; }
		public ref Self setClipped(VkBool32 @clipped) mut { clipped = @clipped;  return ref this; }
		public ref Self setOldSwapchain(VkSwapchainKHR @oldSwapchain) mut { oldSwapchain = @oldSwapchain;  return ref this; }
	}

	[CRepr]
	public struct VkPresentInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
		public void* pNext = null;
		public uint32 waitSemaphoreCount;
		public VkSemaphore* pWaitSemaphores;
		public uint32 swapchainCount;
		public VkSwapchainKHR* pSwapchains;
		public uint32* pImageIndices;
		public VkResult* pResults;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreCount(uint32 @waitSemaphoreCount) mut { waitSemaphoreCount = @waitSemaphoreCount;  return ref this; }
		public ref Self setPWaitSemaphores(VkSemaphore* @pWaitSemaphores) mut { pWaitSemaphores = @pWaitSemaphores;  return ref this; }
		public ref Self setSwapchainCount(uint32 @swapchainCount) mut { swapchainCount = @swapchainCount;  return ref this; }
		public ref Self setPSwapchains(VkSwapchainKHR* @pSwapchains) mut { pSwapchains = @pSwapchains;  return ref this; }
		public ref Self setPImageIndices(uint32* @pImageIndices) mut { pImageIndices = @pImageIndices;  return ref this; }
		public ref Self setPResults(VkResult* @pResults) mut { pResults = @pResults;  return ref this; }
	}

	[CRepr]
	public struct VkDebugReportCallbackCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkDebugReportFlagsEXT flags;
		public void* pfnCallback;
		public void* pUserData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDebugReportFlagsEXT @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPfnCallback(void* @pfnCallback) mut { pfnCallback = @pfnCallback;  return ref this; }
		public ref Self setPUserData(void* @pUserData) mut { pUserData = @pUserData;  return ref this; }
	}

	[CRepr]
	public struct VkValidationFlagsEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT;
		public void* pNext = null;
		public uint32 disabledValidationCheckCount;
		public VkValidationCheckEXT* pDisabledValidationChecks;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisabledValidationCheckCount(uint32 @disabledValidationCheckCount) mut { disabledValidationCheckCount = @disabledValidationCheckCount;  return ref this; }
		public ref Self setPDisabledValidationChecks(VkValidationCheckEXT* @pDisabledValidationChecks) mut { pDisabledValidationChecks = @pDisabledValidationChecks;  return ref this; }
	}

	[CRepr]
	public struct VkValidationFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT;
		public void* pNext = null;
		public uint32 enabledValidationFeatureCount;
		public VkValidationFeatureEnableEXT* pEnabledValidationFeatures;
		public uint32 disabledValidationFeatureCount;
		public VkValidationFeatureDisableEXT* pDisabledValidationFeatures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setEnabledValidationFeatureCount(uint32 @enabledValidationFeatureCount) mut { enabledValidationFeatureCount = @enabledValidationFeatureCount;  return ref this; }
		public ref Self setPEnabledValidationFeatures(VkValidationFeatureEnableEXT* @pEnabledValidationFeatures) mut { pEnabledValidationFeatures = @pEnabledValidationFeatures;  return ref this; }
		public ref Self setDisabledValidationFeatureCount(uint32 @disabledValidationFeatureCount) mut { disabledValidationFeatureCount = @disabledValidationFeatureCount;  return ref this; }
		public ref Self setPDisabledValidationFeatures(VkValidationFeatureDisableEXT* @pDisabledValidationFeatures) mut { pDisabledValidationFeatures = @pDisabledValidationFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationStateRasterizationOrderAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD;
		public void* pNext = null;
		public VkRasterizationOrderAMD rasterizationOrder;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRasterizationOrder(VkRasterizationOrderAMD @rasterizationOrder) mut { rasterizationOrder = @rasterizationOrder;  return ref this; }
	}

	[CRepr]
	public struct VkDebugMarkerObjectNameInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT;
		public void* pNext = null;
		public VkDebugReportObjectTypeEXT objectType;
		public uint64 object;
		public char8* pObjectName;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setObjectType(VkDebugReportObjectTypeEXT @objectType) mut { objectType = @objectType;  return ref this; }
		public ref Self setObject(uint64 @object) mut { object = @object;  return ref this; }
		public ref Self setPObjectName(char8* @pObjectName) mut { pObjectName = @pObjectName;  return ref this; }
	}

	[CRepr]
	public struct VkDebugMarkerObjectTagInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT;
		public void* pNext = null;
		public VkDebugReportObjectTypeEXT objectType;
		public uint64 object;
		public uint64 tagName;
		public uint tagSize;
		public void* pTag;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setObjectType(VkDebugReportObjectTypeEXT @objectType) mut { objectType = @objectType;  return ref this; }
		public ref Self setObject(uint64 @object) mut { object = @object;  return ref this; }
		public ref Self setTagName(uint64 @tagName) mut { tagName = @tagName;  return ref this; }
		public ref Self setTagSize(uint @tagSize) mut { tagSize = @tagSize;  return ref this; }
		public ref Self setPTag(void* @pTag) mut { pTag = @pTag;  return ref this; }
	}

	[CRepr]
	public struct VkDebugMarkerMarkerInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT;
		public void* pNext = null;
		public char8* pMarkerName;
		public float[4] color;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPMarkerName(char8* @pMarkerName) mut { pMarkerName = @pMarkerName;  return ref this; }
		public ref Self setColor(float[4] @color) mut { color = @color;  return ref this; }
	}

	[CRepr]
	public struct VkDedicatedAllocationImageCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkBool32 dedicatedAllocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDedicatedAllocation(VkBool32 @dedicatedAllocation) mut { dedicatedAllocation = @dedicatedAllocation;  return ref this; }
	}

	[CRepr]
	public struct VkDedicatedAllocationBufferCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV;
		public void* pNext = null;
		public VkBool32 dedicatedAllocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDedicatedAllocation(VkBool32 @dedicatedAllocation) mut { dedicatedAllocation = @dedicatedAllocation;  return ref this; }
	}

	[CRepr]
	public struct VkDedicatedAllocationMemoryAllocateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV;
		public void* pNext = null;
		public VkImage image;
		public VkBuffer buffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
	}

	[CRepr]
	public struct VkExternalImageFormatPropertiesNV
	{
		public VkImageFormatProperties imageFormatProperties;
		public VkExternalMemoryFeatureFlagsNV externalMemoryFeatures;
		public VkExternalMemoryHandleTypeFlagsNV exportFromImportedHandleTypes;
		public VkExternalMemoryHandleTypeFlagsNV compatibleHandleTypes;

		public ref Self setImageFormatProperties(VkImageFormatProperties @imageFormatProperties) mut { imageFormatProperties = @imageFormatProperties;  return ref this; }
		public ref Self setExternalMemoryFeatures(VkExternalMemoryFeatureFlagsNV @externalMemoryFeatures) mut { externalMemoryFeatures = @externalMemoryFeatures;  return ref this; }
		public ref Self setExportFromImportedHandleTypes(VkExternalMemoryHandleTypeFlagsNV @exportFromImportedHandleTypes) mut { exportFromImportedHandleTypes = @exportFromImportedHandleTypes;  return ref this; }
		public ref Self setCompatibleHandleTypes(VkExternalMemoryHandleTypeFlagsNV @compatibleHandleTypes) mut { compatibleHandleTypes = @compatibleHandleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkExternalMemoryImageCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlagsNV handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalMemoryHandleTypeFlagsNV @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkExportMemoryAllocateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlagsNV handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalMemoryHandleTypeFlagsNV @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryWin32HandleInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlagsNV handleType;
		public void* handle;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlagsNV @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
	}

	[CRepr]
	public struct VkExportMemoryWin32HandleInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV;
		public void* pNext = null;
		public void* pAttributes;
		public void* dwAccess;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPAttributes(void* @pAttributes) mut { pAttributes = @pAttributes;  return ref this; }
		public ref Self setDwAccess(void* @dwAccess) mut { dwAccess = @dwAccess;  return ref this; }
	}

	[CRepr]
	public struct VkWin32KeyedMutexAcquireReleaseInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV;
		public void* pNext = null;
		public uint32 acquireCount;
		public VkDeviceMemory* pAcquireSyncs;
		public uint64* pAcquireKeys;
		public uint32* pAcquireTimeoutMilliseconds;
		public uint32 releaseCount;
		public VkDeviceMemory* pReleaseSyncs;
		public uint64* pReleaseKeys;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAcquireCount(uint32 @acquireCount) mut { acquireCount = @acquireCount;  return ref this; }
		public ref Self setPAcquireSyncs(VkDeviceMemory* @pAcquireSyncs) mut { pAcquireSyncs = @pAcquireSyncs;  return ref this; }
		public ref Self setPAcquireKeys(uint64* @pAcquireKeys) mut { pAcquireKeys = @pAcquireKeys;  return ref this; }
		public ref Self setPAcquireTimeoutMilliseconds(uint32* @pAcquireTimeoutMilliseconds) mut { pAcquireTimeoutMilliseconds = @pAcquireTimeoutMilliseconds;  return ref this; }
		public ref Self setReleaseCount(uint32 @releaseCount) mut { releaseCount = @releaseCount;  return ref this; }
		public ref Self setPReleaseSyncs(VkDeviceMemory* @pReleaseSyncs) mut { pReleaseSyncs = @pReleaseSyncs;  return ref this; }
		public ref Self setPReleaseKeys(uint64* @pReleaseKeys) mut { pReleaseKeys = @pReleaseKeys;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 deviceGeneratedCommands;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceGeneratedCommands(VkBool32 @deviceGeneratedCommands) mut { deviceGeneratedCommands = @deviceGeneratedCommands;  return ref this; }
	}

	[CRepr]
	public struct VkDevicePrivateDataCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO;
		public void* pNext = null;
		public uint32 privateDataSlotRequestCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrivateDataSlotRequestCount(uint32 @privateDataSlotRequestCount) mut { privateDataSlotRequestCount = @privateDataSlotRequestCount;  return ref this; }
	}

	[CRepr]
	public struct VkPrivateDataSlotCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePrivateDataFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES;
		public void* pNext = null;
		public VkBool32 privateData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrivateData(VkBool32 @privateData) mut { privateData = @privateData;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV;
		public void* pNext = null;
		public uint32 maxGraphicsShaderGroupCount;
		public uint32 maxIndirectSequenceCount;
		public uint32 maxIndirectCommandsTokenCount;
		public uint32 maxIndirectCommandsStreamCount;
		public uint32 maxIndirectCommandsTokenOffset;
		public uint32 maxIndirectCommandsStreamStride;
		public uint32 minSequencesCountBufferOffsetAlignment;
		public uint32 minSequencesIndexBufferOffsetAlignment;
		public uint32 minIndirectCommandsBufferOffsetAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxGraphicsShaderGroupCount(uint32 @maxGraphicsShaderGroupCount) mut { maxGraphicsShaderGroupCount = @maxGraphicsShaderGroupCount;  return ref this; }
		public ref Self setMaxIndirectSequenceCount(uint32 @maxIndirectSequenceCount) mut { maxIndirectSequenceCount = @maxIndirectSequenceCount;  return ref this; }
		public ref Self setMaxIndirectCommandsTokenCount(uint32 @maxIndirectCommandsTokenCount) mut { maxIndirectCommandsTokenCount = @maxIndirectCommandsTokenCount;  return ref this; }
		public ref Self setMaxIndirectCommandsStreamCount(uint32 @maxIndirectCommandsStreamCount) mut { maxIndirectCommandsStreamCount = @maxIndirectCommandsStreamCount;  return ref this; }
		public ref Self setMaxIndirectCommandsTokenOffset(uint32 @maxIndirectCommandsTokenOffset) mut { maxIndirectCommandsTokenOffset = @maxIndirectCommandsTokenOffset;  return ref this; }
		public ref Self setMaxIndirectCommandsStreamStride(uint32 @maxIndirectCommandsStreamStride) mut { maxIndirectCommandsStreamStride = @maxIndirectCommandsStreamStride;  return ref this; }
		public ref Self setMinSequencesCountBufferOffsetAlignment(uint32 @minSequencesCountBufferOffsetAlignment) mut { minSequencesCountBufferOffsetAlignment = @minSequencesCountBufferOffsetAlignment;  return ref this; }
		public ref Self setMinSequencesIndexBufferOffsetAlignment(uint32 @minSequencesIndexBufferOffsetAlignment) mut { minSequencesIndexBufferOffsetAlignment = @minSequencesIndexBufferOffsetAlignment;  return ref this; }
		public ref Self setMinIndirectCommandsBufferOffsetAlignment(uint32 @minIndirectCommandsBufferOffsetAlignment) mut { minIndirectCommandsBufferOffsetAlignment = @minIndirectCommandsBufferOffsetAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMultiDrawPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 maxMultiDrawCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxMultiDrawCount(uint32 @maxMultiDrawCount) mut { maxMultiDrawCount = @maxMultiDrawCount;  return ref this; }
	}

	[CRepr]
	public struct VkGraphicsShaderGroupCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 stageCount;
		public VkPipelineShaderStageCreateInfo* pStages;
		public VkPipelineVertexInputStateCreateInfo* pVertexInputState;
		public VkPipelineTessellationStateCreateInfo* pTessellationState;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStageCount(uint32 @stageCount) mut { stageCount = @stageCount;  return ref this; }
		public ref Self setPStages(VkPipelineShaderStageCreateInfo* @pStages) mut { pStages = @pStages;  return ref this; }
		public ref Self setPVertexInputState(VkPipelineVertexInputStateCreateInfo* @pVertexInputState) mut { pVertexInputState = @pVertexInputState;  return ref this; }
		public ref Self setPTessellationState(VkPipelineTessellationStateCreateInfo* @pTessellationState) mut { pTessellationState = @pTessellationState;  return ref this; }
	}

	[CRepr]
	public struct VkGraphicsPipelineShaderGroupsCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 groupCount;
		public VkGraphicsShaderGroupCreateInfoNV* pGroups;
		public uint32 pipelineCount;
		public VkPipeline* pPipelines;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGroupCount(uint32 @groupCount) mut { groupCount = @groupCount;  return ref this; }
		public ref Self setPGroups(VkGraphicsShaderGroupCreateInfoNV* @pGroups) mut { pGroups = @pGroups;  return ref this; }
		public ref Self setPipelineCount(uint32 @pipelineCount) mut { pipelineCount = @pipelineCount;  return ref this; }
		public ref Self setPPipelines(VkPipeline* @pPipelines) mut { pPipelines = @pPipelines;  return ref this; }
	}

	[CRepr]
	public struct VkBindShaderGroupIndirectCommandNV
	{
		public uint32 groupIndex;

		public ref Self setGroupIndex(uint32 @groupIndex) mut { groupIndex = @groupIndex;  return ref this; }
	}

	[CRepr]
	public struct VkBindIndexBufferIndirectCommandNV
	{
		public uint64 bufferAddress;
		public uint32 size;
		public VkIndexType indexType;

		public ref Self setBufferAddress(uint64 @bufferAddress) mut { bufferAddress = @bufferAddress;  return ref this; }
		public ref Self setSize(uint32 @size) mut { size = @size;  return ref this; }
		public ref Self setIndexType(VkIndexType @indexType) mut { indexType = @indexType;  return ref this; }
	}

	[CRepr]
	public struct VkBindVertexBufferIndirectCommandNV
	{
		public uint64 bufferAddress;
		public uint32 size;
		public uint32 stride;

		public ref Self setBufferAddress(uint64 @bufferAddress) mut { bufferAddress = @bufferAddress;  return ref this; }
		public ref Self setSize(uint32 @size) mut { size = @size;  return ref this; }
		public ref Self setStride(uint32 @stride) mut { stride = @stride;  return ref this; }
	}

	[CRepr]
	public struct VkSetStateFlagsIndirectCommandNV
	{
		public uint32 data;

		public ref Self setData(uint32 @data) mut { data = @data;  return ref this; }
	}

	[CRepr]
	public struct VkIndirectCommandsStreamNV
	{
		public VkBuffer buffer;
		public uint64 offset;

		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
	}

	[CRepr]
	public struct VkIndirectCommandsLayoutTokenNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV;
		public void* pNext = null;
		public VkIndirectCommandsTokenTypeNV tokenType;
		public uint32 stream;
		public uint32 offset;
		public uint32 vertexBindingUnit;
		public VkBool32 vertexDynamicStride;
		public VkPipelineLayout pushconstantPipelineLayout;
		public VkShaderStageFlags pushconstantShaderStageFlags;
		public uint32 pushconstantOffset;
		public uint32 pushconstantSize;
		public VkIndirectStateFlagsNV indirectStateFlags;
		public uint32 indexTypeCount;
		public VkIndexType* pIndexTypes;
		public uint32* pIndexTypeValues;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTokenType(VkIndirectCommandsTokenTypeNV @tokenType) mut { tokenType = @tokenType;  return ref this; }
		public ref Self setStream(uint32 @stream) mut { stream = @stream;  return ref this; }
		public ref Self setOffset(uint32 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setVertexBindingUnit(uint32 @vertexBindingUnit) mut { vertexBindingUnit = @vertexBindingUnit;  return ref this; }
		public ref Self setVertexDynamicStride(VkBool32 @vertexDynamicStride) mut { vertexDynamicStride = @vertexDynamicStride;  return ref this; }
		public ref Self setPushconstantPipelineLayout(VkPipelineLayout @pushconstantPipelineLayout) mut { pushconstantPipelineLayout = @pushconstantPipelineLayout;  return ref this; }
		public ref Self setPushconstantShaderStageFlags(VkShaderStageFlags @pushconstantShaderStageFlags) mut { pushconstantShaderStageFlags = @pushconstantShaderStageFlags;  return ref this; }
		public ref Self setPushconstantOffset(uint32 @pushconstantOffset) mut { pushconstantOffset = @pushconstantOffset;  return ref this; }
		public ref Self setPushconstantSize(uint32 @pushconstantSize) mut { pushconstantSize = @pushconstantSize;  return ref this; }
		public ref Self setIndirectStateFlags(VkIndirectStateFlagsNV @indirectStateFlags) mut { indirectStateFlags = @indirectStateFlags;  return ref this; }
		public ref Self setIndexTypeCount(uint32 @indexTypeCount) mut { indexTypeCount = @indexTypeCount;  return ref this; }
		public ref Self setPIndexTypes(VkIndexType* @pIndexTypes) mut { pIndexTypes = @pIndexTypes;  return ref this; }
		public ref Self setPIndexTypeValues(uint32* @pIndexTypeValues) mut { pIndexTypeValues = @pIndexTypeValues;  return ref this; }
	}

	[CRepr]
	public struct VkIndirectCommandsLayoutCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV;
		public void* pNext = null;
		public VkIndirectCommandsLayoutUsageFlagsNV flags;
		public VkPipelineBindPoint pipelineBindPoint;
		public uint32 tokenCount;
		public VkIndirectCommandsLayoutTokenNV* pTokens;
		public uint32 streamCount;
		public uint32* pStreamStrides;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkIndirectCommandsLayoutUsageFlagsNV @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setTokenCount(uint32 @tokenCount) mut { tokenCount = @tokenCount;  return ref this; }
		public ref Self setPTokens(VkIndirectCommandsLayoutTokenNV* @pTokens) mut { pTokens = @pTokens;  return ref this; }
		public ref Self setStreamCount(uint32 @streamCount) mut { streamCount = @streamCount;  return ref this; }
		public ref Self setPStreamStrides(uint32* @pStreamStrides) mut { pStreamStrides = @pStreamStrides;  return ref this; }
	}

	[CRepr]
	public struct VkGeneratedCommandsInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV;
		public void* pNext = null;
		public VkPipelineBindPoint pipelineBindPoint;
		public VkPipeline pipeline;
		public VkIndirectCommandsLayoutNV indirectCommandsLayout;
		public uint32 streamCount;
		public VkIndirectCommandsStreamNV* pStreams;
		public uint32 sequencesCount;
		public VkBuffer preprocessBuffer;
		public uint64 preprocessOffset;
		public uint64 preprocessSize;
		public VkBuffer sequencesCountBuffer;
		public uint64 sequencesCountOffset;
		public VkBuffer sequencesIndexBuffer;
		public uint64 sequencesIndexOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setPipeline(VkPipeline @pipeline) mut { pipeline = @pipeline;  return ref this; }
		public ref Self setIndirectCommandsLayout(VkIndirectCommandsLayoutNV @indirectCommandsLayout) mut { indirectCommandsLayout = @indirectCommandsLayout;  return ref this; }
		public ref Self setStreamCount(uint32 @streamCount) mut { streamCount = @streamCount;  return ref this; }
		public ref Self setPStreams(VkIndirectCommandsStreamNV* @pStreams) mut { pStreams = @pStreams;  return ref this; }
		public ref Self setSequencesCount(uint32 @sequencesCount) mut { sequencesCount = @sequencesCount;  return ref this; }
		public ref Self setPreprocessBuffer(VkBuffer @preprocessBuffer) mut { preprocessBuffer = @preprocessBuffer;  return ref this; }
		public ref Self setPreprocessOffset(uint64 @preprocessOffset) mut { preprocessOffset = @preprocessOffset;  return ref this; }
		public ref Self setPreprocessSize(uint64 @preprocessSize) mut { preprocessSize = @preprocessSize;  return ref this; }
		public ref Self setSequencesCountBuffer(VkBuffer @sequencesCountBuffer) mut { sequencesCountBuffer = @sequencesCountBuffer;  return ref this; }
		public ref Self setSequencesCountOffset(uint64 @sequencesCountOffset) mut { sequencesCountOffset = @sequencesCountOffset;  return ref this; }
		public ref Self setSequencesIndexBuffer(VkBuffer @sequencesIndexBuffer) mut { sequencesIndexBuffer = @sequencesIndexBuffer;  return ref this; }
		public ref Self setSequencesIndexOffset(uint64 @sequencesIndexOffset) mut { sequencesIndexOffset = @sequencesIndexOffset;  return ref this; }
	}

	[CRepr]
	public struct VkGeneratedCommandsMemoryRequirementsInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV;
		public void* pNext = null;
		public VkPipelineBindPoint pipelineBindPoint;
		public VkPipeline pipeline;
		public VkIndirectCommandsLayoutNV indirectCommandsLayout;
		public uint32 maxSequencesCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setPipeline(VkPipeline @pipeline) mut { pipeline = @pipeline;  return ref this; }
		public ref Self setIndirectCommandsLayout(VkIndirectCommandsLayoutNV @indirectCommandsLayout) mut { indirectCommandsLayout = @indirectCommandsLayout;  return ref this; }
		public ref Self setMaxSequencesCount(uint32 @maxSequencesCount) mut { maxSequencesCount = @maxSequencesCount;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFeatures2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2;
		public void* pNext = null;
		public VkPhysicalDeviceFeatures features;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFeatures(VkPhysicalDeviceFeatures @features) mut { features = @features;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2;
		public void* pNext = null;
		public VkPhysicalDeviceProperties properties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProperties(VkPhysicalDeviceProperties @properties) mut { properties = @properties;  return ref this; }
	}

	[CRepr]
	public struct VkFormatProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2;
		public void* pNext = null;
		public VkFormatProperties formatProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormatProperties(VkFormatProperties @formatProperties) mut { formatProperties = @formatProperties;  return ref this; }
	}

	[CRepr]
	public struct VkImageFormatProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2;
		public void* pNext = null;
		public VkImageFormatProperties imageFormatProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageFormatProperties(VkImageFormatProperties @imageFormatProperties) mut { imageFormatProperties = @imageFormatProperties;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageFormatInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2;
		public void* pNext = null;
		public VkFormat format;
		public VkImageType type;
		public VkImageTiling tiling;
		public VkImageUsageFlags usage;
		public VkImageCreateFlags flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setType(VkImageType @type) mut { type = @type;  return ref this; }
		public ref Self setTiling(VkImageTiling @tiling) mut { tiling = @tiling;  return ref this; }
		public ref Self setUsage(VkImageUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setFlags(VkImageCreateFlags @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2;
		public void* pNext = null;
		public VkQueueFamilyProperties queueFamilyProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setQueueFamilyProperties(VkQueueFamilyProperties @queueFamilyProperties) mut { queueFamilyProperties = @queueFamilyProperties;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMemoryProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2;
		public void* pNext = null;
		public VkPhysicalDeviceMemoryProperties memoryProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryProperties(VkPhysicalDeviceMemoryProperties @memoryProperties) mut { memoryProperties = @memoryProperties;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageFormatProperties2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2;
		public void* pNext = null;
		public VkSparseImageFormatProperties properties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProperties(VkSparseImageFormatProperties @properties) mut { properties = @properties;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSparseImageFormatInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2;
		public void* pNext = null;
		public VkFormat format;
		public VkImageType type;
		public VkSampleCountFlags samples;
		public VkImageUsageFlags usage;
		public VkImageTiling tiling;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setType(VkImageType @type) mut { type = @type;  return ref this; }
		public ref Self setSamples(VkSampleCountFlags @samples) mut { samples = @samples;  return ref this; }
		public ref Self setUsage(VkImageUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setTiling(VkImageTiling @tiling) mut { tiling = @tiling;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePushDescriptorPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 maxPushDescriptors;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxPushDescriptors(uint32 @maxPushDescriptors) mut { maxPushDescriptors = @maxPushDescriptors;  return ref this; }
	}

	[CRepr]
	public struct VkConformanceVersion
	{
		public uint8 major;
		public uint8 minor;
		public uint8 subminor;
		public uint8 patch;

		public ref Self setMajor(uint8 @major) mut { major = @major;  return ref this; }
		public ref Self setMinor(uint8 @minor) mut { minor = @minor;  return ref this; }
		public ref Self setSubminor(uint8 @subminor) mut { subminor = @subminor;  return ref this; }
		public ref Self setPatch(uint8 @patch) mut { patch = @patch;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDriverProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES;
		public void* pNext = null;
		public VkDriverId driverID;
		public char8[(int)VulkanNative.VK_MAX_DRIVER_NAME_SIZE] driverName;
		public char8[(int)VulkanNative.VK_MAX_DRIVER_INFO_SIZE] driverInfo;
		public VkConformanceVersion conformanceVersion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDriverID(VkDriverId @driverID) mut { driverID = @driverID;  return ref this; }
		public ref Self setDriverName(char8[(int)VulkanNative.VK_MAX_DRIVER_NAME_SIZE] @driverName) mut { driverName = @driverName;  return ref this; }
		public ref Self setDriverInfo(char8[(int)VulkanNative.VK_MAX_DRIVER_INFO_SIZE] @driverInfo) mut { driverInfo = @driverInfo;  return ref this; }
		public ref Self setConformanceVersion(VkConformanceVersion @conformanceVersion) mut { conformanceVersion = @conformanceVersion;  return ref this; }
	}

	[CRepr]
	public struct VkPresentRegionsKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR;
		public void* pNext = null;
		public uint32 swapchainCount;
		public VkPresentRegionKHR* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchainCount(uint32 @swapchainCount) mut { swapchainCount = @swapchainCount;  return ref this; }
		public ref Self setPRegions(VkPresentRegionKHR* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkPresentRegionKHR
	{
		public uint32 rectangleCount;
		public VkRectLayerKHR* pRectangles;

		public ref Self setRectangleCount(uint32 @rectangleCount) mut { rectangleCount = @rectangleCount;  return ref this; }
		public ref Self setPRectangles(VkRectLayerKHR* @pRectangles) mut { pRectangles = @pRectangles;  return ref this; }
	}

	[CRepr]
	public struct VkRectLayerKHR
	{
		public VkOffset2D offset;
		public VkExtent2D extent;
		public uint32 layer;

		public ref Self setOffset(VkOffset2D @offset) mut { offset = @offset;  return ref this; }
		public ref Self setExtent(VkExtent2D @extent) mut { extent = @extent;  return ref this; }
		public ref Self setLayer(uint32 @layer) mut { layer = @layer;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVariablePointersFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES;
		public void* pNext = null;
		public VkBool32 variablePointersStorageBuffer;
		public VkBool32 variablePointers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVariablePointersStorageBuffer(VkBool32 @variablePointersStorageBuffer) mut { variablePointersStorageBuffer = @variablePointersStorageBuffer;  return ref this; }
		public ref Self setVariablePointers(VkBool32 @variablePointers) mut { variablePointers = @variablePointers;  return ref this; }
	}

	[CRepr]
	public struct VkExternalMemoryProperties
	{
		public VkExternalMemoryFeatureFlags externalMemoryFeatures;
		public VkExternalMemoryHandleTypeFlags exportFromImportedHandleTypes;
		public VkExternalMemoryHandleTypeFlags compatibleHandleTypes;

		public ref Self setExternalMemoryFeatures(VkExternalMemoryFeatureFlags @externalMemoryFeatures) mut { externalMemoryFeatures = @externalMemoryFeatures;  return ref this; }
		public ref Self setExportFromImportedHandleTypes(VkExternalMemoryHandleTypeFlags @exportFromImportedHandleTypes) mut { exportFromImportedHandleTypes = @exportFromImportedHandleTypes;  return ref this; }
		public ref Self setCompatibleHandleTypes(VkExternalMemoryHandleTypeFlags @compatibleHandleTypes) mut { compatibleHandleTypes = @compatibleHandleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalImageFormatInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkExternalImageFormatProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES;
		public void* pNext = null;
		public VkExternalMemoryProperties externalMemoryProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExternalMemoryProperties(VkExternalMemoryProperties @externalMemoryProperties) mut { externalMemoryProperties = @externalMemoryProperties;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalBufferInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO;
		public void* pNext = null;
		public VkBufferCreateFlags flags;
		public VkBufferUsageFlags usage;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkBufferCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setUsage(VkBufferUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkExternalBufferProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES;
		public void* pNext = null;
		public VkExternalMemoryProperties externalMemoryProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExternalMemoryProperties(VkExternalMemoryProperties @externalMemoryProperties) mut { externalMemoryProperties = @externalMemoryProperties;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceIDProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES;
		public void* pNext = null;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] deviceUUID;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] driverUUID;
		public uint8[(int)VulkanNative.VK_LUID_SIZE] deviceLUID;
		public uint32 deviceNodeMask;
		public VkBool32 deviceLUIDValid;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @deviceUUID) mut { deviceUUID = @deviceUUID;  return ref this; }
		public ref Self setDriverUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @driverUUID) mut { driverUUID = @driverUUID;  return ref this; }
		public ref Self setDeviceLUID(uint8[(int)VulkanNative.VK_LUID_SIZE] @deviceLUID) mut { deviceLUID = @deviceLUID;  return ref this; }
		public ref Self setDeviceNodeMask(uint32 @deviceNodeMask) mut { deviceNodeMask = @deviceNodeMask;  return ref this; }
		public ref Self setDeviceLUIDValid(VkBool32 @deviceLUIDValid) mut { deviceLUIDValid = @deviceLUIDValid;  return ref this; }
	}

	[CRepr]
	public struct VkExternalMemoryImageCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalMemoryHandleTypeFlags @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkExternalMemoryBufferCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalMemoryHandleTypeFlags @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkExportMemoryAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalMemoryHandleTypeFlags @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleType;
		public void* handle;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkExportMemoryWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public void* pAttributes;
		public void* dwAccess;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPAttributes(void* @pAttributes) mut { pAttributes = @pAttributes;  return ref this; }
		public ref Self setDwAccess(void* @dwAccess) mut { dwAccess = @dwAccess;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryZirconHandleInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleType;
		public void* handle;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryZirconHandlePropertiesFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA;
		public void* pNext = null;
		public uint32 memoryTypeBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryGetZirconHandleInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryWin32HandlePropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 memoryTypeBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryGetWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleType;
		public int fd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setFd(int @fd) mut { fd = @fd;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryFdPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 memoryTypeBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryGetFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkWin32KeyedMutexAcquireReleaseInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR;
		public void* pNext = null;
		public uint32 acquireCount;
		public VkDeviceMemory* pAcquireSyncs;
		public uint64* pAcquireKeys;
		public uint32* pAcquireTimeouts;
		public uint32 releaseCount;
		public VkDeviceMemory* pReleaseSyncs;
		public uint64* pReleaseKeys;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAcquireCount(uint32 @acquireCount) mut { acquireCount = @acquireCount;  return ref this; }
		public ref Self setPAcquireSyncs(VkDeviceMemory* @pAcquireSyncs) mut { pAcquireSyncs = @pAcquireSyncs;  return ref this; }
		public ref Self setPAcquireKeys(uint64* @pAcquireKeys) mut { pAcquireKeys = @pAcquireKeys;  return ref this; }
		public ref Self setPAcquireTimeouts(uint32* @pAcquireTimeouts) mut { pAcquireTimeouts = @pAcquireTimeouts;  return ref this; }
		public ref Self setReleaseCount(uint32 @releaseCount) mut { releaseCount = @releaseCount;  return ref this; }
		public ref Self setPReleaseSyncs(VkDeviceMemory* @pReleaseSyncs) mut { pReleaseSyncs = @pReleaseSyncs;  return ref this; }
		public ref Self setPReleaseKeys(uint64* @pReleaseKeys) mut { pReleaseKeys = @pReleaseKeys;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalSemaphoreInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO;
		public void* pNext = null;
		public VkExternalSemaphoreHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkExternalSemaphoreProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES;
		public void* pNext = null;
		public VkExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes;
		public VkExternalSemaphoreHandleTypeFlags compatibleHandleTypes;
		public VkExternalSemaphoreFeatureFlags externalSemaphoreFeatures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExportFromImportedHandleTypes(VkExternalSemaphoreHandleTypeFlags @exportFromImportedHandleTypes) mut { exportFromImportedHandleTypes = @exportFromImportedHandleTypes;  return ref this; }
		public ref Self setCompatibleHandleTypes(VkExternalSemaphoreHandleTypeFlags @compatibleHandleTypes) mut { compatibleHandleTypes = @compatibleHandleTypes;  return ref this; }
		public ref Self setExternalSemaphoreFeatures(VkExternalSemaphoreFeatureFlags @externalSemaphoreFeatures) mut { externalSemaphoreFeatures = @externalSemaphoreFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkExportSemaphoreCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO;
		public void* pNext = null;
		public VkExternalSemaphoreHandleTypeFlags handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalSemaphoreHandleTypeFlags @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkImportSemaphoreWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkSemaphoreImportFlags flags;
		public VkExternalSemaphoreHandleTypeFlags handleType;
		public void* handle;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setFlags(VkSemaphoreImportFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkExportSemaphoreWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public void* pAttributes;
		public void* dwAccess;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPAttributes(void* @pAttributes) mut { pAttributes = @pAttributes;  return ref this; }
		public ref Self setDwAccess(void* @dwAccess) mut { dwAccess = @dwAccess;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkD3D12FenceSubmitInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR;
		public void* pNext = null;
		public uint32 waitSemaphoreValuesCount;
		public uint64* pWaitSemaphoreValues;
		public uint32 signalSemaphoreValuesCount;
		public uint64* pSignalSemaphoreValues;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreValuesCount(uint32 @waitSemaphoreValuesCount) mut { waitSemaphoreValuesCount = @waitSemaphoreValuesCount;  return ref this; }
		public ref Self setPWaitSemaphoreValues(uint64* @pWaitSemaphoreValues) mut { pWaitSemaphoreValues = @pWaitSemaphoreValues;  return ref this; }
		public ref Self setSignalSemaphoreValuesCount(uint32 @signalSemaphoreValuesCount) mut { signalSemaphoreValuesCount = @signalSemaphoreValuesCount;  return ref this; }
		public ref Self setPSignalSemaphoreValues(uint64* @pSignalSemaphoreValues) mut { pSignalSemaphoreValues = @pSignalSemaphoreValues;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreGetWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkExternalSemaphoreHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkImportSemaphoreFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkSemaphoreImportFlags flags;
		public VkExternalSemaphoreHandleTypeFlags handleType;
		public int fd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setFlags(VkSemaphoreImportFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setFd(int @fd) mut { fd = @fd;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreGetFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkExternalSemaphoreHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkImportSemaphoreZirconHandleInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkSemaphoreImportFlags flags;
		public VkExternalSemaphoreHandleTypeFlags handleType;
		public void* zirconHandle;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setFlags(VkSemaphoreImportFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setZirconHandle(void* @zirconHandle) mut { zirconHandle = @zirconHandle;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreGetZirconHandleInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkExternalSemaphoreHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setHandleType(VkExternalSemaphoreHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalFenceInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO;
		public void* pNext = null;
		public VkExternalFenceHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalFenceHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkExternalFenceProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES;
		public void* pNext = null;
		public VkExternalFenceHandleTypeFlags exportFromImportedHandleTypes;
		public VkExternalFenceHandleTypeFlags compatibleHandleTypes;
		public VkExternalFenceFeatureFlags externalFenceFeatures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExportFromImportedHandleTypes(VkExternalFenceHandleTypeFlags @exportFromImportedHandleTypes) mut { exportFromImportedHandleTypes = @exportFromImportedHandleTypes;  return ref this; }
		public ref Self setCompatibleHandleTypes(VkExternalFenceHandleTypeFlags @compatibleHandleTypes) mut { compatibleHandleTypes = @compatibleHandleTypes;  return ref this; }
		public ref Self setExternalFenceFeatures(VkExternalFenceFeatureFlags @externalFenceFeatures) mut { externalFenceFeatures = @externalFenceFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkExportFenceCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO;
		public void* pNext = null;
		public VkExternalFenceHandleTypeFlags handleTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleTypes(VkExternalFenceHandleTypeFlags @handleTypes) mut { handleTypes = @handleTypes;  return ref this; }
	}

	[CRepr]
	public struct VkImportFenceWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkFence fence;
		public VkFenceImportFlags flags;
		public VkExternalFenceHandleTypeFlags handleType;
		public void* handle;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFence(VkFence @fence) mut { fence = @fence;  return ref this; }
		public ref Self setFlags(VkFenceImportFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHandleType(VkExternalFenceHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkExportFenceWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public void* pAttributes;
		public void* dwAccess;
		public void* name;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPAttributes(void* @pAttributes) mut { pAttributes = @pAttributes;  return ref this; }
		public ref Self setDwAccess(void* @dwAccess) mut { dwAccess = @dwAccess;  return ref this; }
		public ref Self setName(void* @name) mut { name = @name;  return ref this; }
	}

	[CRepr]
	public struct VkFenceGetWin32HandleInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR;
		public void* pNext = null;
		public VkFence fence;
		public VkExternalFenceHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFence(VkFence @fence) mut { fence = @fence;  return ref this; }
		public ref Self setHandleType(VkExternalFenceHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkImportFenceFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR;
		public void* pNext = null;
		public VkFence fence;
		public VkFenceImportFlags flags;
		public VkExternalFenceHandleTypeFlags handleType;
		public int fd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFence(VkFence @fence) mut { fence = @fence;  return ref this; }
		public ref Self setFlags(VkFenceImportFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setHandleType(VkExternalFenceHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setFd(int @fd) mut { fd = @fd;  return ref this; }
	}

	[CRepr]
	public struct VkFenceGetFdInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR;
		public void* pNext = null;
		public VkFence fence;
		public VkExternalFenceHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFence(VkFence @fence) mut { fence = @fence;  return ref this; }
		public ref Self setHandleType(VkExternalFenceHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMultiviewFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES;
		public void* pNext = null;
		public VkBool32 multiview;
		public VkBool32 multiviewGeometryShader;
		public VkBool32 multiviewTessellationShader;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMultiview(VkBool32 @multiview) mut { multiview = @multiview;  return ref this; }
		public ref Self setMultiviewGeometryShader(VkBool32 @multiviewGeometryShader) mut { multiviewGeometryShader = @multiviewGeometryShader;  return ref this; }
		public ref Self setMultiviewTessellationShader(VkBool32 @multiviewTessellationShader) mut { multiviewTessellationShader = @multiviewTessellationShader;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMultiviewProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES;
		public void* pNext = null;
		public uint32 maxMultiviewViewCount;
		public uint32 maxMultiviewInstanceIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxMultiviewViewCount(uint32 @maxMultiviewViewCount) mut { maxMultiviewViewCount = @maxMultiviewViewCount;  return ref this; }
		public ref Self setMaxMultiviewInstanceIndex(uint32 @maxMultiviewInstanceIndex) mut { maxMultiviewInstanceIndex = @maxMultiviewInstanceIndex;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassMultiviewCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO;
		public void* pNext = null;
		public uint32 subpassCount;
		public uint32* pViewMasks;
		public uint32 dependencyCount;
		public int32* pViewOffsets;
		public uint32 correlationMaskCount;
		public uint32* pCorrelationMasks;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubpassCount(uint32 @subpassCount) mut { subpassCount = @subpassCount;  return ref this; }
		public ref Self setPViewMasks(uint32* @pViewMasks) mut { pViewMasks = @pViewMasks;  return ref this; }
		public ref Self setDependencyCount(uint32 @dependencyCount) mut { dependencyCount = @dependencyCount;  return ref this; }
		public ref Self setPViewOffsets(int32* @pViewOffsets) mut { pViewOffsets = @pViewOffsets;  return ref this; }
		public ref Self setCorrelationMaskCount(uint32 @correlationMaskCount) mut { correlationMaskCount = @correlationMaskCount;  return ref this; }
		public ref Self setPCorrelationMasks(uint32* @pCorrelationMasks) mut { pCorrelationMasks = @pCorrelationMasks;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceCapabilities2EXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT;
		public void* pNext = null;
		public uint32 minImageCount;
		public uint32 maxImageCount;
		public VkExtent2D currentExtent;
		public VkExtent2D minImageExtent;
		public VkExtent2D maxImageExtent;
		public uint32 maxImageArrayLayers;
		public VkSurfaceTransformFlagsKHR supportedTransforms;
		public VkSurfaceTransformFlagsKHR currentTransform;
		public VkCompositeAlphaFlagsKHR supportedCompositeAlpha;
		public VkImageUsageFlags supportedUsageFlags;
		public VkSurfaceCounterFlagsEXT supportedSurfaceCounters;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinImageCount(uint32 @minImageCount) mut { minImageCount = @minImageCount;  return ref this; }
		public ref Self setMaxImageCount(uint32 @maxImageCount) mut { maxImageCount = @maxImageCount;  return ref this; }
		public ref Self setCurrentExtent(VkExtent2D @currentExtent) mut { currentExtent = @currentExtent;  return ref this; }
		public ref Self setMinImageExtent(VkExtent2D @minImageExtent) mut { minImageExtent = @minImageExtent;  return ref this; }
		public ref Self setMaxImageExtent(VkExtent2D @maxImageExtent) mut { maxImageExtent = @maxImageExtent;  return ref this; }
		public ref Self setMaxImageArrayLayers(uint32 @maxImageArrayLayers) mut { maxImageArrayLayers = @maxImageArrayLayers;  return ref this; }
		public ref Self setSupportedTransforms(VkSurfaceTransformFlagsKHR @supportedTransforms) mut { supportedTransforms = @supportedTransforms;  return ref this; }
		public ref Self setCurrentTransform(VkSurfaceTransformFlagsKHR @currentTransform) mut { currentTransform = @currentTransform;  return ref this; }
		public ref Self setSupportedCompositeAlpha(VkCompositeAlphaFlagsKHR @supportedCompositeAlpha) mut { supportedCompositeAlpha = @supportedCompositeAlpha;  return ref this; }
		public ref Self setSupportedUsageFlags(VkImageUsageFlags @supportedUsageFlags) mut { supportedUsageFlags = @supportedUsageFlags;  return ref this; }
		public ref Self setSupportedSurfaceCounters(VkSurfaceCounterFlagsEXT @supportedSurfaceCounters) mut { supportedSurfaceCounters = @supportedSurfaceCounters;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPowerInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT;
		public void* pNext = null;
		public VkDisplayPowerStateEXT powerState;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPowerState(VkDisplayPowerStateEXT @powerState) mut { powerState = @powerState;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceEventInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT;
		public void* pNext = null;
		public VkDeviceEventTypeEXT deviceEvent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceEvent(VkDeviceEventTypeEXT @deviceEvent) mut { deviceEvent = @deviceEvent;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayEventInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT;
		public void* pNext = null;
		public VkDisplayEventTypeEXT displayEvent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisplayEvent(VkDisplayEventTypeEXT @displayEvent) mut { displayEvent = @displayEvent;  return ref this; }
	}

	[CRepr]
	public struct VkSwapchainCounterCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkSurfaceCounterFlagsEXT surfaceCounters;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSurfaceCounters(VkSurfaceCounterFlagsEXT @surfaceCounters) mut { surfaceCounters = @surfaceCounters;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceGroupProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES;
		public void* pNext = null;
		public uint32 physicalDeviceCount;
		public VkPhysicalDevice[32] physicalDevices;
		public VkBool32 subsetAllocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPhysicalDeviceCount(uint32 @physicalDeviceCount) mut { physicalDeviceCount = @physicalDeviceCount;  return ref this; }
		public ref Self setPhysicalDevices(VkPhysicalDevice[32] @physicalDevices) mut { physicalDevices = @physicalDevices;  return ref this; }
		public ref Self setSubsetAllocation(VkBool32 @subsetAllocation) mut { subsetAllocation = @subsetAllocation;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryAllocateFlagsInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO;
		public void* pNext = null;
		public VkMemoryAllocateFlags flags;
		public uint32 deviceMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkMemoryAllocateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDeviceMask(uint32 @deviceMask) mut { deviceMask = @deviceMask;  return ref this; }
	}

	[CRepr]
	public struct VkBindBufferMemoryInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO;
		public void* pNext = null;
		public VkBuffer buffer;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
	}

	[CRepr]
	public struct VkBindBufferMemoryDeviceGroupInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO;
		public void* pNext = null;
		public uint32 deviceIndexCount;
		public uint32* pDeviceIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceIndexCount(uint32 @deviceIndexCount) mut { deviceIndexCount = @deviceIndexCount;  return ref this; }
		public ref Self setPDeviceIndices(uint32* @pDeviceIndices) mut { pDeviceIndices = @pDeviceIndices;  return ref this; }
	}

	[CRepr]
	public struct VkBindImageMemoryInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO;
		public void* pNext = null;
		public VkImage image;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
	}

	[CRepr]
	public struct VkBindImageMemoryDeviceGroupInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO;
		public void* pNext = null;
		public uint32 deviceIndexCount;
		public uint32* pDeviceIndices;
		public uint32 splitInstanceBindRegionCount;
		public VkRect2D* pSplitInstanceBindRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceIndexCount(uint32 @deviceIndexCount) mut { deviceIndexCount = @deviceIndexCount;  return ref this; }
		public ref Self setPDeviceIndices(uint32* @pDeviceIndices) mut { pDeviceIndices = @pDeviceIndices;  return ref this; }
		public ref Self setSplitInstanceBindRegionCount(uint32 @splitInstanceBindRegionCount) mut { splitInstanceBindRegionCount = @splitInstanceBindRegionCount;  return ref this; }
		public ref Self setPSplitInstanceBindRegions(VkRect2D* @pSplitInstanceBindRegions) mut { pSplitInstanceBindRegions = @pSplitInstanceBindRegions;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupRenderPassBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO;
		public void* pNext = null;
		public uint32 deviceMask;
		public uint32 deviceRenderAreaCount;
		public VkRect2D* pDeviceRenderAreas;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceMask(uint32 @deviceMask) mut { deviceMask = @deviceMask;  return ref this; }
		public ref Self setDeviceRenderAreaCount(uint32 @deviceRenderAreaCount) mut { deviceRenderAreaCount = @deviceRenderAreaCount;  return ref this; }
		public ref Self setPDeviceRenderAreas(VkRect2D* @pDeviceRenderAreas) mut { pDeviceRenderAreas = @pDeviceRenderAreas;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupCommandBufferBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO;
		public void* pNext = null;
		public uint32 deviceMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceMask(uint32 @deviceMask) mut { deviceMask = @deviceMask;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO;
		public void* pNext = null;
		public uint32 waitSemaphoreCount;
		public uint32* pWaitSemaphoreDeviceIndices;
		public uint32 commandBufferCount;
		public uint32* pCommandBufferDeviceMasks;
		public uint32 signalSemaphoreCount;
		public uint32* pSignalSemaphoreDeviceIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreCount(uint32 @waitSemaphoreCount) mut { waitSemaphoreCount = @waitSemaphoreCount;  return ref this; }
		public ref Self setPWaitSemaphoreDeviceIndices(uint32* @pWaitSemaphoreDeviceIndices) mut { pWaitSemaphoreDeviceIndices = @pWaitSemaphoreDeviceIndices;  return ref this; }
		public ref Self setCommandBufferCount(uint32 @commandBufferCount) mut { commandBufferCount = @commandBufferCount;  return ref this; }
		public ref Self setPCommandBufferDeviceMasks(uint32* @pCommandBufferDeviceMasks) mut { pCommandBufferDeviceMasks = @pCommandBufferDeviceMasks;  return ref this; }
		public ref Self setSignalSemaphoreCount(uint32 @signalSemaphoreCount) mut { signalSemaphoreCount = @signalSemaphoreCount;  return ref this; }
		public ref Self setPSignalSemaphoreDeviceIndices(uint32* @pSignalSemaphoreDeviceIndices) mut { pSignalSemaphoreDeviceIndices = @pSignalSemaphoreDeviceIndices;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupBindSparseInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO;
		public void* pNext = null;
		public uint32 resourceDeviceIndex;
		public uint32 memoryDeviceIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setResourceDeviceIndex(uint32 @resourceDeviceIndex) mut { resourceDeviceIndex = @resourceDeviceIndex;  return ref this; }
		public ref Self setMemoryDeviceIndex(uint32 @memoryDeviceIndex) mut { memoryDeviceIndex = @memoryDeviceIndex;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupPresentCapabilitiesKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint32[(int)VulkanNative.VK_MAX_DEVICE_GROUP_SIZE] presentMask;
		public VkDeviceGroupPresentModeFlagsKHR modes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPresentMask(uint32[(int)VulkanNative.VK_MAX_DEVICE_GROUP_SIZE] @presentMask) mut { presentMask = @presentMask;  return ref this; }
		public ref Self setModes(VkDeviceGroupPresentModeFlagsKHR @modes) mut { modes = @modes;  return ref this; }
	}

	[CRepr]
	public struct VkImageSwapchainCreateInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkSwapchainKHR swapchain;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchain(VkSwapchainKHR @swapchain) mut { swapchain = @swapchain;  return ref this; }
	}

	[CRepr]
	public struct VkBindImageMemorySwapchainInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkSwapchainKHR swapchain;
		public uint32 imageIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchain(VkSwapchainKHR @swapchain) mut { swapchain = @swapchain;  return ref this; }
		public ref Self setImageIndex(uint32 @imageIndex) mut { imageIndex = @imageIndex;  return ref this; }
	}

	[CRepr]
	public struct VkAcquireNextImageInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkSwapchainKHR swapchain;
		public uint64 timeout;
		public VkSemaphore semaphore;
		public VkFence fence;
		public uint32 deviceMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchain(VkSwapchainKHR @swapchain) mut { swapchain = @swapchain;  return ref this; }
		public ref Self setTimeout(uint64 @timeout) mut { timeout = @timeout;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setFence(VkFence @fence) mut { fence = @fence;  return ref this; }
		public ref Self setDeviceMask(uint32 @deviceMask) mut { deviceMask = @deviceMask;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupPresentInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint32 swapchainCount;
		public uint32* pDeviceMasks;
		public VkDeviceGroupPresentModeFlagsKHR mode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchainCount(uint32 @swapchainCount) mut { swapchainCount = @swapchainCount;  return ref this; }
		public ref Self setPDeviceMasks(uint32* @pDeviceMasks) mut { pDeviceMasks = @pDeviceMasks;  return ref this; }
		public ref Self setMode(VkDeviceGroupPresentModeFlagsKHR @mode) mut { mode = @mode;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupDeviceCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO;
		public void* pNext = null;
		public uint32 physicalDeviceCount;
		public VkPhysicalDevice* pPhysicalDevices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPhysicalDeviceCount(uint32 @physicalDeviceCount) mut { physicalDeviceCount = @physicalDeviceCount;  return ref this; }
		public ref Self setPPhysicalDevices(VkPhysicalDevice* @pPhysicalDevices) mut { pPhysicalDevices = @pPhysicalDevices;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceGroupSwapchainCreateInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkDeviceGroupPresentModeFlagsKHR modes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setModes(VkDeviceGroupPresentModeFlagsKHR @modes) mut { modes = @modes;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorUpdateTemplateEntry
	{
		public uint32 dstBinding;
		public uint32 dstArrayElement;
		public uint32 descriptorCount;
		public VkDescriptorType descriptorType;
		public uint offset;
		public uint stride;

		public ref Self setDstBinding(uint32 @dstBinding) mut { dstBinding = @dstBinding;  return ref this; }
		public ref Self setDstArrayElement(uint32 @dstArrayElement) mut { dstArrayElement = @dstArrayElement;  return ref this; }
		public ref Self setDescriptorCount(uint32 @descriptorCount) mut { descriptorCount = @descriptorCount;  return ref this; }
		public ref Self setDescriptorType(VkDescriptorType @descriptorType) mut { descriptorType = @descriptorType;  return ref this; }
		public ref Self setOffset(uint @offset) mut { offset = @offset;  return ref this; }
		public ref Self setStride(uint @stride) mut { stride = @stride;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorUpdateTemplateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO;
		public void* pNext = null;
		public uint32 flags;
		public uint32 descriptorUpdateEntryCount;
		public VkDescriptorUpdateTemplateEntry* pDescriptorUpdateEntries;
		public VkDescriptorUpdateTemplateType templateType;
		public VkDescriptorSetLayout descriptorSetLayout;
		public VkPipelineBindPoint pipelineBindPoint;
		public VkPipelineLayout pipelineLayout;
		public uint32 set;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDescriptorUpdateEntryCount(uint32 @descriptorUpdateEntryCount) mut { descriptorUpdateEntryCount = @descriptorUpdateEntryCount;  return ref this; }
		public ref Self setPDescriptorUpdateEntries(VkDescriptorUpdateTemplateEntry* @pDescriptorUpdateEntries) mut { pDescriptorUpdateEntries = @pDescriptorUpdateEntries;  return ref this; }
		public ref Self setTemplateType(VkDescriptorUpdateTemplateType @templateType) mut { templateType = @templateType;  return ref this; }
		public ref Self setDescriptorSetLayout(VkDescriptorSetLayout @descriptorSetLayout) mut { descriptorSetLayout = @descriptorSetLayout;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setPipelineLayout(VkPipelineLayout @pipelineLayout) mut { pipelineLayout = @pipelineLayout;  return ref this; }
		public ref Self setSet(uint32 @set) mut { set = @set;  return ref this; }
	}

	[CRepr]
	public struct VkXYColorEXT
	{
		public float x;
		public float y;

		public ref Self setX(float @x) mut { x = @x;  return ref this; }
		public ref Self setY(float @y) mut { y = @y;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePresentIdFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 presentId;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPresentId(VkBool32 @presentId) mut { presentId = @presentId;  return ref this; }
	}

	[CRepr]
	public struct VkPresentIdKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRESENT_ID_KHR;
		public void* pNext = null;
		public uint32 swapchainCount;
		public uint64* pPresentIds;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchainCount(uint32 @swapchainCount) mut { swapchainCount = @swapchainCount;  return ref this; }
		public ref Self setPPresentIds(uint64* @pPresentIds) mut { pPresentIds = @pPresentIds;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePresentWaitFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 presentWait;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPresentWait(VkBool32 @presentWait) mut { presentWait = @presentWait;  return ref this; }
	}

	[CRepr]
	public struct VkHdrMetadataEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_HDR_METADATA_EXT;
		public void* pNext = null;
		public VkXYColorEXT displayPrimaryRed;
		public VkXYColorEXT displayPrimaryGreen;
		public VkXYColorEXT displayPrimaryBlue;
		public VkXYColorEXT whitePoint;
		public float maxLuminance;
		public float minLuminance;
		public float maxContentLightLevel;
		public float maxFrameAverageLightLevel;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisplayPrimaryRed(VkXYColorEXT @displayPrimaryRed) mut { displayPrimaryRed = @displayPrimaryRed;  return ref this; }
		public ref Self setDisplayPrimaryGreen(VkXYColorEXT @displayPrimaryGreen) mut { displayPrimaryGreen = @displayPrimaryGreen;  return ref this; }
		public ref Self setDisplayPrimaryBlue(VkXYColorEXT @displayPrimaryBlue) mut { displayPrimaryBlue = @displayPrimaryBlue;  return ref this; }
		public ref Self setWhitePoint(VkXYColorEXT @whitePoint) mut { whitePoint = @whitePoint;  return ref this; }
		public ref Self setMaxLuminance(float @maxLuminance) mut { maxLuminance = @maxLuminance;  return ref this; }
		public ref Self setMinLuminance(float @minLuminance) mut { minLuminance = @minLuminance;  return ref this; }
		public ref Self setMaxContentLightLevel(float @maxContentLightLevel) mut { maxContentLightLevel = @maxContentLightLevel;  return ref this; }
		public ref Self setMaxFrameAverageLightLevel(float @maxFrameAverageLightLevel) mut { maxFrameAverageLightLevel = @maxFrameAverageLightLevel;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayNativeHdrSurfaceCapabilitiesAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD;
		public void* pNext = null;
		public VkBool32 localDimmingSupport;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLocalDimmingSupport(VkBool32 @localDimmingSupport) mut { localDimmingSupport = @localDimmingSupport;  return ref this; }
	}

	[CRepr]
	public struct VkSwapchainDisplayNativeHdrCreateInfoAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD;
		public void* pNext = null;
		public VkBool32 localDimmingEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLocalDimmingEnable(VkBool32 @localDimmingEnable) mut { localDimmingEnable = @localDimmingEnable;  return ref this; }
	}

	[CRepr]
	public struct VkRefreshCycleDurationGOOGLE
	{
		public uint64 refreshDuration;

		public ref Self setRefreshDuration(uint64 @refreshDuration) mut { refreshDuration = @refreshDuration;  return ref this; }
	}

	[CRepr]
	public struct VkPastPresentationTimingGOOGLE
	{
		public uint32 presentID;
		public uint64 desiredPresentTime;
		public uint64 actualPresentTime;
		public uint64 earliestPresentTime;
		public uint64 presentMargin;

		public ref Self setPresentID(uint32 @presentID) mut { presentID = @presentID;  return ref this; }
		public ref Self setDesiredPresentTime(uint64 @desiredPresentTime) mut { desiredPresentTime = @desiredPresentTime;  return ref this; }
		public ref Self setActualPresentTime(uint64 @actualPresentTime) mut { actualPresentTime = @actualPresentTime;  return ref this; }
		public ref Self setEarliestPresentTime(uint64 @earliestPresentTime) mut { earliestPresentTime = @earliestPresentTime;  return ref this; }
		public ref Self setPresentMargin(uint64 @presentMargin) mut { presentMargin = @presentMargin;  return ref this; }
	}

	[CRepr]
	public struct VkPresentTimesInfoGOOGLE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE;
		public void* pNext = null;
		public uint32 swapchainCount;
		public VkPresentTimeGOOGLE* pTimes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSwapchainCount(uint32 @swapchainCount) mut { swapchainCount = @swapchainCount;  return ref this; }
		public ref Self setPTimes(VkPresentTimeGOOGLE* @pTimes) mut { pTimes = @pTimes;  return ref this; }
	}

	[CRepr]
	public struct VkPresentTimeGOOGLE
	{
		public uint32 presentID;
		public uint64 desiredPresentTime;

		public ref Self setPresentID(uint32 @presentID) mut { presentID = @presentID;  return ref this; }
		public ref Self setDesiredPresentTime(uint64 @desiredPresentTime) mut { desiredPresentTime = @desiredPresentTime;  return ref this; }
	}

	[CRepr]
	public struct VkIOSSurfaceCreateInfoMVK
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK;
		public void* pNext = null;
		public uint32 flags;
		public void* pView;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPView(void* @pView) mut { pView = @pView;  return ref this; }
	}

	[CRepr]
	public struct VkMacOSSurfaceCreateInfoMVK
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK;
		public void* pNext = null;
		public uint32 flags;
		public void* pView;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPView(void* @pView) mut { pView = @pView;  return ref this; }
	}

	[CRepr]
	public struct VkMetalSurfaceCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public void* pLayer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPLayer(void* @pLayer) mut { pLayer = @pLayer;  return ref this; }
	}

	[CRepr]
	public struct VkViewportWScalingNV
	{
		public float xcoeff;
		public float ycoeff;

		public ref Self setXcoeff(float @xcoeff) mut { xcoeff = @xcoeff;  return ref this; }
		public ref Self setYcoeff(float @ycoeff) mut { ycoeff = @ycoeff;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportWScalingStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkBool32 viewportWScalingEnable;
		public uint32 viewportCount;
		public VkViewportWScalingNV* pViewportWScalings;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setViewportWScalingEnable(VkBool32 @viewportWScalingEnable) mut { viewportWScalingEnable = @viewportWScalingEnable;  return ref this; }
		public ref Self setViewportCount(uint32 @viewportCount) mut { viewportCount = @viewportCount;  return ref this; }
		public ref Self setPViewportWScalings(VkViewportWScalingNV* @pViewportWScalings) mut { pViewportWScalings = @pViewportWScalings;  return ref this; }
	}

	[CRepr]
	public struct VkViewportSwizzleNV
	{
		public VkViewportCoordinateSwizzleNV x;
		public VkViewportCoordinateSwizzleNV y;
		public VkViewportCoordinateSwizzleNV z;
		public VkViewportCoordinateSwizzleNV w;

		public ref Self setX(VkViewportCoordinateSwizzleNV @x) mut { x = @x;  return ref this; }
		public ref Self setY(VkViewportCoordinateSwizzleNV @y) mut { y = @y;  return ref this; }
		public ref Self setZ(VkViewportCoordinateSwizzleNV @z) mut { z = @z;  return ref this; }
		public ref Self setW(VkViewportCoordinateSwizzleNV @w) mut { w = @w;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportSwizzleStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 flags;
		public uint32 viewportCount;
		public VkViewportSwizzleNV* pViewportSwizzles;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setViewportCount(uint32 @viewportCount) mut { viewportCount = @viewportCount;  return ref this; }
		public ref Self setPViewportSwizzles(VkViewportSwizzleNV* @pViewportSwizzles) mut { pViewportSwizzles = @pViewportSwizzles;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDiscardRectanglePropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 maxDiscardRectangles;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxDiscardRectangles(uint32 @maxDiscardRectangles) mut { maxDiscardRectangles = @maxDiscardRectangles;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineDiscardRectangleStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public VkDiscardRectangleModeEXT discardRectangleMode;
		public uint32 discardRectangleCount;
		public VkRect2D* pDiscardRectangles;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDiscardRectangleMode(VkDiscardRectangleModeEXT @discardRectangleMode) mut { discardRectangleMode = @discardRectangleMode;  return ref this; }
		public ref Self setDiscardRectangleCount(uint32 @discardRectangleCount) mut { discardRectangleCount = @discardRectangleCount;  return ref this; }
		public ref Self setPDiscardRectangles(VkRect2D* @pDiscardRectangles) mut { pDiscardRectangles = @pDiscardRectangles;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX;
		public void* pNext = null;
		public VkBool32 perViewPositionAllComponents;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPerViewPositionAllComponents(VkBool32 @perViewPositionAllComponents) mut { perViewPositionAllComponents = @perViewPositionAllComponents;  return ref this; }
	}

	[CRepr]
	public struct VkInputAttachmentAspectReference
	{
		public uint32 subpass;
		public uint32 inputAttachmentIndex;
		public VkImageAspectFlags aspectMask;

		public ref Self setSubpass(uint32 @subpass) mut { subpass = @subpass;  return ref this; }
		public ref Self setInputAttachmentIndex(uint32 @inputAttachmentIndex) mut { inputAttachmentIndex = @inputAttachmentIndex;  return ref this; }
		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassInputAttachmentAspectCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO;
		public void* pNext = null;
		public uint32 aspectReferenceCount;
		public VkInputAttachmentAspectReference* pAspectReferences;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAspectReferenceCount(uint32 @aspectReferenceCount) mut { aspectReferenceCount = @aspectReferenceCount;  return ref this; }
		public ref Self setPAspectReferences(VkInputAttachmentAspectReference* @pAspectReferences) mut { pAspectReferences = @pAspectReferences;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSurfaceInfo2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR;
		public void* pNext = null;
		public VkSurfaceKHR surface;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSurface(VkSurfaceKHR @surface) mut { surface = @surface;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceCapabilities2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR;
		public void* pNext = null;
		public VkSurfaceCapabilitiesKHR surfaceCapabilities;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSurfaceCapabilities(VkSurfaceCapabilitiesKHR @surfaceCapabilities) mut { surfaceCapabilities = @surfaceCapabilities;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceFormat2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR;
		public void* pNext = null;
		public VkSurfaceFormatKHR surfaceFormat;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSurfaceFormat(VkSurfaceFormatKHR @surfaceFormat) mut { surfaceFormat = @surfaceFormat;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayProperties2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR;
		public void* pNext = null;
		public VkDisplayPropertiesKHR displayProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisplayProperties(VkDisplayPropertiesKHR @displayProperties) mut { displayProperties = @displayProperties;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPlaneProperties2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR;
		public void* pNext = null;
		public VkDisplayPlanePropertiesKHR displayPlaneProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisplayPlaneProperties(VkDisplayPlanePropertiesKHR @displayPlaneProperties) mut { displayPlaneProperties = @displayPlaneProperties;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayModeProperties2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR;
		public void* pNext = null;
		public VkDisplayModePropertiesKHR displayModeProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisplayModeProperties(VkDisplayModePropertiesKHR @displayModeProperties) mut { displayModeProperties = @displayModeProperties;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPlaneInfo2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR;
		public void* pNext = null;
		public VkDisplayModeKHR mode;
		public uint32 planeIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMode(VkDisplayModeKHR @mode) mut { mode = @mode;  return ref this; }
		public ref Self setPlaneIndex(uint32 @planeIndex) mut { planeIndex = @planeIndex;  return ref this; }
	}

	[CRepr]
	public struct VkDisplayPlaneCapabilities2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR;
		public void* pNext = null;
		public VkDisplayPlaneCapabilitiesKHR capabilities;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCapabilities(VkDisplayPlaneCapabilitiesKHR @capabilities) mut { capabilities = @capabilities;  return ref this; }
	}

	[CRepr]
	public struct VkSharedPresentSurfaceCapabilitiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR;
		public void* pNext = null;
		public VkImageUsageFlags sharedPresentSupportedUsageFlags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSharedPresentSupportedUsageFlags(VkImageUsageFlags @sharedPresentSupportedUsageFlags) mut { sharedPresentSupportedUsageFlags = @sharedPresentSupportedUsageFlags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevice16BitStorageFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES;
		public void* pNext = null;
		public VkBool32 storageBuffer16BitAccess;
		public VkBool32 uniformAndStorageBuffer16BitAccess;
		public VkBool32 storagePushConstant16;
		public VkBool32 storageInputOutput16;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStorageBuffer16BitAccess(VkBool32 @storageBuffer16BitAccess) mut { storageBuffer16BitAccess = @storageBuffer16BitAccess;  return ref this; }
		public ref Self setUniformAndStorageBuffer16BitAccess(VkBool32 @uniformAndStorageBuffer16BitAccess) mut { uniformAndStorageBuffer16BitAccess = @uniformAndStorageBuffer16BitAccess;  return ref this; }
		public ref Self setStoragePushConstant16(VkBool32 @storagePushConstant16) mut { storagePushConstant16 = @storagePushConstant16;  return ref this; }
		public ref Self setStorageInputOutput16(VkBool32 @storageInputOutput16) mut { storageInputOutput16 = @storageInputOutput16;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubgroupProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES;
		public void* pNext = null;
		public uint32 subgroupSize;
		public VkShaderStageFlags supportedStages;
		public VkSubgroupFeatureFlags supportedOperations;
		public VkBool32 quadOperationsInAllStages;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubgroupSize(uint32 @subgroupSize) mut { subgroupSize = @subgroupSize;  return ref this; }
		public ref Self setSupportedStages(VkShaderStageFlags @supportedStages) mut { supportedStages = @supportedStages;  return ref this; }
		public ref Self setSupportedOperations(VkSubgroupFeatureFlags @supportedOperations) mut { supportedOperations = @supportedOperations;  return ref this; }
		public ref Self setQuadOperationsInAllStages(VkBool32 @quadOperationsInAllStages) mut { quadOperationsInAllStages = @quadOperationsInAllStages;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderSubgroupExtendedTypes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderSubgroupExtendedTypes(VkBool32 @shaderSubgroupExtendedTypes) mut { shaderSubgroupExtendedTypes = @shaderSubgroupExtendedTypes;  return ref this; }
	}

	[CRepr]
	public struct VkBufferMemoryRequirementsInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2;
		public void* pNext = null;
		public VkBuffer buffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceBufferMemoryRequirements
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS;
		public void* pNext = null;
		public VkBufferCreateInfo* pCreateInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPCreateInfo(VkBufferCreateInfo* @pCreateInfo) mut { pCreateInfo = @pCreateInfo;  return ref this; }
	}

	[CRepr]
	public struct VkImageMemoryRequirementsInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2;
		public void* pNext = null;
		public VkImage image;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
	}

	[CRepr]
	public struct VkImageSparseMemoryRequirementsInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2;
		public void* pNext = null;
		public VkImage image;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceImageMemoryRequirements
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS;
		public void* pNext = null;
		public VkImageCreateInfo* pCreateInfo;
		public VkImageAspectFlags planeAspect;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPCreateInfo(VkImageCreateInfo* @pCreateInfo) mut { pCreateInfo = @pCreateInfo;  return ref this; }
		public ref Self setPlaneAspect(VkImageAspectFlags @planeAspect) mut { planeAspect = @planeAspect;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryRequirements2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2;
		public void* pNext = null;
		public VkMemoryRequirements memoryRequirements;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryRequirements(VkMemoryRequirements @memoryRequirements) mut { memoryRequirements = @memoryRequirements;  return ref this; }
	}

	[CRepr]
	public struct VkSparseImageMemoryRequirements2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2;
		public void* pNext = null;
		public VkSparseImageMemoryRequirements memoryRequirements;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryRequirements(VkSparseImageMemoryRequirements @memoryRequirements) mut { memoryRequirements = @memoryRequirements;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePointClippingProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES;
		public void* pNext = null;
		public VkPointClippingBehavior pointClippingBehavior;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPointClippingBehavior(VkPointClippingBehavior @pointClippingBehavior) mut { pointClippingBehavior = @pointClippingBehavior;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryDedicatedRequirements
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS;
		public void* pNext = null;
		public VkBool32 prefersDedicatedAllocation;
		public VkBool32 requiresDedicatedAllocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrefersDedicatedAllocation(VkBool32 @prefersDedicatedAllocation) mut { prefersDedicatedAllocation = @prefersDedicatedAllocation;  return ref this; }
		public ref Self setRequiresDedicatedAllocation(VkBool32 @requiresDedicatedAllocation) mut { requiresDedicatedAllocation = @requiresDedicatedAllocation;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryDedicatedAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO;
		public void* pNext = null;
		public VkImage image;
		public VkBuffer buffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewUsageCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO;
		public void* pNext = null;
		public VkImageUsageFlags usage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setUsage(VkImageUsageFlags @usage) mut { usage = @usage;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineTessellationDomainOriginStateCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO;
		public void* pNext = null;
		public VkTessellationDomainOrigin domainOrigin;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDomainOrigin(VkTessellationDomainOrigin @domainOrigin) mut { domainOrigin = @domainOrigin;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerYcbcrConversionInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO;
		public void* pNext = null;
		public VkSamplerYcbcrConversion conversion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setConversion(VkSamplerYcbcrConversion @conversion) mut { conversion = @conversion;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerYcbcrConversionCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO;
		public void* pNext = null;
		public VkFormat format;
		public VkSamplerYcbcrModelConversion ycbcrModel;
		public VkSamplerYcbcrRange ycbcrRange;
		public VkComponentMapping components;
		public VkChromaLocation xChromaOffset;
		public VkChromaLocation yChromaOffset;
		public VkFilter chromaFilter;
		public VkBool32 forceExplicitReconstruction;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setYcbcrModel(VkSamplerYcbcrModelConversion @ycbcrModel) mut { ycbcrModel = @ycbcrModel;  return ref this; }
		public ref Self setYcbcrRange(VkSamplerYcbcrRange @ycbcrRange) mut { ycbcrRange = @ycbcrRange;  return ref this; }
		public ref Self setComponents(VkComponentMapping @components) mut { components = @components;  return ref this; }
		public ref Self setXChromaOffset(VkChromaLocation @xChromaOffset) mut { xChromaOffset = @xChromaOffset;  return ref this; }
		public ref Self setYChromaOffset(VkChromaLocation @yChromaOffset) mut { yChromaOffset = @yChromaOffset;  return ref this; }
		public ref Self setChromaFilter(VkFilter @chromaFilter) mut { chromaFilter = @chromaFilter;  return ref this; }
		public ref Self setForceExplicitReconstruction(VkBool32 @forceExplicitReconstruction) mut { forceExplicitReconstruction = @forceExplicitReconstruction;  return ref this; }
	}

	[CRepr]
	public struct VkBindImagePlaneMemoryInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO;
		public void* pNext = null;
		public VkImageAspectFlags planeAspect;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPlaneAspect(VkImageAspectFlags @planeAspect) mut { planeAspect = @planeAspect;  return ref this; }
	}

	[CRepr]
	public struct VkImagePlaneMemoryRequirementsInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO;
		public void* pNext = null;
		public VkImageAspectFlags planeAspect;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPlaneAspect(VkImageAspectFlags @planeAspect) mut { planeAspect = @planeAspect;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSamplerYcbcrConversionFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES;
		public void* pNext = null;
		public VkBool32 samplerYcbcrConversion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSamplerYcbcrConversion(VkBool32 @samplerYcbcrConversion) mut { samplerYcbcrConversion = @samplerYcbcrConversion;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerYcbcrConversionImageFormatProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES;
		public void* pNext = null;
		public uint32 combinedImageSamplerDescriptorCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCombinedImageSamplerDescriptorCount(uint32 @combinedImageSamplerDescriptorCount) mut { combinedImageSamplerDescriptorCount = @combinedImageSamplerDescriptorCount;  return ref this; }
	}

	[CRepr]
	public struct VkTextureLODGatherFormatPropertiesAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD;
		public void* pNext = null;
		public VkBool32 supportsTextureGatherLODBiasAMD;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSupportsTextureGatherLODBiasAMD(VkBool32 @supportsTextureGatherLODBiasAMD) mut { supportsTextureGatherLODBiasAMD = @supportsTextureGatherLODBiasAMD;  return ref this; }
	}

	[CRepr]
	public struct VkConditionalRenderingBeginInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT;
		public void* pNext = null;
		public VkBuffer buffer;
		public uint64 offset;
		public VkConditionalRenderingFlagsEXT flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setFlags(VkConditionalRenderingFlagsEXT @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkProtectedSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO;
		public void* pNext = null;
		public VkBool32 protectedSubmit;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProtectedSubmit(VkBool32 @protectedSubmit) mut { protectedSubmit = @protectedSubmit;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProtectedMemoryFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES;
		public void* pNext = null;
		public VkBool32 protectedMemory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProtectedMemory(VkBool32 @protectedMemory) mut { protectedMemory = @protectedMemory;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProtectedMemoryProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES;
		public void* pNext = null;
		public VkBool32 protectedNoFault;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProtectedNoFault(VkBool32 @protectedNoFault) mut { protectedNoFault = @protectedNoFault;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceQueueInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2;
		public void* pNext = null;
		public VkDeviceQueueCreateFlags flags;
		public uint32 queueFamilyIndex;
		public uint32 queueIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDeviceQueueCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQueueFamilyIndex(uint32 @queueFamilyIndex) mut { queueFamilyIndex = @queueFamilyIndex;  return ref this; }
		public ref Self setQueueIndex(uint32 @queueIndex) mut { queueIndex = @queueIndex;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCoverageToColorStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 flags;
		public VkBool32 coverageToColorEnable;
		public uint32 coverageToColorLocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCoverageToColorEnable(VkBool32 @coverageToColorEnable) mut { coverageToColorEnable = @coverageToColorEnable;  return ref this; }
		public ref Self setCoverageToColorLocation(uint32 @coverageToColorLocation) mut { coverageToColorLocation = @coverageToColorLocation;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSamplerFilterMinmaxProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES;
		public void* pNext = null;
		public VkBool32 filterMinmaxSingleComponentFormats;
		public VkBool32 filterMinmaxImageComponentMapping;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFilterMinmaxSingleComponentFormats(VkBool32 @filterMinmaxSingleComponentFormats) mut { filterMinmaxSingleComponentFormats = @filterMinmaxSingleComponentFormats;  return ref this; }
		public ref Self setFilterMinmaxImageComponentMapping(VkBool32 @filterMinmaxImageComponentMapping) mut { filterMinmaxImageComponentMapping = @filterMinmaxImageComponentMapping;  return ref this; }
	}

	[CRepr]
	public struct VkSampleLocationEXT
	{
		public float x;
		public float y;

		public ref Self setX(float @x) mut { x = @x;  return ref this; }
		public ref Self setY(float @y) mut { y = @y;  return ref this; }
	}

	[CRepr]
	public struct VkSampleLocationsInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT;
		public void* pNext = null;
		public VkSampleCountFlags sampleLocationsPerPixel;
		public VkExtent2D sampleLocationGridSize;
		public uint32 sampleLocationsCount;
		public VkSampleLocationEXT* pSampleLocations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSampleLocationsPerPixel(VkSampleCountFlags @sampleLocationsPerPixel) mut { sampleLocationsPerPixel = @sampleLocationsPerPixel;  return ref this; }
		public ref Self setSampleLocationGridSize(VkExtent2D @sampleLocationGridSize) mut { sampleLocationGridSize = @sampleLocationGridSize;  return ref this; }
		public ref Self setSampleLocationsCount(uint32 @sampleLocationsCount) mut { sampleLocationsCount = @sampleLocationsCount;  return ref this; }
		public ref Self setPSampleLocations(VkSampleLocationEXT* @pSampleLocations) mut { pSampleLocations = @pSampleLocations;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentSampleLocationsEXT
	{
		public uint32 attachmentIndex;
		public VkSampleLocationsInfoEXT sampleLocationsInfo;

		public ref Self setAttachmentIndex(uint32 @attachmentIndex) mut { attachmentIndex = @attachmentIndex;  return ref this; }
		public ref Self setSampleLocationsInfo(VkSampleLocationsInfoEXT @sampleLocationsInfo) mut { sampleLocationsInfo = @sampleLocationsInfo;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassSampleLocationsEXT
	{
		public uint32 subpassIndex;
		public VkSampleLocationsInfoEXT sampleLocationsInfo;

		public ref Self setSubpassIndex(uint32 @subpassIndex) mut { subpassIndex = @subpassIndex;  return ref this; }
		public ref Self setSampleLocationsInfo(VkSampleLocationsInfoEXT @sampleLocationsInfo) mut { sampleLocationsInfo = @sampleLocationsInfo;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassSampleLocationsBeginInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT;
		public void* pNext = null;
		public uint32 attachmentInitialSampleLocationsCount;
		public VkAttachmentSampleLocationsEXT* pAttachmentInitialSampleLocations;
		public uint32 postSubpassSampleLocationsCount;
		public VkSubpassSampleLocationsEXT* pPostSubpassSampleLocations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAttachmentInitialSampleLocationsCount(uint32 @attachmentInitialSampleLocationsCount) mut { attachmentInitialSampleLocationsCount = @attachmentInitialSampleLocationsCount;  return ref this; }
		public ref Self setPAttachmentInitialSampleLocations(VkAttachmentSampleLocationsEXT* @pAttachmentInitialSampleLocations) mut { pAttachmentInitialSampleLocations = @pAttachmentInitialSampleLocations;  return ref this; }
		public ref Self setPostSubpassSampleLocationsCount(uint32 @postSubpassSampleLocationsCount) mut { postSubpassSampleLocationsCount = @postSubpassSampleLocationsCount;  return ref this; }
		public ref Self setPPostSubpassSampleLocations(VkSubpassSampleLocationsEXT* @pPostSubpassSampleLocations) mut { pPostSubpassSampleLocations = @pPostSubpassSampleLocations;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineSampleLocationsStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkBool32 sampleLocationsEnable;
		public VkSampleLocationsInfoEXT sampleLocationsInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSampleLocationsEnable(VkBool32 @sampleLocationsEnable) mut { sampleLocationsEnable = @sampleLocationsEnable;  return ref this; }
		public ref Self setSampleLocationsInfo(VkSampleLocationsInfoEXT @sampleLocationsInfo) mut { sampleLocationsInfo = @sampleLocationsInfo;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSampleLocationsPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT;
		public void* pNext = null;
		public VkSampleCountFlags sampleLocationSampleCounts;
		public VkExtent2D maxSampleLocationGridSize;
		public float[2] sampleLocationCoordinateRange;
		public uint32 sampleLocationSubPixelBits;
		public VkBool32 variableSampleLocations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSampleLocationSampleCounts(VkSampleCountFlags @sampleLocationSampleCounts) mut { sampleLocationSampleCounts = @sampleLocationSampleCounts;  return ref this; }
		public ref Self setMaxSampleLocationGridSize(VkExtent2D @maxSampleLocationGridSize) mut { maxSampleLocationGridSize = @maxSampleLocationGridSize;  return ref this; }
		public ref Self setSampleLocationCoordinateRange(float[2] @sampleLocationCoordinateRange) mut { sampleLocationCoordinateRange = @sampleLocationCoordinateRange;  return ref this; }
		public ref Self setSampleLocationSubPixelBits(uint32 @sampleLocationSubPixelBits) mut { sampleLocationSubPixelBits = @sampleLocationSubPixelBits;  return ref this; }
		public ref Self setVariableSampleLocations(VkBool32 @variableSampleLocations) mut { variableSampleLocations = @variableSampleLocations;  return ref this; }
	}

	[CRepr]
	public struct VkMultisamplePropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT;
		public void* pNext = null;
		public VkExtent2D maxSampleLocationGridSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxSampleLocationGridSize(VkExtent2D @maxSampleLocationGridSize) mut { maxSampleLocationGridSize = @maxSampleLocationGridSize;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerReductionModeCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO;
		public void* pNext = null;
		public VkSamplerReductionMode reductionMode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setReductionMode(VkSamplerReductionMode @reductionMode) mut { reductionMode = @reductionMode;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 advancedBlendCoherentOperations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAdvancedBlendCoherentOperations(VkBool32 @advancedBlendCoherentOperations) mut { advancedBlendCoherentOperations = @advancedBlendCoherentOperations;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMultiDrawFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 multiDraw;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMultiDraw(VkBool32 @multiDraw) mut { multiDraw = @multiDraw;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 advancedBlendMaxColorAttachments;
		public VkBool32 advancedBlendIndependentBlend;
		public VkBool32 advancedBlendNonPremultipliedSrcColor;
		public VkBool32 advancedBlendNonPremultipliedDstColor;
		public VkBool32 advancedBlendCorrelatedOverlap;
		public VkBool32 advancedBlendAllOperations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAdvancedBlendMaxColorAttachments(uint32 @advancedBlendMaxColorAttachments) mut { advancedBlendMaxColorAttachments = @advancedBlendMaxColorAttachments;  return ref this; }
		public ref Self setAdvancedBlendIndependentBlend(VkBool32 @advancedBlendIndependentBlend) mut { advancedBlendIndependentBlend = @advancedBlendIndependentBlend;  return ref this; }
		public ref Self setAdvancedBlendNonPremultipliedSrcColor(VkBool32 @advancedBlendNonPremultipliedSrcColor) mut { advancedBlendNonPremultipliedSrcColor = @advancedBlendNonPremultipliedSrcColor;  return ref this; }
		public ref Self setAdvancedBlendNonPremultipliedDstColor(VkBool32 @advancedBlendNonPremultipliedDstColor) mut { advancedBlendNonPremultipliedDstColor = @advancedBlendNonPremultipliedDstColor;  return ref this; }
		public ref Self setAdvancedBlendCorrelatedOverlap(VkBool32 @advancedBlendCorrelatedOverlap) mut { advancedBlendCorrelatedOverlap = @advancedBlendCorrelatedOverlap;  return ref this; }
		public ref Self setAdvancedBlendAllOperations(VkBool32 @advancedBlendAllOperations) mut { advancedBlendAllOperations = @advancedBlendAllOperations;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineColorBlendAdvancedStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkBool32 srcPremultiplied;
		public VkBool32 dstPremultiplied;
		public VkBlendOverlapEXT blendOverlap;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcPremultiplied(VkBool32 @srcPremultiplied) mut { srcPremultiplied = @srcPremultiplied;  return ref this; }
		public ref Self setDstPremultiplied(VkBool32 @dstPremultiplied) mut { dstPremultiplied = @dstPremultiplied;  return ref this; }
		public ref Self setBlendOverlap(VkBlendOverlapEXT @blendOverlap) mut { blendOverlap = @blendOverlap;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceInlineUniformBlockFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES;
		public void* pNext = null;
		public VkBool32 inlineUniformBlock;
		public VkBool32 descriptorBindingInlineUniformBlockUpdateAfterBind;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setInlineUniformBlock(VkBool32 @inlineUniformBlock) mut { inlineUniformBlock = @inlineUniformBlock;  return ref this; }
		public ref Self setDescriptorBindingInlineUniformBlockUpdateAfterBind(VkBool32 @descriptorBindingInlineUniformBlockUpdateAfterBind) mut { descriptorBindingInlineUniformBlockUpdateAfterBind = @descriptorBindingInlineUniformBlockUpdateAfterBind;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceInlineUniformBlockProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES;
		public void* pNext = null;
		public uint32 maxInlineUniformBlockSize;
		public uint32 maxPerStageDescriptorInlineUniformBlocks;
		public uint32 maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
		public uint32 maxDescriptorSetInlineUniformBlocks;
		public uint32 maxDescriptorSetUpdateAfterBindInlineUniformBlocks;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxInlineUniformBlockSize(uint32 @maxInlineUniformBlockSize) mut { maxInlineUniformBlockSize = @maxInlineUniformBlockSize;  return ref this; }
		public ref Self setMaxPerStageDescriptorInlineUniformBlocks(uint32 @maxPerStageDescriptorInlineUniformBlocks) mut { maxPerStageDescriptorInlineUniformBlocks = @maxPerStageDescriptorInlineUniformBlocks;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(uint32 @maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) mut { maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = @maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;  return ref this; }
		public ref Self setMaxDescriptorSetInlineUniformBlocks(uint32 @maxDescriptorSetInlineUniformBlocks) mut { maxDescriptorSetInlineUniformBlocks = @maxDescriptorSetInlineUniformBlocks;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(uint32 @maxDescriptorSetUpdateAfterBindInlineUniformBlocks) mut { maxDescriptorSetUpdateAfterBindInlineUniformBlocks = @maxDescriptorSetUpdateAfterBindInlineUniformBlocks;  return ref this; }
	}

	[CRepr]
	public struct VkWriteDescriptorSetInlineUniformBlock
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK;
		public void* pNext = null;
		public uint32 dataSize;
		public void* pData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDataSize(uint32 @dataSize) mut { dataSize = @dataSize;  return ref this; }
		public ref Self setPData(void* @pData) mut { pData = @pData;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorPoolInlineUniformBlockCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO;
		public void* pNext = null;
		public uint32 maxInlineUniformBlockBindings;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxInlineUniformBlockBindings(uint32 @maxInlineUniformBlockBindings) mut { maxInlineUniformBlockBindings = @maxInlineUniformBlockBindings;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCoverageModulationStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 flags;
		public VkCoverageModulationModeNV coverageModulationMode;
		public VkBool32 coverageModulationTableEnable;
		public uint32 coverageModulationTableCount;
		public float* pCoverageModulationTable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCoverageModulationMode(VkCoverageModulationModeNV @coverageModulationMode) mut { coverageModulationMode = @coverageModulationMode;  return ref this; }
		public ref Self setCoverageModulationTableEnable(VkBool32 @coverageModulationTableEnable) mut { coverageModulationTableEnable = @coverageModulationTableEnable;  return ref this; }
		public ref Self setCoverageModulationTableCount(uint32 @coverageModulationTableCount) mut { coverageModulationTableCount = @coverageModulationTableCount;  return ref this; }
		public ref Self setPCoverageModulationTable(float* @pCoverageModulationTable) mut { pCoverageModulationTable = @pCoverageModulationTable;  return ref this; }
	}

	[CRepr]
	public struct VkImageFormatListCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO;
		public void* pNext = null;
		public uint32 viewFormatCount;
		public VkFormat* pViewFormats;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setViewFormatCount(uint32 @viewFormatCount) mut { viewFormatCount = @viewFormatCount;  return ref this; }
		public ref Self setPViewFormats(VkFormat* @pViewFormats) mut { pViewFormats = @pViewFormats;  return ref this; }
	}

	[CRepr]
	public struct VkValidationCacheCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public uint initialDataSize;
		public void* pInitialData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setInitialDataSize(uint @initialDataSize) mut { initialDataSize = @initialDataSize;  return ref this; }
		public ref Self setPInitialData(void* @pInitialData) mut { pInitialData = @pInitialData;  return ref this; }
	}

	[CRepr]
	public struct VkShaderModuleValidationCacheCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkValidationCacheEXT validationCache;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setValidationCache(VkValidationCacheEXT @validationCache) mut { validationCache = @validationCache;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMaintenance3Properties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES;
		public void* pNext = null;
		public uint32 maxPerSetDescriptors;
		public uint64 maxMemoryAllocationSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxPerSetDescriptors(uint32 @maxPerSetDescriptors) mut { maxPerSetDescriptors = @maxPerSetDescriptors;  return ref this; }
		public ref Self setMaxMemoryAllocationSize(uint64 @maxMemoryAllocationSize) mut { maxMemoryAllocationSize = @maxMemoryAllocationSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMaintenance4Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES;
		public void* pNext = null;
		public VkBool32 maintenance4;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaintenance4(VkBool32 @maintenance4) mut { maintenance4 = @maintenance4;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMaintenance4Properties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES;
		public void* pNext = null;
		public uint64 maxBufferSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxBufferSize(uint64 @maxBufferSize) mut { maxBufferSize = @maxBufferSize;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetLayoutSupport
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT;
		public void* pNext = null;
		public VkBool32 supported;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSupported(VkBool32 @supported) mut { supported = @supported;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderDrawParametersFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderDrawParameters;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderDrawParameters(VkBool32 @shaderDrawParameters) mut { shaderDrawParameters = @shaderDrawParameters;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderFloat16Int8Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderFloat16;
		public VkBool32 shaderInt8;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderFloat16(VkBool32 @shaderFloat16) mut { shaderFloat16 = @shaderFloat16;  return ref this; }
		public ref Self setShaderInt8(VkBool32 @shaderInt8) mut { shaderInt8 = @shaderInt8;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFloatControlsProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES;
		public void* pNext = null;
		public VkShaderFloatControlsIndependence denormBehaviorIndependence;
		public VkShaderFloatControlsIndependence roundingModeIndependence;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat16;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat32;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat64;
		public VkBool32 shaderDenormPreserveFloat16;
		public VkBool32 shaderDenormPreserveFloat32;
		public VkBool32 shaderDenormPreserveFloat64;
		public VkBool32 shaderDenormFlushToZeroFloat16;
		public VkBool32 shaderDenormFlushToZeroFloat32;
		public VkBool32 shaderDenormFlushToZeroFloat64;
		public VkBool32 shaderRoundingModeRTEFloat16;
		public VkBool32 shaderRoundingModeRTEFloat32;
		public VkBool32 shaderRoundingModeRTEFloat64;
		public VkBool32 shaderRoundingModeRTZFloat16;
		public VkBool32 shaderRoundingModeRTZFloat32;
		public VkBool32 shaderRoundingModeRTZFloat64;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDenormBehaviorIndependence(VkShaderFloatControlsIndependence @denormBehaviorIndependence) mut { denormBehaviorIndependence = @denormBehaviorIndependence;  return ref this; }
		public ref Self setRoundingModeIndependence(VkShaderFloatControlsIndependence @roundingModeIndependence) mut { roundingModeIndependence = @roundingModeIndependence;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat16(VkBool32 @shaderSignedZeroInfNanPreserveFloat16) mut { shaderSignedZeroInfNanPreserveFloat16 = @shaderSignedZeroInfNanPreserveFloat16;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat32(VkBool32 @shaderSignedZeroInfNanPreserveFloat32) mut { shaderSignedZeroInfNanPreserveFloat32 = @shaderSignedZeroInfNanPreserveFloat32;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat64(VkBool32 @shaderSignedZeroInfNanPreserveFloat64) mut { shaderSignedZeroInfNanPreserveFloat64 = @shaderSignedZeroInfNanPreserveFloat64;  return ref this; }
		public ref Self setShaderDenormPreserveFloat16(VkBool32 @shaderDenormPreserveFloat16) mut { shaderDenormPreserveFloat16 = @shaderDenormPreserveFloat16;  return ref this; }
		public ref Self setShaderDenormPreserveFloat32(VkBool32 @shaderDenormPreserveFloat32) mut { shaderDenormPreserveFloat32 = @shaderDenormPreserveFloat32;  return ref this; }
		public ref Self setShaderDenormPreserveFloat64(VkBool32 @shaderDenormPreserveFloat64) mut { shaderDenormPreserveFloat64 = @shaderDenormPreserveFloat64;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat16(VkBool32 @shaderDenormFlushToZeroFloat16) mut { shaderDenormFlushToZeroFloat16 = @shaderDenormFlushToZeroFloat16;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat32(VkBool32 @shaderDenormFlushToZeroFloat32) mut { shaderDenormFlushToZeroFloat32 = @shaderDenormFlushToZeroFloat32;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat64(VkBool32 @shaderDenormFlushToZeroFloat64) mut { shaderDenormFlushToZeroFloat64 = @shaderDenormFlushToZeroFloat64;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat16(VkBool32 @shaderRoundingModeRTEFloat16) mut { shaderRoundingModeRTEFloat16 = @shaderRoundingModeRTEFloat16;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat32(VkBool32 @shaderRoundingModeRTEFloat32) mut { shaderRoundingModeRTEFloat32 = @shaderRoundingModeRTEFloat32;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat64(VkBool32 @shaderRoundingModeRTEFloat64) mut { shaderRoundingModeRTEFloat64 = @shaderRoundingModeRTEFloat64;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat16(VkBool32 @shaderRoundingModeRTZFloat16) mut { shaderRoundingModeRTZFloat16 = @shaderRoundingModeRTZFloat16;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat32(VkBool32 @shaderRoundingModeRTZFloat32) mut { shaderRoundingModeRTZFloat32 = @shaderRoundingModeRTZFloat32;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat64(VkBool32 @shaderRoundingModeRTZFloat64) mut { shaderRoundingModeRTZFloat64 = @shaderRoundingModeRTZFloat64;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceHostQueryResetFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES;
		public void* pNext = null;
		public VkBool32 hostQueryReset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHostQueryReset(VkBool32 @hostQueryReset) mut { hostQueryReset = @hostQueryReset;  return ref this; }
	}

	[CRepr]
	public struct VkNativeBufferUsage2ANDROID
	{
		public uint64 consumer;
		public uint64 producer;

		public ref Self setConsumer(uint64 @consumer) mut { consumer = @consumer;  return ref this; }
		public ref Self setProducer(uint64 @producer) mut { producer = @producer;  return ref this; }
	}

	[CRepr]
	public struct VkNativeBufferANDROID
	{
		public VkStructureType sType;
		public void* pNext = null;
		public void* handle;
		public int stride;
		public int format;
		public int usage;
		public VkNativeBufferUsage2ANDROID usage2;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandle(void* @handle) mut { handle = @handle;  return ref this; }
		public ref Self setStride(int @stride) mut { stride = @stride;  return ref this; }
		public ref Self setFormat(int @format) mut { format = @format;  return ref this; }
		public ref Self setUsage(int @usage) mut { usage = @usage;  return ref this; }
		public ref Self setUsage2(VkNativeBufferUsage2ANDROID @usage2) mut { usage2 = @usage2;  return ref this; }
	}

	[CRepr]
	public struct VkSwapchainImageCreateInfoANDROID
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkSwapchainImageUsageFlagsANDROID usage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setUsage(VkSwapchainImageUsageFlagsANDROID @usage) mut { usage = @usage;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePresentationPropertiesANDROID
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkBool32 sharedImage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSharedImage(VkBool32 @sharedImage) mut { sharedImage = @sharedImage;  return ref this; }
	}

	[CRepr]
	public struct VkShaderResourceUsageAMD
	{
		public uint32 numUsedVgprs;
		public uint32 numUsedSgprs;
		public uint32 ldsSizePerLocalWorkGroup;
		public uint ldsUsageSizeInBytes;
		public uint scratchMemUsageInBytes;

		public ref Self setNumUsedVgprs(uint32 @numUsedVgprs) mut { numUsedVgprs = @numUsedVgprs;  return ref this; }
		public ref Self setNumUsedSgprs(uint32 @numUsedSgprs) mut { numUsedSgprs = @numUsedSgprs;  return ref this; }
		public ref Self setLdsSizePerLocalWorkGroup(uint32 @ldsSizePerLocalWorkGroup) mut { ldsSizePerLocalWorkGroup = @ldsSizePerLocalWorkGroup;  return ref this; }
		public ref Self setLdsUsageSizeInBytes(uint @ldsUsageSizeInBytes) mut { ldsUsageSizeInBytes = @ldsUsageSizeInBytes;  return ref this; }
		public ref Self setScratchMemUsageInBytes(uint @scratchMemUsageInBytes) mut { scratchMemUsageInBytes = @scratchMemUsageInBytes;  return ref this; }
	}

	[CRepr]
	public struct VkShaderStatisticsInfoAMD
	{
		public VkShaderStageFlags shaderStageMask;
		public VkShaderResourceUsageAMD resourceUsage;
		public uint32 numPhysicalVgprs;
		public uint32 numPhysicalSgprs;
		public uint32 numAvailableVgprs;
		public uint32 numAvailableSgprs;
		public uint32[3] computeWorkGroupSize;

		public ref Self setShaderStageMask(VkShaderStageFlags @shaderStageMask) mut { shaderStageMask = @shaderStageMask;  return ref this; }
		public ref Self setResourceUsage(VkShaderResourceUsageAMD @resourceUsage) mut { resourceUsage = @resourceUsage;  return ref this; }
		public ref Self setNumPhysicalVgprs(uint32 @numPhysicalVgprs) mut { numPhysicalVgprs = @numPhysicalVgprs;  return ref this; }
		public ref Self setNumPhysicalSgprs(uint32 @numPhysicalSgprs) mut { numPhysicalSgprs = @numPhysicalSgprs;  return ref this; }
		public ref Self setNumAvailableVgprs(uint32 @numAvailableVgprs) mut { numAvailableVgprs = @numAvailableVgprs;  return ref this; }
		public ref Self setNumAvailableSgprs(uint32 @numAvailableSgprs) mut { numAvailableSgprs = @numAvailableSgprs;  return ref this; }
		public ref Self setComputeWorkGroupSize(uint32[3] @computeWorkGroupSize) mut { computeWorkGroupSize = @computeWorkGroupSize;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceQueueGlobalPriorityCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkQueueGlobalPriorityKHR globalPriority;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGlobalPriority(VkQueueGlobalPriorityKHR @globalPriority) mut { globalPriority = @globalPriority;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 globalPriorityQuery;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGlobalPriorityQuery(VkBool32 @globalPriorityQuery) mut { globalPriorityQuery = @globalPriorityQuery;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyGlobalPriorityPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 priorityCount;
		public VkQueueGlobalPriorityKHR[16] priorities;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPriorityCount(uint32 @priorityCount) mut { priorityCount = @priorityCount;  return ref this; }
		public ref Self setPriorities(VkQueueGlobalPriorityKHR[16] @priorities) mut { priorities = @priorities;  return ref this; }
	}

	[CRepr]
	public struct VkDebugUtilsObjectNameInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT;
		public void* pNext = null;
		public VkObjectType objectType;
		public uint64 objectHandle;
		public char8* pObjectName;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setObjectType(VkObjectType @objectType) mut { objectType = @objectType;  return ref this; }
		public ref Self setObjectHandle(uint64 @objectHandle) mut { objectHandle = @objectHandle;  return ref this; }
		public ref Self setPObjectName(char8* @pObjectName) mut { pObjectName = @pObjectName;  return ref this; }
	}

	[CRepr]
	public struct VkDebugUtilsObjectTagInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT;
		public void* pNext = null;
		public VkObjectType objectType;
		public uint64 objectHandle;
		public uint64 tagName;
		public uint tagSize;
		public void* pTag;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setObjectType(VkObjectType @objectType) mut { objectType = @objectType;  return ref this; }
		public ref Self setObjectHandle(uint64 @objectHandle) mut { objectHandle = @objectHandle;  return ref this; }
		public ref Self setTagName(uint64 @tagName) mut { tagName = @tagName;  return ref this; }
		public ref Self setTagSize(uint @tagSize) mut { tagSize = @tagSize;  return ref this; }
		public ref Self setPTag(void* @pTag) mut { pTag = @pTag;  return ref this; }
	}

	[CRepr]
	public struct VkDebugUtilsLabelEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT;
		public void* pNext = null;
		public char8* pLabelName;
		public float[4] color;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPLabelName(char8* @pLabelName) mut { pLabelName = @pLabelName;  return ref this; }
		public ref Self setColor(float[4] @color) mut { color = @color;  return ref this; }
	}

	[CRepr]
	public struct VkDebugUtilsMessengerCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public VkDebugUtilsMessageSeverityFlagsEXT messageSeverity;
		public VkDebugUtilsMessageTypeFlagsEXT messageType;
		public void* pfnUserCallback;
		public void* pUserData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setMessageSeverity(VkDebugUtilsMessageSeverityFlagsEXT @messageSeverity) mut { messageSeverity = @messageSeverity;  return ref this; }
		public ref Self setMessageType(VkDebugUtilsMessageTypeFlagsEXT @messageType) mut { messageType = @messageType;  return ref this; }
		public ref Self setPfnUserCallback(void* @pfnUserCallback) mut { pfnUserCallback = @pfnUserCallback;  return ref this; }
		public ref Self setPUserData(void* @pUserData) mut { pUserData = @pUserData;  return ref this; }
	}

	[CRepr]
	public struct VkDebugUtilsMessengerCallbackDataEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT;
		public void* pNext = null;
		public uint32 flags;
		public char8* pMessageIdName;
		public int32 messageIdNumber;
		public char8* pMessage;
		public uint32 queueLabelCount;
		public VkDebugUtilsLabelEXT* pQueueLabels;
		public uint32 cmdBufLabelCount;
		public VkDebugUtilsLabelEXT* pCmdBufLabels;
		public uint32 objectCount;
		public VkDebugUtilsObjectNameInfoEXT* pObjects;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPMessageIdName(char8* @pMessageIdName) mut { pMessageIdName = @pMessageIdName;  return ref this; }
		public ref Self setMessageIdNumber(int32 @messageIdNumber) mut { messageIdNumber = @messageIdNumber;  return ref this; }
		public ref Self setPMessage(char8* @pMessage) mut { pMessage = @pMessage;  return ref this; }
		public ref Self setQueueLabelCount(uint32 @queueLabelCount) mut { queueLabelCount = @queueLabelCount;  return ref this; }
		public ref Self setPQueueLabels(VkDebugUtilsLabelEXT* @pQueueLabels) mut { pQueueLabels = @pQueueLabels;  return ref this; }
		public ref Self setCmdBufLabelCount(uint32 @cmdBufLabelCount) mut { cmdBufLabelCount = @cmdBufLabelCount;  return ref this; }
		public ref Self setPCmdBufLabels(VkDebugUtilsLabelEXT* @pCmdBufLabels) mut { pCmdBufLabels = @pCmdBufLabels;  return ref this; }
		public ref Self setObjectCount(uint32 @objectCount) mut { objectCount = @objectCount;  return ref this; }
		public ref Self setPObjects(VkDebugUtilsObjectNameInfoEXT* @pObjects) mut { pObjects = @pObjects;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDeviceMemoryReportFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 deviceMemoryReport;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceMemoryReport(VkBool32 @deviceMemoryReport) mut { deviceMemoryReport = @deviceMemoryReport;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceDeviceMemoryReportCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public void* pfnUserCallback;
		public void* pUserData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPfnUserCallback(void* @pfnUserCallback) mut { pfnUserCallback = @pfnUserCallback;  return ref this; }
		public ref Self setPUserData(void* @pUserData) mut { pUserData = @pUserData;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceMemoryReportCallbackDataEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT;
		public void* pNext = null;
		public uint32 flags;
		public VkDeviceMemoryReportEventTypeEXT type;
		public uint64 memoryObjectId;
		public uint64 size;
		public VkObjectType objectType;
		public uint64 objectHandle;
		public uint32 heapIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setType(VkDeviceMemoryReportEventTypeEXT @type) mut { type = @type;  return ref this; }
		public ref Self setMemoryObjectId(uint64 @memoryObjectId) mut { memoryObjectId = @memoryObjectId;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setObjectType(VkObjectType @objectType) mut { objectType = @objectType;  return ref this; }
		public ref Self setObjectHandle(uint64 @objectHandle) mut { objectHandle = @objectHandle;  return ref this; }
		public ref Self setHeapIndex(uint32 @heapIndex) mut { heapIndex = @heapIndex;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryHostPointerInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT;
		public void* pNext = null;
		public VkExternalMemoryHandleTypeFlags handleType;
		public void* pHostPointer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
		public ref Self setPHostPointer(void* @pHostPointer) mut { pHostPointer = @pHostPointer;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryHostPointerPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 memoryTypeBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalMemoryHostPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT;
		public void* pNext = null;
		public uint64 minImportedHostPointerAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinImportedHostPointerAlignment(uint64 @minImportedHostPointerAlignment) mut { minImportedHostPointerAlignment = @minImportedHostPointerAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceConservativeRasterizationPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT;
		public void* pNext = null;
		public float primitiveOverestimationSize;
		public float maxExtraPrimitiveOverestimationSize;
		public float extraPrimitiveOverestimationSizeGranularity;
		public VkBool32 primitiveUnderestimation;
		public VkBool32 conservativePointAndLineRasterization;
		public VkBool32 degenerateTrianglesRasterized;
		public VkBool32 degenerateLinesRasterized;
		public VkBool32 fullyCoveredFragmentShaderInputVariable;
		public VkBool32 conservativeRasterizationPostDepthCoverage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrimitiveOverestimationSize(float @primitiveOverestimationSize) mut { primitiveOverestimationSize = @primitiveOverestimationSize;  return ref this; }
		public ref Self setMaxExtraPrimitiveOverestimationSize(float @maxExtraPrimitiveOverestimationSize) mut { maxExtraPrimitiveOverestimationSize = @maxExtraPrimitiveOverestimationSize;  return ref this; }
		public ref Self setExtraPrimitiveOverestimationSizeGranularity(float @extraPrimitiveOverestimationSizeGranularity) mut { extraPrimitiveOverestimationSizeGranularity = @extraPrimitiveOverestimationSizeGranularity;  return ref this; }
		public ref Self setPrimitiveUnderestimation(VkBool32 @primitiveUnderestimation) mut { primitiveUnderestimation = @primitiveUnderestimation;  return ref this; }
		public ref Self setConservativePointAndLineRasterization(VkBool32 @conservativePointAndLineRasterization) mut { conservativePointAndLineRasterization = @conservativePointAndLineRasterization;  return ref this; }
		public ref Self setDegenerateTrianglesRasterized(VkBool32 @degenerateTrianglesRasterized) mut { degenerateTrianglesRasterized = @degenerateTrianglesRasterized;  return ref this; }
		public ref Self setDegenerateLinesRasterized(VkBool32 @degenerateLinesRasterized) mut { degenerateLinesRasterized = @degenerateLinesRasterized;  return ref this; }
		public ref Self setFullyCoveredFragmentShaderInputVariable(VkBool32 @fullyCoveredFragmentShaderInputVariable) mut { fullyCoveredFragmentShaderInputVariable = @fullyCoveredFragmentShaderInputVariable;  return ref this; }
		public ref Self setConservativeRasterizationPostDepthCoverage(VkBool32 @conservativeRasterizationPostDepthCoverage) mut { conservativeRasterizationPostDepthCoverage = @conservativeRasterizationPostDepthCoverage;  return ref this; }
	}

	[CRepr]
	public struct VkCalibratedTimestampInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT;
		public void* pNext = null;
		public VkTimeDomainEXT timeDomain;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTimeDomain(VkTimeDomainEXT @timeDomain) mut { timeDomain = @timeDomain;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderCorePropertiesAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD;
		public void* pNext = null;
		public uint32 shaderEngineCount;
		public uint32 shaderArraysPerEngineCount;
		public uint32 computeUnitsPerShaderArray;
		public uint32 simdPerComputeUnit;
		public uint32 wavefrontsPerSimd;
		public uint32 wavefrontSize;
		public uint32 sgprsPerSimd;
		public uint32 minSgprAllocation;
		public uint32 maxSgprAllocation;
		public uint32 sgprAllocationGranularity;
		public uint32 vgprsPerSimd;
		public uint32 minVgprAllocation;
		public uint32 maxVgprAllocation;
		public uint32 vgprAllocationGranularity;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderEngineCount(uint32 @shaderEngineCount) mut { shaderEngineCount = @shaderEngineCount;  return ref this; }
		public ref Self setShaderArraysPerEngineCount(uint32 @shaderArraysPerEngineCount) mut { shaderArraysPerEngineCount = @shaderArraysPerEngineCount;  return ref this; }
		public ref Self setComputeUnitsPerShaderArray(uint32 @computeUnitsPerShaderArray) mut { computeUnitsPerShaderArray = @computeUnitsPerShaderArray;  return ref this; }
		public ref Self setSimdPerComputeUnit(uint32 @simdPerComputeUnit) mut { simdPerComputeUnit = @simdPerComputeUnit;  return ref this; }
		public ref Self setWavefrontsPerSimd(uint32 @wavefrontsPerSimd) mut { wavefrontsPerSimd = @wavefrontsPerSimd;  return ref this; }
		public ref Self setWavefrontSize(uint32 @wavefrontSize) mut { wavefrontSize = @wavefrontSize;  return ref this; }
		public ref Self setSgprsPerSimd(uint32 @sgprsPerSimd) mut { sgprsPerSimd = @sgprsPerSimd;  return ref this; }
		public ref Self setMinSgprAllocation(uint32 @minSgprAllocation) mut { minSgprAllocation = @minSgprAllocation;  return ref this; }
		public ref Self setMaxSgprAllocation(uint32 @maxSgprAllocation) mut { maxSgprAllocation = @maxSgprAllocation;  return ref this; }
		public ref Self setSgprAllocationGranularity(uint32 @sgprAllocationGranularity) mut { sgprAllocationGranularity = @sgprAllocationGranularity;  return ref this; }
		public ref Self setVgprsPerSimd(uint32 @vgprsPerSimd) mut { vgprsPerSimd = @vgprsPerSimd;  return ref this; }
		public ref Self setMinVgprAllocation(uint32 @minVgprAllocation) mut { minVgprAllocation = @minVgprAllocation;  return ref this; }
		public ref Self setMaxVgprAllocation(uint32 @maxVgprAllocation) mut { maxVgprAllocation = @maxVgprAllocation;  return ref this; }
		public ref Self setVgprAllocationGranularity(uint32 @vgprAllocationGranularity) mut { vgprAllocationGranularity = @vgprAllocationGranularity;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderCoreProperties2AMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD;
		public void* pNext = null;
		public VkShaderCorePropertiesFlagsAMD shaderCoreFeatures;
		public uint32 activeComputeUnitCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderCoreFeatures(VkShaderCorePropertiesFlagsAMD @shaderCoreFeatures) mut { shaderCoreFeatures = @shaderCoreFeatures;  return ref this; }
		public ref Self setActiveComputeUnitCount(uint32 @activeComputeUnitCount) mut { activeComputeUnitCount = @activeComputeUnitCount;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationConservativeStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public VkConservativeRasterizationModeEXT conservativeRasterizationMode;
		public float extraPrimitiveOverestimationSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setConservativeRasterizationMode(VkConservativeRasterizationModeEXT @conservativeRasterizationMode) mut { conservativeRasterizationMode = @conservativeRasterizationMode;  return ref this; }
		public ref Self setExtraPrimitiveOverestimationSize(float @extraPrimitiveOverestimationSize) mut { extraPrimitiveOverestimationSize = @extraPrimitiveOverestimationSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDescriptorIndexingFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderInputAttachmentArrayDynamicIndexing;
		public VkBool32 shaderUniformTexelBufferArrayDynamicIndexing;
		public VkBool32 shaderStorageTexelBufferArrayDynamicIndexing;
		public VkBool32 shaderUniformBufferArrayNonUniformIndexing;
		public VkBool32 shaderSampledImageArrayNonUniformIndexing;
		public VkBool32 shaderStorageBufferArrayNonUniformIndexing;
		public VkBool32 shaderStorageImageArrayNonUniformIndexing;
		public VkBool32 shaderInputAttachmentArrayNonUniformIndexing;
		public VkBool32 shaderUniformTexelBufferArrayNonUniformIndexing;
		public VkBool32 shaderStorageTexelBufferArrayNonUniformIndexing;
		public VkBool32 descriptorBindingUniformBufferUpdateAfterBind;
		public VkBool32 descriptorBindingSampledImageUpdateAfterBind;
		public VkBool32 descriptorBindingStorageImageUpdateAfterBind;
		public VkBool32 descriptorBindingStorageBufferUpdateAfterBind;
		public VkBool32 descriptorBindingUniformTexelBufferUpdateAfterBind;
		public VkBool32 descriptorBindingStorageTexelBufferUpdateAfterBind;
		public VkBool32 descriptorBindingUpdateUnusedWhilePending;
		public VkBool32 descriptorBindingPartiallyBound;
		public VkBool32 descriptorBindingVariableDescriptorCount;
		public VkBool32 runtimeDescriptorArray;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderInputAttachmentArrayDynamicIndexing(VkBool32 @shaderInputAttachmentArrayDynamicIndexing) mut { shaderInputAttachmentArrayDynamicIndexing = @shaderInputAttachmentArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderUniformTexelBufferArrayDynamicIndexing(VkBool32 @shaderUniformTexelBufferArrayDynamicIndexing) mut { shaderUniformTexelBufferArrayDynamicIndexing = @shaderUniformTexelBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderStorageTexelBufferArrayDynamicIndexing(VkBool32 @shaderStorageTexelBufferArrayDynamicIndexing) mut { shaderStorageTexelBufferArrayDynamicIndexing = @shaderStorageTexelBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderUniformBufferArrayNonUniformIndexing(VkBool32 @shaderUniformBufferArrayNonUniformIndexing) mut { shaderUniformBufferArrayNonUniformIndexing = @shaderUniformBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderSampledImageArrayNonUniformIndexing(VkBool32 @shaderSampledImageArrayNonUniformIndexing) mut { shaderSampledImageArrayNonUniformIndexing = @shaderSampledImageArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageBufferArrayNonUniformIndexing(VkBool32 @shaderStorageBufferArrayNonUniformIndexing) mut { shaderStorageBufferArrayNonUniformIndexing = @shaderStorageBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageImageArrayNonUniformIndexing(VkBool32 @shaderStorageImageArrayNonUniformIndexing) mut { shaderStorageImageArrayNonUniformIndexing = @shaderStorageImageArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderInputAttachmentArrayNonUniformIndexing(VkBool32 @shaderInputAttachmentArrayNonUniformIndexing) mut { shaderInputAttachmentArrayNonUniformIndexing = @shaderInputAttachmentArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderUniformTexelBufferArrayNonUniformIndexing(VkBool32 @shaderUniformTexelBufferArrayNonUniformIndexing) mut { shaderUniformTexelBufferArrayNonUniformIndexing = @shaderUniformTexelBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageTexelBufferArrayNonUniformIndexing(VkBool32 @shaderStorageTexelBufferArrayNonUniformIndexing) mut { shaderStorageTexelBufferArrayNonUniformIndexing = @shaderStorageTexelBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setDescriptorBindingUniformBufferUpdateAfterBind(VkBool32 @descriptorBindingUniformBufferUpdateAfterBind) mut { descriptorBindingUniformBufferUpdateAfterBind = @descriptorBindingUniformBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingSampledImageUpdateAfterBind(VkBool32 @descriptorBindingSampledImageUpdateAfterBind) mut { descriptorBindingSampledImageUpdateAfterBind = @descriptorBindingSampledImageUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageImageUpdateAfterBind(VkBool32 @descriptorBindingStorageImageUpdateAfterBind) mut { descriptorBindingStorageImageUpdateAfterBind = @descriptorBindingStorageImageUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageBufferUpdateAfterBind(VkBool32 @descriptorBindingStorageBufferUpdateAfterBind) mut { descriptorBindingStorageBufferUpdateAfterBind = @descriptorBindingStorageBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingUniformTexelBufferUpdateAfterBind(VkBool32 @descriptorBindingUniformTexelBufferUpdateAfterBind) mut { descriptorBindingUniformTexelBufferUpdateAfterBind = @descriptorBindingUniformTexelBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageTexelBufferUpdateAfterBind(VkBool32 @descriptorBindingStorageTexelBufferUpdateAfterBind) mut { descriptorBindingStorageTexelBufferUpdateAfterBind = @descriptorBindingStorageTexelBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingUpdateUnusedWhilePending(VkBool32 @descriptorBindingUpdateUnusedWhilePending) mut { descriptorBindingUpdateUnusedWhilePending = @descriptorBindingUpdateUnusedWhilePending;  return ref this; }
		public ref Self setDescriptorBindingPartiallyBound(VkBool32 @descriptorBindingPartiallyBound) mut { descriptorBindingPartiallyBound = @descriptorBindingPartiallyBound;  return ref this; }
		public ref Self setDescriptorBindingVariableDescriptorCount(VkBool32 @descriptorBindingVariableDescriptorCount) mut { descriptorBindingVariableDescriptorCount = @descriptorBindingVariableDescriptorCount;  return ref this; }
		public ref Self setRuntimeDescriptorArray(VkBool32 @runtimeDescriptorArray) mut { runtimeDescriptorArray = @runtimeDescriptorArray;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDescriptorIndexingProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES;
		public void* pNext = null;
		public uint32 maxUpdateAfterBindDescriptorsInAllPools;
		public VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
		public VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
		public VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
		public VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
		public VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
		public VkBool32 robustBufferAccessUpdateAfterBind;
		public VkBool32 quadDivergentImplicitLod;
		public uint32 maxPerStageDescriptorUpdateAfterBindSamplers;
		public uint32 maxPerStageDescriptorUpdateAfterBindUniformBuffers;
		public uint32 maxPerStageDescriptorUpdateAfterBindStorageBuffers;
		public uint32 maxPerStageDescriptorUpdateAfterBindSampledImages;
		public uint32 maxPerStageDescriptorUpdateAfterBindStorageImages;
		public uint32 maxPerStageDescriptorUpdateAfterBindInputAttachments;
		public uint32 maxPerStageUpdateAfterBindResources;
		public uint32 maxDescriptorSetUpdateAfterBindSamplers;
		public uint32 maxDescriptorSetUpdateAfterBindUniformBuffers;
		public uint32 maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
		public uint32 maxDescriptorSetUpdateAfterBindStorageBuffers;
		public uint32 maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
		public uint32 maxDescriptorSetUpdateAfterBindSampledImages;
		public uint32 maxDescriptorSetUpdateAfterBindStorageImages;
		public uint32 maxDescriptorSetUpdateAfterBindInputAttachments;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxUpdateAfterBindDescriptorsInAllPools(uint32 @maxUpdateAfterBindDescriptorsInAllPools) mut { maxUpdateAfterBindDescriptorsInAllPools = @maxUpdateAfterBindDescriptorsInAllPools;  return ref this; }
		public ref Self setShaderUniformBufferArrayNonUniformIndexingNative(VkBool32 @shaderUniformBufferArrayNonUniformIndexingNative) mut { shaderUniformBufferArrayNonUniformIndexingNative = @shaderUniformBufferArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderSampledImageArrayNonUniformIndexingNative(VkBool32 @shaderSampledImageArrayNonUniformIndexingNative) mut { shaderSampledImageArrayNonUniformIndexingNative = @shaderSampledImageArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderStorageBufferArrayNonUniformIndexingNative(VkBool32 @shaderStorageBufferArrayNonUniformIndexingNative) mut { shaderStorageBufferArrayNonUniformIndexingNative = @shaderStorageBufferArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderStorageImageArrayNonUniformIndexingNative(VkBool32 @shaderStorageImageArrayNonUniformIndexingNative) mut { shaderStorageImageArrayNonUniformIndexingNative = @shaderStorageImageArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderInputAttachmentArrayNonUniformIndexingNative(VkBool32 @shaderInputAttachmentArrayNonUniformIndexingNative) mut { shaderInputAttachmentArrayNonUniformIndexingNative = @shaderInputAttachmentArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setRobustBufferAccessUpdateAfterBind(VkBool32 @robustBufferAccessUpdateAfterBind) mut { robustBufferAccessUpdateAfterBind = @robustBufferAccessUpdateAfterBind;  return ref this; }
		public ref Self setQuadDivergentImplicitLod(VkBool32 @quadDivergentImplicitLod) mut { quadDivergentImplicitLod = @quadDivergentImplicitLod;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindSamplers(uint32 @maxPerStageDescriptorUpdateAfterBindSamplers) mut { maxPerStageDescriptorUpdateAfterBindSamplers = @maxPerStageDescriptorUpdateAfterBindSamplers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(uint32 @maxPerStageDescriptorUpdateAfterBindUniformBuffers) mut { maxPerStageDescriptorUpdateAfterBindUniformBuffers = @maxPerStageDescriptorUpdateAfterBindUniformBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(uint32 @maxPerStageDescriptorUpdateAfterBindStorageBuffers) mut { maxPerStageDescriptorUpdateAfterBindStorageBuffers = @maxPerStageDescriptorUpdateAfterBindStorageBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindSampledImages(uint32 @maxPerStageDescriptorUpdateAfterBindSampledImages) mut { maxPerStageDescriptorUpdateAfterBindSampledImages = @maxPerStageDescriptorUpdateAfterBindSampledImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindStorageImages(uint32 @maxPerStageDescriptorUpdateAfterBindStorageImages) mut { maxPerStageDescriptorUpdateAfterBindStorageImages = @maxPerStageDescriptorUpdateAfterBindStorageImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindInputAttachments(uint32 @maxPerStageDescriptorUpdateAfterBindInputAttachments) mut { maxPerStageDescriptorUpdateAfterBindInputAttachments = @maxPerStageDescriptorUpdateAfterBindInputAttachments;  return ref this; }
		public ref Self setMaxPerStageUpdateAfterBindResources(uint32 @maxPerStageUpdateAfterBindResources) mut { maxPerStageUpdateAfterBindResources = @maxPerStageUpdateAfterBindResources;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindSamplers(uint32 @maxDescriptorSetUpdateAfterBindSamplers) mut { maxDescriptorSetUpdateAfterBindSamplers = @maxDescriptorSetUpdateAfterBindSamplers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindUniformBuffers(uint32 @maxDescriptorSetUpdateAfterBindUniformBuffers) mut { maxDescriptorSetUpdateAfterBindUniformBuffers = @maxDescriptorSetUpdateAfterBindUniformBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(uint32 @maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) mut { maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = @maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageBuffers(uint32 @maxDescriptorSetUpdateAfterBindStorageBuffers) mut { maxDescriptorSetUpdateAfterBindStorageBuffers = @maxDescriptorSetUpdateAfterBindStorageBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(uint32 @maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) mut { maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = @maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindSampledImages(uint32 @maxDescriptorSetUpdateAfterBindSampledImages) mut { maxDescriptorSetUpdateAfterBindSampledImages = @maxDescriptorSetUpdateAfterBindSampledImages;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageImages(uint32 @maxDescriptorSetUpdateAfterBindStorageImages) mut { maxDescriptorSetUpdateAfterBindStorageImages = @maxDescriptorSetUpdateAfterBindStorageImages;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindInputAttachments(uint32 @maxDescriptorSetUpdateAfterBindInputAttachments) mut { maxDescriptorSetUpdateAfterBindInputAttachments = @maxDescriptorSetUpdateAfterBindInputAttachments;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetLayoutBindingFlagsCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO;
		public void* pNext = null;
		public uint32 bindingCount;
		public VkDescriptorBindingFlags* pBindingFlags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBindingCount(uint32 @bindingCount) mut { bindingCount = @bindingCount;  return ref this; }
		public ref Self setPBindingFlags(VkDescriptorBindingFlags* @pBindingFlags) mut { pBindingFlags = @pBindingFlags;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetVariableDescriptorCountAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO;
		public void* pNext = null;
		public uint32 descriptorSetCount;
		public uint32* pDescriptorCounts;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDescriptorSetCount(uint32 @descriptorSetCount) mut { descriptorSetCount = @descriptorSetCount;  return ref this; }
		public ref Self setPDescriptorCounts(uint32* @pDescriptorCounts) mut { pDescriptorCounts = @pDescriptorCounts;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetVariableDescriptorCountLayoutSupport
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT;
		public void* pNext = null;
		public uint32 maxVariableDescriptorCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxVariableDescriptorCount(uint32 @maxVariableDescriptorCount) mut { maxVariableDescriptorCount = @maxVariableDescriptorCount;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentDescription2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2;
		public void* pNext = null;
		public VkAttachmentDescriptionFlags flags;
		public VkFormat format;
		public VkSampleCountFlags samples;
		public VkAttachmentLoadOp loadOp;
		public VkAttachmentStoreOp storeOp;
		public VkAttachmentLoadOp stencilLoadOp;
		public VkAttachmentStoreOp stencilStoreOp;
		public VkImageLayout initialLayout;
		public VkImageLayout finalLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkAttachmentDescriptionFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setSamples(VkSampleCountFlags @samples) mut { samples = @samples;  return ref this; }
		public ref Self setLoadOp(VkAttachmentLoadOp @loadOp) mut { loadOp = @loadOp;  return ref this; }
		public ref Self setStoreOp(VkAttachmentStoreOp @storeOp) mut { storeOp = @storeOp;  return ref this; }
		public ref Self setStencilLoadOp(VkAttachmentLoadOp @stencilLoadOp) mut { stencilLoadOp = @stencilLoadOp;  return ref this; }
		public ref Self setStencilStoreOp(VkAttachmentStoreOp @stencilStoreOp) mut { stencilStoreOp = @stencilStoreOp;  return ref this; }
		public ref Self setInitialLayout(VkImageLayout @initialLayout) mut { initialLayout = @initialLayout;  return ref this; }
		public ref Self setFinalLayout(VkImageLayout @finalLayout) mut { finalLayout = @finalLayout;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentReference2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2;
		public void* pNext = null;
		public uint32 attachment;
		public VkImageLayout layout;
		public VkImageAspectFlags aspectMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAttachment(uint32 @attachment) mut { attachment = @attachment;  return ref this; }
		public ref Self setLayout(VkImageLayout @layout) mut { layout = @layout;  return ref this; }
		public ref Self setAspectMask(VkImageAspectFlags @aspectMask) mut { aspectMask = @aspectMask;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassDescription2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2;
		public void* pNext = null;
		public VkSubpassDescriptionFlags flags;
		public VkPipelineBindPoint pipelineBindPoint;
		public uint32 viewMask;
		public uint32 inputAttachmentCount;
		public VkAttachmentReference2* pInputAttachments;
		public uint32 colorAttachmentCount;
		public VkAttachmentReference2* pColorAttachments;
		public VkAttachmentReference2* pResolveAttachments;
		public VkAttachmentReference2* pDepthStencilAttachment;
		public uint32 preserveAttachmentCount;
		public uint32* pPreserveAttachments;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkSubpassDescriptionFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPipelineBindPoint(VkPipelineBindPoint @pipelineBindPoint) mut { pipelineBindPoint = @pipelineBindPoint;  return ref this; }
		public ref Self setViewMask(uint32 @viewMask) mut { viewMask = @viewMask;  return ref this; }
		public ref Self setInputAttachmentCount(uint32 @inputAttachmentCount) mut { inputAttachmentCount = @inputAttachmentCount;  return ref this; }
		public ref Self setPInputAttachments(VkAttachmentReference2* @pInputAttachments) mut { pInputAttachments = @pInputAttachments;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachments(VkAttachmentReference2* @pColorAttachments) mut { pColorAttachments = @pColorAttachments;  return ref this; }
		public ref Self setPResolveAttachments(VkAttachmentReference2* @pResolveAttachments) mut { pResolveAttachments = @pResolveAttachments;  return ref this; }
		public ref Self setPDepthStencilAttachment(VkAttachmentReference2* @pDepthStencilAttachment) mut { pDepthStencilAttachment = @pDepthStencilAttachment;  return ref this; }
		public ref Self setPreserveAttachmentCount(uint32 @preserveAttachmentCount) mut { preserveAttachmentCount = @preserveAttachmentCount;  return ref this; }
		public ref Self setPPreserveAttachments(uint32* @pPreserveAttachments) mut { pPreserveAttachments = @pPreserveAttachments;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassDependency2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2;
		public void* pNext = null;
		public uint32 srcSubpass;
		public uint32 dstSubpass;
		public VkPipelineStageFlags srcStageMask;
		public VkPipelineStageFlags dstStageMask;
		public VkAccessFlags srcAccessMask;
		public VkAccessFlags dstAccessMask;
		public VkDependencyFlags dependencyFlags;
		public int32 viewOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcSubpass(uint32 @srcSubpass) mut { srcSubpass = @srcSubpass;  return ref this; }
		public ref Self setDstSubpass(uint32 @dstSubpass) mut { dstSubpass = @dstSubpass;  return ref this; }
		public ref Self setSrcStageMask(VkPipelineStageFlags @srcStageMask) mut { srcStageMask = @srcStageMask;  return ref this; }
		public ref Self setDstStageMask(VkPipelineStageFlags @dstStageMask) mut { dstStageMask = @dstStageMask;  return ref this; }
		public ref Self setSrcAccessMask(VkAccessFlags @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstAccessMask(VkAccessFlags @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setDependencyFlags(VkDependencyFlags @dependencyFlags) mut { dependencyFlags = @dependencyFlags;  return ref this; }
		public ref Self setViewOffset(int32 @viewOffset) mut { viewOffset = @viewOffset;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassCreateInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2;
		public void* pNext = null;
		public VkRenderPassCreateFlags flags;
		public uint32 attachmentCount;
		public VkAttachmentDescription2* pAttachments;
		public uint32 subpassCount;
		public VkSubpassDescription2* pSubpasses;
		public uint32 dependencyCount;
		public VkSubpassDependency2* pDependencies;
		public uint32 correlatedViewMaskCount;
		public uint32* pCorrelatedViewMasks;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkRenderPassCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPAttachments(VkAttachmentDescription2* @pAttachments) mut { pAttachments = @pAttachments;  return ref this; }
		public ref Self setSubpassCount(uint32 @subpassCount) mut { subpassCount = @subpassCount;  return ref this; }
		public ref Self setPSubpasses(VkSubpassDescription2* @pSubpasses) mut { pSubpasses = @pSubpasses;  return ref this; }
		public ref Self setDependencyCount(uint32 @dependencyCount) mut { dependencyCount = @dependencyCount;  return ref this; }
		public ref Self setPDependencies(VkSubpassDependency2* @pDependencies) mut { pDependencies = @pDependencies;  return ref this; }
		public ref Self setCorrelatedViewMaskCount(uint32 @correlatedViewMaskCount) mut { correlatedViewMaskCount = @correlatedViewMaskCount;  return ref this; }
		public ref Self setPCorrelatedViewMasks(uint32* @pCorrelatedViewMasks) mut { pCorrelatedViewMasks = @pCorrelatedViewMasks;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO;
		public void* pNext = null;
		public VkSubpassContents contents;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setContents(VkSubpassContents @contents) mut { contents = @contents;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassEndInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_END_INFO;
		public void* pNext = null;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTimelineSemaphoreFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES;
		public void* pNext = null;
		public VkBool32 timelineSemaphore;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTimelineSemaphore(VkBool32 @timelineSemaphore) mut { timelineSemaphore = @timelineSemaphore;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTimelineSemaphoreProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES;
		public void* pNext = null;
		public uint64 maxTimelineSemaphoreValueDifference;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxTimelineSemaphoreValueDifference(uint64 @maxTimelineSemaphoreValueDifference) mut { maxTimelineSemaphoreValueDifference = @maxTimelineSemaphoreValueDifference;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreTypeCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO;
		public void* pNext = null;
		public VkSemaphoreType semaphoreType;
		public uint64 initialValue;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphoreType(VkSemaphoreType @semaphoreType) mut { semaphoreType = @semaphoreType;  return ref this; }
		public ref Self setInitialValue(uint64 @initialValue) mut { initialValue = @initialValue;  return ref this; }
	}

	[CRepr]
	public struct VkTimelineSemaphoreSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO;
		public void* pNext = null;
		public uint32 waitSemaphoreValueCount;
		public uint64* pWaitSemaphoreValues;
		public uint32 signalSemaphoreValueCount;
		public uint64* pSignalSemaphoreValues;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWaitSemaphoreValueCount(uint32 @waitSemaphoreValueCount) mut { waitSemaphoreValueCount = @waitSemaphoreValueCount;  return ref this; }
		public ref Self setPWaitSemaphoreValues(uint64* @pWaitSemaphoreValues) mut { pWaitSemaphoreValues = @pWaitSemaphoreValues;  return ref this; }
		public ref Self setSignalSemaphoreValueCount(uint32 @signalSemaphoreValueCount) mut { signalSemaphoreValueCount = @signalSemaphoreValueCount;  return ref this; }
		public ref Self setPSignalSemaphoreValues(uint64* @pSignalSemaphoreValues) mut { pSignalSemaphoreValues = @pSignalSemaphoreValues;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreWaitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO;
		public void* pNext = null;
		public VkSemaphoreWaitFlags flags;
		public uint32 semaphoreCount;
		public VkSemaphore* pSemaphores;
		public uint64* pValues;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkSemaphoreWaitFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSemaphoreCount(uint32 @semaphoreCount) mut { semaphoreCount = @semaphoreCount;  return ref this; }
		public ref Self setPSemaphores(VkSemaphore* @pSemaphores) mut { pSemaphores = @pSemaphores;  return ref this; }
		public ref Self setPValues(uint64* @pValues) mut { pValues = @pValues;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreSignalInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public uint64 value;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setValue(uint64 @value) mut { value = @value;  return ref this; }
	}

	[CRepr]
	public struct VkVertexInputBindingDivisorDescriptionEXT
	{
		public uint32 binding;
		public uint32 divisor;

		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setDivisor(uint32 @divisor) mut { divisor = @divisor;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineVertexInputDivisorStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 vertexBindingDivisorCount;
		public VkVertexInputBindingDivisorDescriptionEXT* pVertexBindingDivisors;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexBindingDivisorCount(uint32 @vertexBindingDivisorCount) mut { vertexBindingDivisorCount = @vertexBindingDivisorCount;  return ref this; }
		public ref Self setPVertexBindingDivisors(VkVertexInputBindingDivisorDescriptionEXT* @pVertexBindingDivisors) mut { pVertexBindingDivisors = @pVertexBindingDivisors;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 maxVertexAttribDivisor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxVertexAttribDivisor(uint32 @maxVertexAttribDivisor) mut { maxVertexAttribDivisor = @maxVertexAttribDivisor;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePCIBusInfoPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 pciDomain;
		public uint32 pciBus;
		public uint32 pciDevice;
		public uint32 pciFunction;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPciDomain(uint32 @pciDomain) mut { pciDomain = @pciDomain;  return ref this; }
		public ref Self setPciBus(uint32 @pciBus) mut { pciBus = @pciBus;  return ref this; }
		public ref Self setPciDevice(uint32 @pciDevice) mut { pciDevice = @pciDevice;  return ref this; }
		public ref Self setPciFunction(uint32 @pciFunction) mut { pciFunction = @pciFunction;  return ref this; }
	}

	[CRepr]
	public struct VkImportAndroidHardwareBufferInfoANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID;
		public void* pNext = null;
		public void* buffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBuffer(void* @buffer) mut { buffer = @buffer;  return ref this; }
	}

	[CRepr]
	public struct VkAndroidHardwareBufferUsageANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID;
		public void* pNext = null;
		public uint64 androidHardwareBufferUsage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAndroidHardwareBufferUsage(uint64 @androidHardwareBufferUsage) mut { androidHardwareBufferUsage = @androidHardwareBufferUsage;  return ref this; }
	}

	[CRepr]
	public struct VkAndroidHardwareBufferPropertiesANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID;
		public void* pNext = null;
		public uint64 allocationSize;
		public uint32 memoryTypeBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAllocationSize(uint64 @allocationSize) mut { allocationSize = @allocationSize;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryGetAndroidHardwareBufferInfoANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID;
		public void* pNext = null;
		public VkDeviceMemory memory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
	}

	[CRepr]
	public struct VkAndroidHardwareBufferFormatPropertiesANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID;
		public void* pNext = null;
		public VkFormat format;
		public uint64 externalFormat;
		public VkFormatFeatureFlags formatFeatures;
		public VkComponentMapping samplerYcbcrConversionComponents;
		public VkSamplerYcbcrModelConversion suggestedYcbcrModel;
		public VkSamplerYcbcrRange suggestedYcbcrRange;
		public VkChromaLocation suggestedXChromaOffset;
		public VkChromaLocation suggestedYChromaOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setExternalFormat(uint64 @externalFormat) mut { externalFormat = @externalFormat;  return ref this; }
		public ref Self setFormatFeatures(VkFormatFeatureFlags @formatFeatures) mut { formatFeatures = @formatFeatures;  return ref this; }
		public ref Self setSamplerYcbcrConversionComponents(VkComponentMapping @samplerYcbcrConversionComponents) mut { samplerYcbcrConversionComponents = @samplerYcbcrConversionComponents;  return ref this; }
		public ref Self setSuggestedYcbcrModel(VkSamplerYcbcrModelConversion @suggestedYcbcrModel) mut { suggestedYcbcrModel = @suggestedYcbcrModel;  return ref this; }
		public ref Self setSuggestedYcbcrRange(VkSamplerYcbcrRange @suggestedYcbcrRange) mut { suggestedYcbcrRange = @suggestedYcbcrRange;  return ref this; }
		public ref Self setSuggestedXChromaOffset(VkChromaLocation @suggestedXChromaOffset) mut { suggestedXChromaOffset = @suggestedXChromaOffset;  return ref this; }
		public ref Self setSuggestedYChromaOffset(VkChromaLocation @suggestedYChromaOffset) mut { suggestedYChromaOffset = @suggestedYChromaOffset;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferInheritanceConditionalRenderingInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT;
		public void* pNext = null;
		public VkBool32 conditionalRenderingEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setConditionalRenderingEnable(VkBool32 @conditionalRenderingEnable) mut { conditionalRenderingEnable = @conditionalRenderingEnable;  return ref this; }
	}

	[CRepr]
	public struct VkExternalFormatANDROID
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID;
		public void* pNext = null;
		public uint64 externalFormat;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExternalFormat(uint64 @externalFormat) mut { externalFormat = @externalFormat;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevice8BitStorageFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES;
		public void* pNext = null;
		public VkBool32 storageBuffer8BitAccess;
		public VkBool32 uniformAndStorageBuffer8BitAccess;
		public VkBool32 storagePushConstant8;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStorageBuffer8BitAccess(VkBool32 @storageBuffer8BitAccess) mut { storageBuffer8BitAccess = @storageBuffer8BitAccess;  return ref this; }
		public ref Self setUniformAndStorageBuffer8BitAccess(VkBool32 @uniformAndStorageBuffer8BitAccess) mut { uniformAndStorageBuffer8BitAccess = @uniformAndStorageBuffer8BitAccess;  return ref this; }
		public ref Self setStoragePushConstant8(VkBool32 @storagePushConstant8) mut { storagePushConstant8 = @storagePushConstant8;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceConditionalRenderingFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 conditionalRendering;
		public VkBool32 inheritedConditionalRendering;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setConditionalRendering(VkBool32 @conditionalRendering) mut { conditionalRendering = @conditionalRendering;  return ref this; }
		public ref Self setInheritedConditionalRendering(VkBool32 @inheritedConditionalRendering) mut { inheritedConditionalRendering = @inheritedConditionalRendering;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkanMemoryModelFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES;
		public void* pNext = null;
		public VkBool32 vulkanMemoryModel;
		public VkBool32 vulkanMemoryModelDeviceScope;
		public VkBool32 vulkanMemoryModelAvailabilityVisibilityChains;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVulkanMemoryModel(VkBool32 @vulkanMemoryModel) mut { vulkanMemoryModel = @vulkanMemoryModel;  return ref this; }
		public ref Self setVulkanMemoryModelDeviceScope(VkBool32 @vulkanMemoryModelDeviceScope) mut { vulkanMemoryModelDeviceScope = @vulkanMemoryModelDeviceScope;  return ref this; }
		public ref Self setVulkanMemoryModelAvailabilityVisibilityChains(VkBool32 @vulkanMemoryModelAvailabilityVisibilityChains) mut { vulkanMemoryModelAvailabilityVisibilityChains = @vulkanMemoryModelAvailabilityVisibilityChains;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderAtomicInt64Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderBufferInt64Atomics;
		public VkBool32 shaderSharedInt64Atomics;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderBufferInt64Atomics(VkBool32 @shaderBufferInt64Atomics) mut { shaderBufferInt64Atomics = @shaderBufferInt64Atomics;  return ref this; }
		public ref Self setShaderSharedInt64Atomics(VkBool32 @shaderSharedInt64Atomics) mut { shaderSharedInt64Atomics = @shaderSharedInt64Atomics;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderAtomicFloatFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 shaderBufferFloat32Atomics;
		public VkBool32 shaderBufferFloat32AtomicAdd;
		public VkBool32 shaderBufferFloat64Atomics;
		public VkBool32 shaderBufferFloat64AtomicAdd;
		public VkBool32 shaderSharedFloat32Atomics;
		public VkBool32 shaderSharedFloat32AtomicAdd;
		public VkBool32 shaderSharedFloat64Atomics;
		public VkBool32 shaderSharedFloat64AtomicAdd;
		public VkBool32 shaderImageFloat32Atomics;
		public VkBool32 shaderImageFloat32AtomicAdd;
		public VkBool32 sparseImageFloat32Atomics;
		public VkBool32 sparseImageFloat32AtomicAdd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderBufferFloat32Atomics(VkBool32 @shaderBufferFloat32Atomics) mut { shaderBufferFloat32Atomics = @shaderBufferFloat32Atomics;  return ref this; }
		public ref Self setShaderBufferFloat32AtomicAdd(VkBool32 @shaderBufferFloat32AtomicAdd) mut { shaderBufferFloat32AtomicAdd = @shaderBufferFloat32AtomicAdd;  return ref this; }
		public ref Self setShaderBufferFloat64Atomics(VkBool32 @shaderBufferFloat64Atomics) mut { shaderBufferFloat64Atomics = @shaderBufferFloat64Atomics;  return ref this; }
		public ref Self setShaderBufferFloat64AtomicAdd(VkBool32 @shaderBufferFloat64AtomicAdd) mut { shaderBufferFloat64AtomicAdd = @shaderBufferFloat64AtomicAdd;  return ref this; }
		public ref Self setShaderSharedFloat32Atomics(VkBool32 @shaderSharedFloat32Atomics) mut { shaderSharedFloat32Atomics = @shaderSharedFloat32Atomics;  return ref this; }
		public ref Self setShaderSharedFloat32AtomicAdd(VkBool32 @shaderSharedFloat32AtomicAdd) mut { shaderSharedFloat32AtomicAdd = @shaderSharedFloat32AtomicAdd;  return ref this; }
		public ref Self setShaderSharedFloat64Atomics(VkBool32 @shaderSharedFloat64Atomics) mut { shaderSharedFloat64Atomics = @shaderSharedFloat64Atomics;  return ref this; }
		public ref Self setShaderSharedFloat64AtomicAdd(VkBool32 @shaderSharedFloat64AtomicAdd) mut { shaderSharedFloat64AtomicAdd = @shaderSharedFloat64AtomicAdd;  return ref this; }
		public ref Self setShaderImageFloat32Atomics(VkBool32 @shaderImageFloat32Atomics) mut { shaderImageFloat32Atomics = @shaderImageFloat32Atomics;  return ref this; }
		public ref Self setShaderImageFloat32AtomicAdd(VkBool32 @shaderImageFloat32AtomicAdd) mut { shaderImageFloat32AtomicAdd = @shaderImageFloat32AtomicAdd;  return ref this; }
		public ref Self setSparseImageFloat32Atomics(VkBool32 @sparseImageFloat32Atomics) mut { sparseImageFloat32Atomics = @sparseImageFloat32Atomics;  return ref this; }
		public ref Self setSparseImageFloat32AtomicAdd(VkBool32 @sparseImageFloat32AtomicAdd) mut { sparseImageFloat32AtomicAdd = @sparseImageFloat32AtomicAdd;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 shaderBufferFloat16Atomics;
		public VkBool32 shaderBufferFloat16AtomicAdd;
		public VkBool32 shaderBufferFloat16AtomicMinMax;
		public VkBool32 shaderBufferFloat32AtomicMinMax;
		public VkBool32 shaderBufferFloat64AtomicMinMax;
		public VkBool32 shaderSharedFloat16Atomics;
		public VkBool32 shaderSharedFloat16AtomicAdd;
		public VkBool32 shaderSharedFloat16AtomicMinMax;
		public VkBool32 shaderSharedFloat32AtomicMinMax;
		public VkBool32 shaderSharedFloat64AtomicMinMax;
		public VkBool32 shaderImageFloat32AtomicMinMax;
		public VkBool32 sparseImageFloat32AtomicMinMax;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderBufferFloat16Atomics(VkBool32 @shaderBufferFloat16Atomics) mut { shaderBufferFloat16Atomics = @shaderBufferFloat16Atomics;  return ref this; }
		public ref Self setShaderBufferFloat16AtomicAdd(VkBool32 @shaderBufferFloat16AtomicAdd) mut { shaderBufferFloat16AtomicAdd = @shaderBufferFloat16AtomicAdd;  return ref this; }
		public ref Self setShaderBufferFloat16AtomicMinMax(VkBool32 @shaderBufferFloat16AtomicMinMax) mut { shaderBufferFloat16AtomicMinMax = @shaderBufferFloat16AtomicMinMax;  return ref this; }
		public ref Self setShaderBufferFloat32AtomicMinMax(VkBool32 @shaderBufferFloat32AtomicMinMax) mut { shaderBufferFloat32AtomicMinMax = @shaderBufferFloat32AtomicMinMax;  return ref this; }
		public ref Self setShaderBufferFloat64AtomicMinMax(VkBool32 @shaderBufferFloat64AtomicMinMax) mut { shaderBufferFloat64AtomicMinMax = @shaderBufferFloat64AtomicMinMax;  return ref this; }
		public ref Self setShaderSharedFloat16Atomics(VkBool32 @shaderSharedFloat16Atomics) mut { shaderSharedFloat16Atomics = @shaderSharedFloat16Atomics;  return ref this; }
		public ref Self setShaderSharedFloat16AtomicAdd(VkBool32 @shaderSharedFloat16AtomicAdd) mut { shaderSharedFloat16AtomicAdd = @shaderSharedFloat16AtomicAdd;  return ref this; }
		public ref Self setShaderSharedFloat16AtomicMinMax(VkBool32 @shaderSharedFloat16AtomicMinMax) mut { shaderSharedFloat16AtomicMinMax = @shaderSharedFloat16AtomicMinMax;  return ref this; }
		public ref Self setShaderSharedFloat32AtomicMinMax(VkBool32 @shaderSharedFloat32AtomicMinMax) mut { shaderSharedFloat32AtomicMinMax = @shaderSharedFloat32AtomicMinMax;  return ref this; }
		public ref Self setShaderSharedFloat64AtomicMinMax(VkBool32 @shaderSharedFloat64AtomicMinMax) mut { shaderSharedFloat64AtomicMinMax = @shaderSharedFloat64AtomicMinMax;  return ref this; }
		public ref Self setShaderImageFloat32AtomicMinMax(VkBool32 @shaderImageFloat32AtomicMinMax) mut { shaderImageFloat32AtomicMinMax = @shaderImageFloat32AtomicMinMax;  return ref this; }
		public ref Self setSparseImageFloat32AtomicMinMax(VkBool32 @sparseImageFloat32AtomicMinMax) mut { sparseImageFloat32AtomicMinMax = @sparseImageFloat32AtomicMinMax;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 vertexAttributeInstanceRateDivisor;
		public VkBool32 vertexAttributeInstanceRateZeroDivisor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexAttributeInstanceRateDivisor(VkBool32 @vertexAttributeInstanceRateDivisor) mut { vertexAttributeInstanceRateDivisor = @vertexAttributeInstanceRateDivisor;  return ref this; }
		public ref Self setVertexAttributeInstanceRateZeroDivisor(VkBool32 @vertexAttributeInstanceRateZeroDivisor) mut { vertexAttributeInstanceRateZeroDivisor = @vertexAttributeInstanceRateZeroDivisor;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyCheckpointPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV;
		public void* pNext = null;
		public VkPipelineStageFlags checkpointExecutionStageMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCheckpointExecutionStageMask(VkPipelineStageFlags @checkpointExecutionStageMask) mut { checkpointExecutionStageMask = @checkpointExecutionStageMask;  return ref this; }
	}

	[CRepr]
	public struct VkCheckpointDataNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV;
		public void* pNext = null;
		public VkPipelineStageFlags stage;
		public void* pCheckpointMarker;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStage(VkPipelineStageFlags @stage) mut { stage = @stage;  return ref this; }
		public ref Self setPCheckpointMarker(void* @pCheckpointMarker) mut { pCheckpointMarker = @pCheckpointMarker;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDepthStencilResolveProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES;
		public void* pNext = null;
		public VkResolveModeFlags supportedDepthResolveModes;
		public VkResolveModeFlags supportedStencilResolveModes;
		public VkBool32 independentResolveNone;
		public VkBool32 independentResolve;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSupportedDepthResolveModes(VkResolveModeFlags @supportedDepthResolveModes) mut { supportedDepthResolveModes = @supportedDepthResolveModes;  return ref this; }
		public ref Self setSupportedStencilResolveModes(VkResolveModeFlags @supportedStencilResolveModes) mut { supportedStencilResolveModes = @supportedStencilResolveModes;  return ref this; }
		public ref Self setIndependentResolveNone(VkBool32 @independentResolveNone) mut { independentResolveNone = @independentResolveNone;  return ref this; }
		public ref Self setIndependentResolve(VkBool32 @independentResolve) mut { independentResolve = @independentResolve;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassDescriptionDepthStencilResolve
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE;
		public void* pNext = null;
		public VkResolveModeFlags depthResolveMode;
		public VkResolveModeFlags stencilResolveMode;
		public VkAttachmentReference2* pDepthStencilResolveAttachment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDepthResolveMode(VkResolveModeFlags @depthResolveMode) mut { depthResolveMode = @depthResolveMode;  return ref this; }
		public ref Self setStencilResolveMode(VkResolveModeFlags @stencilResolveMode) mut { stencilResolveMode = @stencilResolveMode;  return ref this; }
		public ref Self setPDepthStencilResolveAttachment(VkAttachmentReference2* @pDepthStencilResolveAttachment) mut { pDepthStencilResolveAttachment = @pDepthStencilResolveAttachment;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewASTCDecodeModeEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT;
		public void* pNext = null;
		public VkFormat decodeMode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDecodeMode(VkFormat @decodeMode) mut { decodeMode = @decodeMode;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceASTCDecodeFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 decodeModeSharedExponent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDecodeModeSharedExponent(VkBool32 @decodeModeSharedExponent) mut { decodeModeSharedExponent = @decodeModeSharedExponent;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTransformFeedbackFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 transformFeedback;
		public VkBool32 geometryStreams;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTransformFeedback(VkBool32 @transformFeedback) mut { transformFeedback = @transformFeedback;  return ref this; }
		public ref Self setGeometryStreams(VkBool32 @geometryStreams) mut { geometryStreams = @geometryStreams;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTransformFeedbackPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 maxTransformFeedbackStreams;
		public uint32 maxTransformFeedbackBuffers;
		public uint64 maxTransformFeedbackBufferSize;
		public uint32 maxTransformFeedbackStreamDataSize;
		public uint32 maxTransformFeedbackBufferDataSize;
		public uint32 maxTransformFeedbackBufferDataStride;
		public VkBool32 transformFeedbackQueries;
		public VkBool32 transformFeedbackStreamsLinesTriangles;
		public VkBool32 transformFeedbackRasterizationStreamSelect;
		public VkBool32 transformFeedbackDraw;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxTransformFeedbackStreams(uint32 @maxTransformFeedbackStreams) mut { maxTransformFeedbackStreams = @maxTransformFeedbackStreams;  return ref this; }
		public ref Self setMaxTransformFeedbackBuffers(uint32 @maxTransformFeedbackBuffers) mut { maxTransformFeedbackBuffers = @maxTransformFeedbackBuffers;  return ref this; }
		public ref Self setMaxTransformFeedbackBufferSize(uint64 @maxTransformFeedbackBufferSize) mut { maxTransformFeedbackBufferSize = @maxTransformFeedbackBufferSize;  return ref this; }
		public ref Self setMaxTransformFeedbackStreamDataSize(uint32 @maxTransformFeedbackStreamDataSize) mut { maxTransformFeedbackStreamDataSize = @maxTransformFeedbackStreamDataSize;  return ref this; }
		public ref Self setMaxTransformFeedbackBufferDataSize(uint32 @maxTransformFeedbackBufferDataSize) mut { maxTransformFeedbackBufferDataSize = @maxTransformFeedbackBufferDataSize;  return ref this; }
		public ref Self setMaxTransformFeedbackBufferDataStride(uint32 @maxTransformFeedbackBufferDataStride) mut { maxTransformFeedbackBufferDataStride = @maxTransformFeedbackBufferDataStride;  return ref this; }
		public ref Self setTransformFeedbackQueries(VkBool32 @transformFeedbackQueries) mut { transformFeedbackQueries = @transformFeedbackQueries;  return ref this; }
		public ref Self setTransformFeedbackStreamsLinesTriangles(VkBool32 @transformFeedbackStreamsLinesTriangles) mut { transformFeedbackStreamsLinesTriangles = @transformFeedbackStreamsLinesTriangles;  return ref this; }
		public ref Self setTransformFeedbackRasterizationStreamSelect(VkBool32 @transformFeedbackRasterizationStreamSelect) mut { transformFeedbackRasterizationStreamSelect = @transformFeedbackRasterizationStreamSelect;  return ref this; }
		public ref Self setTransformFeedbackDraw(VkBool32 @transformFeedbackDraw) mut { transformFeedbackDraw = @transformFeedbackDraw;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationStateStreamCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public uint32 rasterizationStream;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRasterizationStream(uint32 @rasterizationStream) mut { rasterizationStream = @rasterizationStream;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 representativeFragmentTest;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRepresentativeFragmentTest(VkBool32 @representativeFragmentTest) mut { representativeFragmentTest = @representativeFragmentTest;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRepresentativeFragmentTestStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkBool32 representativeFragmentTestEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRepresentativeFragmentTestEnable(VkBool32 @representativeFragmentTestEnable) mut { representativeFragmentTestEnable = @representativeFragmentTestEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExclusiveScissorFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 exclusiveScissor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExclusiveScissor(VkBool32 @exclusiveScissor) mut { exclusiveScissor = @exclusiveScissor;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportExclusiveScissorStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 exclusiveScissorCount;
		public VkRect2D* pExclusiveScissors;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExclusiveScissorCount(uint32 @exclusiveScissorCount) mut { exclusiveScissorCount = @exclusiveScissorCount;  return ref this; }
		public ref Self setPExclusiveScissors(VkRect2D* @pExclusiveScissors) mut { pExclusiveScissors = @pExclusiveScissors;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCornerSampledImageFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 cornerSampledImage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCornerSampledImage(VkBool32 @cornerSampledImage) mut { cornerSampledImage = @cornerSampledImage;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 computeDerivativeGroupQuads;
		public VkBool32 computeDerivativeGroupLinear;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setComputeDerivativeGroupQuads(VkBool32 @computeDerivativeGroupQuads) mut { computeDerivativeGroupQuads = @computeDerivativeGroupQuads;  return ref this; }
		public ref Self setComputeDerivativeGroupLinear(VkBool32 @computeDerivativeGroupLinear) mut { computeDerivativeGroupLinear = @computeDerivativeGroupLinear;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderImageFootprintFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 imageFootprint;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageFootprint(VkBool32 @imageFootprint) mut { imageFootprint = @imageFootprint;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 dedicatedAllocationImageAliasing;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDedicatedAllocationImageAliasing(VkBool32 @dedicatedAllocationImageAliasing) mut { dedicatedAllocationImageAliasing = @dedicatedAllocationImageAliasing;  return ref this; }
	}

	[CRepr]
	public struct VkShadingRatePaletteNV
	{
		public uint32 shadingRatePaletteEntryCount;
		public VkShadingRatePaletteEntryNV* pShadingRatePaletteEntries;

		public ref Self setShadingRatePaletteEntryCount(uint32 @shadingRatePaletteEntryCount) mut { shadingRatePaletteEntryCount = @shadingRatePaletteEntryCount;  return ref this; }
		public ref Self setPShadingRatePaletteEntries(VkShadingRatePaletteEntryNV* @pShadingRatePaletteEntries) mut { pShadingRatePaletteEntries = @pShadingRatePaletteEntries;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportShadingRateImageStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkBool32 shadingRateImageEnable;
		public uint32 viewportCount;
		public VkShadingRatePaletteNV* pShadingRatePalettes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShadingRateImageEnable(VkBool32 @shadingRateImageEnable) mut { shadingRateImageEnable = @shadingRateImageEnable;  return ref this; }
		public ref Self setViewportCount(uint32 @viewportCount) mut { viewportCount = @viewportCount;  return ref this; }
		public ref Self setPShadingRatePalettes(VkShadingRatePaletteNV* @pShadingRatePalettes) mut { pShadingRatePalettes = @pShadingRatePalettes;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShadingRateImageFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 shadingRateImage;
		public VkBool32 shadingRateCoarseSampleOrder;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShadingRateImage(VkBool32 @shadingRateImage) mut { shadingRateImage = @shadingRateImage;  return ref this; }
		public ref Self setShadingRateCoarseSampleOrder(VkBool32 @shadingRateCoarseSampleOrder) mut { shadingRateCoarseSampleOrder = @shadingRateCoarseSampleOrder;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShadingRateImagePropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV;
		public void* pNext = null;
		public VkExtent2D shadingRateTexelSize;
		public uint32 shadingRatePaletteSize;
		public uint32 shadingRateMaxCoarseSamples;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShadingRateTexelSize(VkExtent2D @shadingRateTexelSize) mut { shadingRateTexelSize = @shadingRateTexelSize;  return ref this; }
		public ref Self setShadingRatePaletteSize(uint32 @shadingRatePaletteSize) mut { shadingRatePaletteSize = @shadingRatePaletteSize;  return ref this; }
		public ref Self setShadingRateMaxCoarseSamples(uint32 @shadingRateMaxCoarseSamples) mut { shadingRateMaxCoarseSamples = @shadingRateMaxCoarseSamples;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceInvocationMaskFeaturesHUAWEI
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI;
		public void* pNext = null;
		public VkBool32 invocationMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setInvocationMask(VkBool32 @invocationMask) mut { invocationMask = @invocationMask;  return ref this; }
	}

	[CRepr]
	public struct VkCoarseSampleLocationNV
	{
		public uint32 pixelX;
		public uint32 pixelY;
		public uint32 sample;

		public ref Self setPixelX(uint32 @pixelX) mut { pixelX = @pixelX;  return ref this; }
		public ref Self setPixelY(uint32 @pixelY) mut { pixelY = @pixelY;  return ref this; }
		public ref Self setSample(uint32 @sample) mut { sample = @sample;  return ref this; }
	}

	[CRepr]
	public struct VkCoarseSampleOrderCustomNV
	{
		public VkShadingRatePaletteEntryNV shadingRate;
		public uint32 sampleCount;
		public uint32 sampleLocationCount;
		public VkCoarseSampleLocationNV* pSampleLocations;

		public ref Self setShadingRate(VkShadingRatePaletteEntryNV @shadingRate) mut { shadingRate = @shadingRate;  return ref this; }
		public ref Self setSampleCount(uint32 @sampleCount) mut { sampleCount = @sampleCount;  return ref this; }
		public ref Self setSampleLocationCount(uint32 @sampleLocationCount) mut { sampleLocationCount = @sampleLocationCount;  return ref this; }
		public ref Self setPSampleLocations(VkCoarseSampleLocationNV* @pSampleLocations) mut { pSampleLocations = @pSampleLocations;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkCoarseSampleOrderTypeNV sampleOrderType;
		public uint32 customSampleOrderCount;
		public VkCoarseSampleOrderCustomNV* pCustomSampleOrders;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSampleOrderType(VkCoarseSampleOrderTypeNV @sampleOrderType) mut { sampleOrderType = @sampleOrderType;  return ref this; }
		public ref Self setCustomSampleOrderCount(uint32 @customSampleOrderCount) mut { customSampleOrderCount = @customSampleOrderCount;  return ref this; }
		public ref Self setPCustomSampleOrders(VkCoarseSampleOrderCustomNV* @pCustomSampleOrders) mut { pCustomSampleOrders = @pCustomSampleOrders;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMeshShaderFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 taskShader;
		public VkBool32 meshShader;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTaskShader(VkBool32 @taskShader) mut { taskShader = @taskShader;  return ref this; }
		public ref Self setMeshShader(VkBool32 @meshShader) mut { meshShader = @meshShader;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMeshShaderPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV;
		public void* pNext = null;
		public uint32 maxDrawMeshTasksCount;
		public uint32 maxTaskWorkGroupInvocations;
		public uint32[3] maxTaskWorkGroupSize;
		public uint32 maxTaskTotalMemorySize;
		public uint32 maxTaskOutputCount;
		public uint32 maxMeshWorkGroupInvocations;
		public uint32[3] maxMeshWorkGroupSize;
		public uint32 maxMeshTotalMemorySize;
		public uint32 maxMeshOutputVertices;
		public uint32 maxMeshOutputPrimitives;
		public uint32 maxMeshMultiviewViewCount;
		public uint32 meshOutputPerVertexGranularity;
		public uint32 meshOutputPerPrimitiveGranularity;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxDrawMeshTasksCount(uint32 @maxDrawMeshTasksCount) mut { maxDrawMeshTasksCount = @maxDrawMeshTasksCount;  return ref this; }
		public ref Self setMaxTaskWorkGroupInvocations(uint32 @maxTaskWorkGroupInvocations) mut { maxTaskWorkGroupInvocations = @maxTaskWorkGroupInvocations;  return ref this; }
		public ref Self setMaxTaskWorkGroupSize(uint32[3] @maxTaskWorkGroupSize) mut { maxTaskWorkGroupSize = @maxTaskWorkGroupSize;  return ref this; }
		public ref Self setMaxTaskTotalMemorySize(uint32 @maxTaskTotalMemorySize) mut { maxTaskTotalMemorySize = @maxTaskTotalMemorySize;  return ref this; }
		public ref Self setMaxTaskOutputCount(uint32 @maxTaskOutputCount) mut { maxTaskOutputCount = @maxTaskOutputCount;  return ref this; }
		public ref Self setMaxMeshWorkGroupInvocations(uint32 @maxMeshWorkGroupInvocations) mut { maxMeshWorkGroupInvocations = @maxMeshWorkGroupInvocations;  return ref this; }
		public ref Self setMaxMeshWorkGroupSize(uint32[3] @maxMeshWorkGroupSize) mut { maxMeshWorkGroupSize = @maxMeshWorkGroupSize;  return ref this; }
		public ref Self setMaxMeshTotalMemorySize(uint32 @maxMeshTotalMemorySize) mut { maxMeshTotalMemorySize = @maxMeshTotalMemorySize;  return ref this; }
		public ref Self setMaxMeshOutputVertices(uint32 @maxMeshOutputVertices) mut { maxMeshOutputVertices = @maxMeshOutputVertices;  return ref this; }
		public ref Self setMaxMeshOutputPrimitives(uint32 @maxMeshOutputPrimitives) mut { maxMeshOutputPrimitives = @maxMeshOutputPrimitives;  return ref this; }
		public ref Self setMaxMeshMultiviewViewCount(uint32 @maxMeshMultiviewViewCount) mut { maxMeshMultiviewViewCount = @maxMeshMultiviewViewCount;  return ref this; }
		public ref Self setMeshOutputPerVertexGranularity(uint32 @meshOutputPerVertexGranularity) mut { meshOutputPerVertexGranularity = @meshOutputPerVertexGranularity;  return ref this; }
		public ref Self setMeshOutputPerPrimitiveGranularity(uint32 @meshOutputPerPrimitiveGranularity) mut { meshOutputPerPrimitiveGranularity = @meshOutputPerPrimitiveGranularity;  return ref this; }
	}

	[CRepr]
	public struct VkDrawMeshTasksIndirectCommandNV
	{
		public uint32 taskCount;
		public uint32 firstTask;

		public ref Self setTaskCount(uint32 @taskCount) mut { taskCount = @taskCount;  return ref this; }
		public ref Self setFirstTask(uint32 @firstTask) mut { firstTask = @firstTask;  return ref this; }
	}

	[CRepr]
	public struct VkRayTracingShaderGroupCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV;
		public void* pNext = null;
		public VkRayTracingShaderGroupTypeKHR type;
		public uint32 generalShader;
		public uint32 closestHitShader;
		public uint32 anyHitShader;
		public uint32 intersectionShader;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkRayTracingShaderGroupTypeKHR @type) mut { type = @type;  return ref this; }
		public ref Self setGeneralShader(uint32 @generalShader) mut { generalShader = @generalShader;  return ref this; }
		public ref Self setClosestHitShader(uint32 @closestHitShader) mut { closestHitShader = @closestHitShader;  return ref this; }
		public ref Self setAnyHitShader(uint32 @anyHitShader) mut { anyHitShader = @anyHitShader;  return ref this; }
		public ref Self setIntersectionShader(uint32 @intersectionShader) mut { intersectionShader = @intersectionShader;  return ref this; }
	}

	[CRepr]
	public struct VkRayTracingShaderGroupCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkRayTracingShaderGroupTypeKHR type;
		public uint32 generalShader;
		public uint32 closestHitShader;
		public uint32 anyHitShader;
		public uint32 intersectionShader;
		public void* pShaderGroupCaptureReplayHandle;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkRayTracingShaderGroupTypeKHR @type) mut { type = @type;  return ref this; }
		public ref Self setGeneralShader(uint32 @generalShader) mut { generalShader = @generalShader;  return ref this; }
		public ref Self setClosestHitShader(uint32 @closestHitShader) mut { closestHitShader = @closestHitShader;  return ref this; }
		public ref Self setAnyHitShader(uint32 @anyHitShader) mut { anyHitShader = @anyHitShader;  return ref this; }
		public ref Self setIntersectionShader(uint32 @intersectionShader) mut { intersectionShader = @intersectionShader;  return ref this; }
		public ref Self setPShaderGroupCaptureReplayHandle(void* @pShaderGroupCaptureReplayHandle) mut { pShaderGroupCaptureReplayHandle = @pShaderGroupCaptureReplayHandle;  return ref this; }
	}

	[CRepr]
	public struct VkRayTracingPipelineCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkPipelineCreateFlags flags;
		public uint32 stageCount;
		public VkPipelineShaderStageCreateInfo* pStages;
		public uint32 groupCount;
		public VkRayTracingShaderGroupCreateInfoNV* pGroups;
		public uint32 maxRecursionDepth;
		public VkPipelineLayout layout;
		public VkPipeline basePipelineHandle;
		public int32 basePipelineIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStageCount(uint32 @stageCount) mut { stageCount = @stageCount;  return ref this; }
		public ref Self setPStages(VkPipelineShaderStageCreateInfo* @pStages) mut { pStages = @pStages;  return ref this; }
		public ref Self setGroupCount(uint32 @groupCount) mut { groupCount = @groupCount;  return ref this; }
		public ref Self setPGroups(VkRayTracingShaderGroupCreateInfoNV* @pGroups) mut { pGroups = @pGroups;  return ref this; }
		public ref Self setMaxRecursionDepth(uint32 @maxRecursionDepth) mut { maxRecursionDepth = @maxRecursionDepth;  return ref this; }
		public ref Self setLayout(VkPipelineLayout @layout) mut { layout = @layout;  return ref this; }
		public ref Self setBasePipelineHandle(VkPipeline @basePipelineHandle) mut { basePipelineHandle = @basePipelineHandle;  return ref this; }
		public ref Self setBasePipelineIndex(int32 @basePipelineIndex) mut { basePipelineIndex = @basePipelineIndex;  return ref this; }
	}

	[CRepr]
	public struct VkRayTracingPipelineCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkPipelineCreateFlags flags;
		public uint32 stageCount;
		public VkPipelineShaderStageCreateInfo* pStages;
		public uint32 groupCount;
		public VkRayTracingShaderGroupCreateInfoKHR* pGroups;
		public uint32 maxPipelineRayRecursionDepth;
		public VkPipelineLibraryCreateInfoKHR* pLibraryInfo;
		public VkRayTracingPipelineInterfaceCreateInfoKHR* pLibraryInterface;
		public VkPipelineDynamicStateCreateInfo* pDynamicState;
		public VkPipelineLayout layout;
		public VkPipeline basePipelineHandle;
		public int32 basePipelineIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPipelineCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setStageCount(uint32 @stageCount) mut { stageCount = @stageCount;  return ref this; }
		public ref Self setPStages(VkPipelineShaderStageCreateInfo* @pStages) mut { pStages = @pStages;  return ref this; }
		public ref Self setGroupCount(uint32 @groupCount) mut { groupCount = @groupCount;  return ref this; }
		public ref Self setPGroups(VkRayTracingShaderGroupCreateInfoKHR* @pGroups) mut { pGroups = @pGroups;  return ref this; }
		public ref Self setMaxPipelineRayRecursionDepth(uint32 @maxPipelineRayRecursionDepth) mut { maxPipelineRayRecursionDepth = @maxPipelineRayRecursionDepth;  return ref this; }
		public ref Self setPLibraryInfo(VkPipelineLibraryCreateInfoKHR* @pLibraryInfo) mut { pLibraryInfo = @pLibraryInfo;  return ref this; }
		public ref Self setPLibraryInterface(VkRayTracingPipelineInterfaceCreateInfoKHR* @pLibraryInterface) mut { pLibraryInterface = @pLibraryInterface;  return ref this; }
		public ref Self setPDynamicState(VkPipelineDynamicStateCreateInfo* @pDynamicState) mut { pDynamicState = @pDynamicState;  return ref this; }
		public ref Self setLayout(VkPipelineLayout @layout) mut { layout = @layout;  return ref this; }
		public ref Self setBasePipelineHandle(VkPipeline @basePipelineHandle) mut { basePipelineHandle = @basePipelineHandle;  return ref this; }
		public ref Self setBasePipelineIndex(int32 @basePipelineIndex) mut { basePipelineIndex = @basePipelineIndex;  return ref this; }
	}

	[CRepr]
	public struct VkGeometryTrianglesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV;
		public void* pNext = null;
		public VkBuffer vertexData;
		public uint64 vertexOffset;
		public uint32 vertexCount;
		public uint64 vertexStride;
		public VkFormat vertexFormat;
		public VkBuffer indexData;
		public uint64 indexOffset;
		public uint32 indexCount;
		public VkIndexType indexType;
		public VkBuffer transformData;
		public uint64 transformOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexData(VkBuffer @vertexData) mut { vertexData = @vertexData;  return ref this; }
		public ref Self setVertexOffset(uint64 @vertexOffset) mut { vertexOffset = @vertexOffset;  return ref this; }
		public ref Self setVertexCount(uint32 @vertexCount) mut { vertexCount = @vertexCount;  return ref this; }
		public ref Self setVertexStride(uint64 @vertexStride) mut { vertexStride = @vertexStride;  return ref this; }
		public ref Self setVertexFormat(VkFormat @vertexFormat) mut { vertexFormat = @vertexFormat;  return ref this; }
		public ref Self setIndexData(VkBuffer @indexData) mut { indexData = @indexData;  return ref this; }
		public ref Self setIndexOffset(uint64 @indexOffset) mut { indexOffset = @indexOffset;  return ref this; }
		public ref Self setIndexCount(uint32 @indexCount) mut { indexCount = @indexCount;  return ref this; }
		public ref Self setIndexType(VkIndexType @indexType) mut { indexType = @indexType;  return ref this; }
		public ref Self setTransformData(VkBuffer @transformData) mut { transformData = @transformData;  return ref this; }
		public ref Self setTransformOffset(uint64 @transformOffset) mut { transformOffset = @transformOffset;  return ref this; }
	}

	[CRepr]
	public struct VkGeometryAABBNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV;
		public void* pNext = null;
		public VkBuffer aabbData;
		public uint32 numAABBs;
		public uint32 stride;
		public uint64 offset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAabbData(VkBuffer @aabbData) mut { aabbData = @aabbData;  return ref this; }
		public ref Self setNumAABBs(uint32 @numAABBs) mut { numAABBs = @numAABBs;  return ref this; }
		public ref Self setStride(uint32 @stride) mut { stride = @stride;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
	}

	[CRepr]
	public struct VkGeometryDataNV
	{
		public VkGeometryTrianglesNV triangles;
		public VkGeometryAABBNV aabbs;

		public ref Self setTriangles(VkGeometryTrianglesNV @triangles) mut { triangles = @triangles;  return ref this; }
		public ref Self setAabbs(VkGeometryAABBNV @aabbs) mut { aabbs = @aabbs;  return ref this; }
	}

	[CRepr]
	public struct VkGeometryNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GEOMETRY_NV;
		public void* pNext = null;
		public VkGeometryTypeKHR geometryType;
		public VkGeometryDataNV geometry;
		public VkGeometryFlagsKHR flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGeometryType(VkGeometryTypeKHR @geometryType) mut { geometryType = @geometryType;  return ref this; }
		public ref Self setGeometry(VkGeometryDataNV @geometry) mut { geometry = @geometry;  return ref this; }
		public ref Self setFlags(VkGeometryFlagsKHR @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV;
		public void* pNext = null;
		public VkAccelerationStructureTypeKHR type;
		public VkBuildAccelerationStructureFlagsKHR flags;
		public uint32 instanceCount;
		public uint32 geometryCount;
		public VkGeometryNV* pGeometries;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkAccelerationStructureTypeKHR @type) mut { type = @type;  return ref this; }
		public ref Self setFlags(VkBuildAccelerationStructureFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setInstanceCount(uint32 @instanceCount) mut { instanceCount = @instanceCount;  return ref this; }
		public ref Self setGeometryCount(uint32 @geometryCount) mut { geometryCount = @geometryCount;  return ref this; }
		public ref Self setPGeometries(VkGeometryNV* @pGeometries) mut { pGeometries = @pGeometries;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint64 compactedSize;
		public VkAccelerationStructureInfoNV info;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCompactedSize(uint64 @compactedSize) mut { compactedSize = @compactedSize;  return ref this; }
		public ref Self setInfo(VkAccelerationStructureInfoNV @info) mut { info = @info;  return ref this; }
	}

	[CRepr]
	public struct VkBindAccelerationStructureMemoryInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV;
		public void* pNext = null;
		public VkAccelerationStructureNV accelerationStructure;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;
		public uint32 deviceIndexCount;
		public uint32* pDeviceIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructure(VkAccelerationStructureNV @accelerationStructure) mut { accelerationStructure = @accelerationStructure;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
		public ref Self setDeviceIndexCount(uint32 @deviceIndexCount) mut { deviceIndexCount = @deviceIndexCount;  return ref this; }
		public ref Self setPDeviceIndices(uint32* @pDeviceIndices) mut { pDeviceIndices = @pDeviceIndices;  return ref this; }
	}

	[CRepr]
	public struct VkWriteDescriptorSetAccelerationStructureKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR;
		public void* pNext = null;
		public uint32 accelerationStructureCount;
		public VkAccelerationStructureKHR* pAccelerationStructures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructureCount(uint32 @accelerationStructureCount) mut { accelerationStructureCount = @accelerationStructureCount;  return ref this; }
		public ref Self setPAccelerationStructures(VkAccelerationStructureKHR* @pAccelerationStructures) mut { pAccelerationStructures = @pAccelerationStructures;  return ref this; }
	}

	[CRepr]
	public struct VkWriteDescriptorSetAccelerationStructureNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV;
		public void* pNext = null;
		public uint32 accelerationStructureCount;
		public VkAccelerationStructureNV* pAccelerationStructures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructureCount(uint32 @accelerationStructureCount) mut { accelerationStructureCount = @accelerationStructureCount;  return ref this; }
		public ref Self setPAccelerationStructures(VkAccelerationStructureNV* @pAccelerationStructures) mut { pAccelerationStructures = @pAccelerationStructures;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureMemoryRequirementsInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV;
		public void* pNext = null;
		public VkAccelerationStructureMemoryRequirementsTypeNV type;
		public VkAccelerationStructureNV accelerationStructure;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkAccelerationStructureMemoryRequirementsTypeNV @type) mut { type = @type;  return ref this; }
		public ref Self setAccelerationStructure(VkAccelerationStructureNV @accelerationStructure) mut { accelerationStructure = @accelerationStructure;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceAccelerationStructureFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 accelerationStructure;
		public VkBool32 accelerationStructureCaptureReplay;
		public VkBool32 accelerationStructureIndirectBuild;
		public VkBool32 accelerationStructureHostCommands;
		public VkBool32 descriptorBindingAccelerationStructureUpdateAfterBind;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructure(VkBool32 @accelerationStructure) mut { accelerationStructure = @accelerationStructure;  return ref this; }
		public ref Self setAccelerationStructureCaptureReplay(VkBool32 @accelerationStructureCaptureReplay) mut { accelerationStructureCaptureReplay = @accelerationStructureCaptureReplay;  return ref this; }
		public ref Self setAccelerationStructureIndirectBuild(VkBool32 @accelerationStructureIndirectBuild) mut { accelerationStructureIndirectBuild = @accelerationStructureIndirectBuild;  return ref this; }
		public ref Self setAccelerationStructureHostCommands(VkBool32 @accelerationStructureHostCommands) mut { accelerationStructureHostCommands = @accelerationStructureHostCommands;  return ref this; }
		public ref Self setDescriptorBindingAccelerationStructureUpdateAfterBind(VkBool32 @descriptorBindingAccelerationStructureUpdateAfterBind) mut { descriptorBindingAccelerationStructureUpdateAfterBind = @descriptorBindingAccelerationStructureUpdateAfterBind;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 rayTracingPipeline;
		public VkBool32 rayTracingPipelineShaderGroupHandleCaptureReplay;
		public VkBool32 rayTracingPipelineShaderGroupHandleCaptureReplayMixed;
		public VkBool32 rayTracingPipelineTraceRaysIndirect;
		public VkBool32 rayTraversalPrimitiveCulling;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRayTracingPipeline(VkBool32 @rayTracingPipeline) mut { rayTracingPipeline = @rayTracingPipeline;  return ref this; }
		public ref Self setRayTracingPipelineShaderGroupHandleCaptureReplay(VkBool32 @rayTracingPipelineShaderGroupHandleCaptureReplay) mut { rayTracingPipelineShaderGroupHandleCaptureReplay = @rayTracingPipelineShaderGroupHandleCaptureReplay;  return ref this; }
		public ref Self setRayTracingPipelineShaderGroupHandleCaptureReplayMixed(VkBool32 @rayTracingPipelineShaderGroupHandleCaptureReplayMixed) mut { rayTracingPipelineShaderGroupHandleCaptureReplayMixed = @rayTracingPipelineShaderGroupHandleCaptureReplayMixed;  return ref this; }
		public ref Self setRayTracingPipelineTraceRaysIndirect(VkBool32 @rayTracingPipelineTraceRaysIndirect) mut { rayTracingPipelineTraceRaysIndirect = @rayTracingPipelineTraceRaysIndirect;  return ref this; }
		public ref Self setRayTraversalPrimitiveCulling(VkBool32 @rayTraversalPrimitiveCulling) mut { rayTraversalPrimitiveCulling = @rayTraversalPrimitiveCulling;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayQueryFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 rayQuery;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRayQuery(VkBool32 @rayQuery) mut { rayQuery = @rayQuery;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceAccelerationStructurePropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR;
		public void* pNext = null;
		public uint64 maxGeometryCount;
		public uint64 maxInstanceCount;
		public uint64 maxPrimitiveCount;
		public uint32 maxPerStageDescriptorAccelerationStructures;
		public uint32 maxPerStageDescriptorUpdateAfterBindAccelerationStructures;
		public uint32 maxDescriptorSetAccelerationStructures;
		public uint32 maxDescriptorSetUpdateAfterBindAccelerationStructures;
		public uint32 minAccelerationStructureScratchOffsetAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxGeometryCount(uint64 @maxGeometryCount) mut { maxGeometryCount = @maxGeometryCount;  return ref this; }
		public ref Self setMaxInstanceCount(uint64 @maxInstanceCount) mut { maxInstanceCount = @maxInstanceCount;  return ref this; }
		public ref Self setMaxPrimitiveCount(uint64 @maxPrimitiveCount) mut { maxPrimitiveCount = @maxPrimitiveCount;  return ref this; }
		public ref Self setMaxPerStageDescriptorAccelerationStructures(uint32 @maxPerStageDescriptorAccelerationStructures) mut { maxPerStageDescriptorAccelerationStructures = @maxPerStageDescriptorAccelerationStructures;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindAccelerationStructures(uint32 @maxPerStageDescriptorUpdateAfterBindAccelerationStructures) mut { maxPerStageDescriptorUpdateAfterBindAccelerationStructures = @maxPerStageDescriptorUpdateAfterBindAccelerationStructures;  return ref this; }
		public ref Self setMaxDescriptorSetAccelerationStructures(uint32 @maxDescriptorSetAccelerationStructures) mut { maxDescriptorSetAccelerationStructures = @maxDescriptorSetAccelerationStructures;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindAccelerationStructures(uint32 @maxDescriptorSetUpdateAfterBindAccelerationStructures) mut { maxDescriptorSetUpdateAfterBindAccelerationStructures = @maxDescriptorSetUpdateAfterBindAccelerationStructures;  return ref this; }
		public ref Self setMinAccelerationStructureScratchOffsetAlignment(uint32 @minAccelerationStructureScratchOffsetAlignment) mut { minAccelerationStructureScratchOffsetAlignment = @minAccelerationStructureScratchOffsetAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 shaderGroupHandleSize;
		public uint32 maxRayRecursionDepth;
		public uint32 maxShaderGroupStride;
		public uint32 shaderGroupBaseAlignment;
		public uint32 shaderGroupHandleCaptureReplaySize;
		public uint32 maxRayDispatchInvocationCount;
		public uint32 shaderGroupHandleAlignment;
		public uint32 maxRayHitAttributeSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderGroupHandleSize(uint32 @shaderGroupHandleSize) mut { shaderGroupHandleSize = @shaderGroupHandleSize;  return ref this; }
		public ref Self setMaxRayRecursionDepth(uint32 @maxRayRecursionDepth) mut { maxRayRecursionDepth = @maxRayRecursionDepth;  return ref this; }
		public ref Self setMaxShaderGroupStride(uint32 @maxShaderGroupStride) mut { maxShaderGroupStride = @maxShaderGroupStride;  return ref this; }
		public ref Self setShaderGroupBaseAlignment(uint32 @shaderGroupBaseAlignment) mut { shaderGroupBaseAlignment = @shaderGroupBaseAlignment;  return ref this; }
		public ref Self setShaderGroupHandleCaptureReplaySize(uint32 @shaderGroupHandleCaptureReplaySize) mut { shaderGroupHandleCaptureReplaySize = @shaderGroupHandleCaptureReplaySize;  return ref this; }
		public ref Self setMaxRayDispatchInvocationCount(uint32 @maxRayDispatchInvocationCount) mut { maxRayDispatchInvocationCount = @maxRayDispatchInvocationCount;  return ref this; }
		public ref Self setShaderGroupHandleAlignment(uint32 @shaderGroupHandleAlignment) mut { shaderGroupHandleAlignment = @shaderGroupHandleAlignment;  return ref this; }
		public ref Self setMaxRayHitAttributeSize(uint32 @maxRayHitAttributeSize) mut { maxRayHitAttributeSize = @maxRayHitAttributeSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayTracingPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV;
		public void* pNext = null;
		public uint32 shaderGroupHandleSize;
		public uint32 maxRecursionDepth;
		public uint32 maxShaderGroupStride;
		public uint32 shaderGroupBaseAlignment;
		public uint64 maxGeometryCount;
		public uint64 maxInstanceCount;
		public uint64 maxTriangleCount;
		public uint32 maxDescriptorSetAccelerationStructures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderGroupHandleSize(uint32 @shaderGroupHandleSize) mut { shaderGroupHandleSize = @shaderGroupHandleSize;  return ref this; }
		public ref Self setMaxRecursionDepth(uint32 @maxRecursionDepth) mut { maxRecursionDepth = @maxRecursionDepth;  return ref this; }
		public ref Self setMaxShaderGroupStride(uint32 @maxShaderGroupStride) mut { maxShaderGroupStride = @maxShaderGroupStride;  return ref this; }
		public ref Self setShaderGroupBaseAlignment(uint32 @shaderGroupBaseAlignment) mut { shaderGroupBaseAlignment = @shaderGroupBaseAlignment;  return ref this; }
		public ref Self setMaxGeometryCount(uint64 @maxGeometryCount) mut { maxGeometryCount = @maxGeometryCount;  return ref this; }
		public ref Self setMaxInstanceCount(uint64 @maxInstanceCount) mut { maxInstanceCount = @maxInstanceCount;  return ref this; }
		public ref Self setMaxTriangleCount(uint64 @maxTriangleCount) mut { maxTriangleCount = @maxTriangleCount;  return ref this; }
		public ref Self setMaxDescriptorSetAccelerationStructures(uint32 @maxDescriptorSetAccelerationStructures) mut { maxDescriptorSetAccelerationStructures = @maxDescriptorSetAccelerationStructures;  return ref this; }
	}

	[CRepr]
	public struct VkStridedDeviceAddressRegionKHR
	{
		public uint64 deviceAddress;
		public uint64 stride;
		public uint64 size;

		public ref Self setDeviceAddress(uint64 @deviceAddress) mut { deviceAddress = @deviceAddress;  return ref this; }
		public ref Self setStride(uint64 @stride) mut { stride = @stride;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkTraceRaysIndirectCommandKHR
	{
		public uint32 width;
		public uint32 height;
		public uint32 depth;

		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
		public ref Self setDepth(uint32 @depth) mut { depth = @depth;  return ref this; }
	}

	[CRepr]
	public struct VkTraceRaysIndirectCommand2KHR
	{
		public uint64 raygenShaderRecordAddress;
		public uint64 raygenShaderRecordSize;
		public uint64 missShaderBindingTableAddress;
		public uint64 missShaderBindingTableSize;
		public uint64 missShaderBindingTableStride;
		public uint64 hitShaderBindingTableAddress;
		public uint64 hitShaderBindingTableSize;
		public uint64 hitShaderBindingTableStride;
		public uint64 callableShaderBindingTableAddress;
		public uint64 callableShaderBindingTableSize;
		public uint64 callableShaderBindingTableStride;
		public uint32 width;
		public uint32 height;
		public uint32 depth;

		public ref Self setRaygenShaderRecordAddress(uint64 @raygenShaderRecordAddress) mut { raygenShaderRecordAddress = @raygenShaderRecordAddress;  return ref this; }
		public ref Self setRaygenShaderRecordSize(uint64 @raygenShaderRecordSize) mut { raygenShaderRecordSize = @raygenShaderRecordSize;  return ref this; }
		public ref Self setMissShaderBindingTableAddress(uint64 @missShaderBindingTableAddress) mut { missShaderBindingTableAddress = @missShaderBindingTableAddress;  return ref this; }
		public ref Self setMissShaderBindingTableSize(uint64 @missShaderBindingTableSize) mut { missShaderBindingTableSize = @missShaderBindingTableSize;  return ref this; }
		public ref Self setMissShaderBindingTableStride(uint64 @missShaderBindingTableStride) mut { missShaderBindingTableStride = @missShaderBindingTableStride;  return ref this; }
		public ref Self setHitShaderBindingTableAddress(uint64 @hitShaderBindingTableAddress) mut { hitShaderBindingTableAddress = @hitShaderBindingTableAddress;  return ref this; }
		public ref Self setHitShaderBindingTableSize(uint64 @hitShaderBindingTableSize) mut { hitShaderBindingTableSize = @hitShaderBindingTableSize;  return ref this; }
		public ref Self setHitShaderBindingTableStride(uint64 @hitShaderBindingTableStride) mut { hitShaderBindingTableStride = @hitShaderBindingTableStride;  return ref this; }
		public ref Self setCallableShaderBindingTableAddress(uint64 @callableShaderBindingTableAddress) mut { callableShaderBindingTableAddress = @callableShaderBindingTableAddress;  return ref this; }
		public ref Self setCallableShaderBindingTableSize(uint64 @callableShaderBindingTableSize) mut { callableShaderBindingTableSize = @callableShaderBindingTableSize;  return ref this; }
		public ref Self setCallableShaderBindingTableStride(uint64 @callableShaderBindingTableStride) mut { callableShaderBindingTableStride = @callableShaderBindingTableStride;  return ref this; }
		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
		public ref Self setDepth(uint32 @depth) mut { depth = @depth;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 rayTracingMaintenance1;
		public VkBool32 rayTracingPipelineTraceRaysIndirect2;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRayTracingMaintenance1(VkBool32 @rayTracingMaintenance1) mut { rayTracingMaintenance1 = @rayTracingMaintenance1;  return ref this; }
		public ref Self setRayTracingPipelineTraceRaysIndirect2(VkBool32 @rayTracingPipelineTraceRaysIndirect2) mut { rayTracingPipelineTraceRaysIndirect2 = @rayTracingPipelineTraceRaysIndirect2;  return ref this; }
	}

	[CRepr]
	public struct VkDrmFormatModifierPropertiesListEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT;
		public void* pNext = null;
		public uint32 drmFormatModifierCount;
		public VkDrmFormatModifierPropertiesEXT* pDrmFormatModifierProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifierCount(uint32 @drmFormatModifierCount) mut { drmFormatModifierCount = @drmFormatModifierCount;  return ref this; }
		public ref Self setPDrmFormatModifierProperties(VkDrmFormatModifierPropertiesEXT* @pDrmFormatModifierProperties) mut { pDrmFormatModifierProperties = @pDrmFormatModifierProperties;  return ref this; }
	}

	[CRepr]
	public struct VkDrmFormatModifierPropertiesEXT
	{
		public uint64 drmFormatModifier;
		public uint32 drmFormatModifierPlaneCount;
		public VkFormatFeatureFlags drmFormatModifierTilingFeatures;

		public ref Self setDrmFormatModifier(uint64 @drmFormatModifier) mut { drmFormatModifier = @drmFormatModifier;  return ref this; }
		public ref Self setDrmFormatModifierPlaneCount(uint32 @drmFormatModifierPlaneCount) mut { drmFormatModifierPlaneCount = @drmFormatModifierPlaneCount;  return ref this; }
		public ref Self setDrmFormatModifierTilingFeatures(VkFormatFeatureFlags @drmFormatModifierTilingFeatures) mut { drmFormatModifierTilingFeatures = @drmFormatModifierTilingFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageDrmFormatModifierInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT;
		public void* pNext = null;
		public uint64 drmFormatModifier;
		public VkSharingMode sharingMode;
		public uint32 queueFamilyIndexCount;
		public uint32* pQueueFamilyIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifier(uint64 @drmFormatModifier) mut { drmFormatModifier = @drmFormatModifier;  return ref this; }
		public ref Self setSharingMode(VkSharingMode @sharingMode) mut { sharingMode = @sharingMode;  return ref this; }
		public ref Self setQueueFamilyIndexCount(uint32 @queueFamilyIndexCount) mut { queueFamilyIndexCount = @queueFamilyIndexCount;  return ref this; }
		public ref Self setPQueueFamilyIndices(uint32* @pQueueFamilyIndices) mut { pQueueFamilyIndices = @pQueueFamilyIndices;  return ref this; }
	}

	[CRepr]
	public struct VkImageDrmFormatModifierListCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 drmFormatModifierCount;
		public uint64* pDrmFormatModifiers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifierCount(uint32 @drmFormatModifierCount) mut { drmFormatModifierCount = @drmFormatModifierCount;  return ref this; }
		public ref Self setPDrmFormatModifiers(uint64* @pDrmFormatModifiers) mut { pDrmFormatModifiers = @pDrmFormatModifiers;  return ref this; }
	}

	[CRepr]
	public struct VkImageDrmFormatModifierExplicitCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint64 drmFormatModifier;
		public uint32 drmFormatModifierPlaneCount;
		public VkSubresourceLayout* pPlaneLayouts;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifier(uint64 @drmFormatModifier) mut { drmFormatModifier = @drmFormatModifier;  return ref this; }
		public ref Self setDrmFormatModifierPlaneCount(uint32 @drmFormatModifierPlaneCount) mut { drmFormatModifierPlaneCount = @drmFormatModifierPlaneCount;  return ref this; }
		public ref Self setPPlaneLayouts(VkSubresourceLayout* @pPlaneLayouts) mut { pPlaneLayouts = @pPlaneLayouts;  return ref this; }
	}

	[CRepr]
	public struct VkImageDrmFormatModifierPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT;
		public void* pNext = null;
		public uint64 drmFormatModifier;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifier(uint64 @drmFormatModifier) mut { drmFormatModifier = @drmFormatModifier;  return ref this; }
	}

	[CRepr]
	public struct VkImageStencilUsageCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO;
		public void* pNext = null;
		public VkImageUsageFlags stencilUsage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStencilUsage(VkImageUsageFlags @stencilUsage) mut { stencilUsage = @stencilUsage;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceMemoryOverallocationCreateInfoAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD;
		public void* pNext = null;
		public VkMemoryOverallocationBehaviorAMD overallocationBehavior;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setOverallocationBehavior(VkMemoryOverallocationBehaviorAMD @overallocationBehavior) mut { overallocationBehavior = @overallocationBehavior;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMapFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 fragmentDensityMap;
		public VkBool32 fragmentDensityMapDynamic;
		public VkBool32 fragmentDensityMapNonSubsampledImages;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityMap(VkBool32 @fragmentDensityMap) mut { fragmentDensityMap = @fragmentDensityMap;  return ref this; }
		public ref Self setFragmentDensityMapDynamic(VkBool32 @fragmentDensityMapDynamic) mut { fragmentDensityMapDynamic = @fragmentDensityMapDynamic;  return ref this; }
		public ref Self setFragmentDensityMapNonSubsampledImages(VkBool32 @fragmentDensityMapNonSubsampledImages) mut { fragmentDensityMapNonSubsampledImages = @fragmentDensityMapNonSubsampledImages;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMap2FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 fragmentDensityMapDeferred;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityMapDeferred(VkBool32 @fragmentDensityMapDeferred) mut { fragmentDensityMapDeferred = @fragmentDensityMapDeferred;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM;
		public void* pNext = null;
		public VkBool32 fragmentDensityMapOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityMapOffset(VkBool32 @fragmentDensityMapOffset) mut { fragmentDensityMapOffset = @fragmentDensityMapOffset;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMapPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT;
		public void* pNext = null;
		public VkExtent2D minFragmentDensityTexelSize;
		public VkExtent2D maxFragmentDensityTexelSize;
		public VkBool32 fragmentDensityInvocations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinFragmentDensityTexelSize(VkExtent2D @minFragmentDensityTexelSize) mut { minFragmentDensityTexelSize = @minFragmentDensityTexelSize;  return ref this; }
		public ref Self setMaxFragmentDensityTexelSize(VkExtent2D @maxFragmentDensityTexelSize) mut { maxFragmentDensityTexelSize = @maxFragmentDensityTexelSize;  return ref this; }
		public ref Self setFragmentDensityInvocations(VkBool32 @fragmentDensityInvocations) mut { fragmentDensityInvocations = @fragmentDensityInvocations;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMap2PropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT;
		public void* pNext = null;
		public VkBool32 subsampledLoads;
		public VkBool32 subsampledCoarseReconstructionEarlyAccess;
		public uint32 maxSubsampledArrayLayers;
		public uint32 maxDescriptorSetSubsampledSamplers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubsampledLoads(VkBool32 @subsampledLoads) mut { subsampledLoads = @subsampledLoads;  return ref this; }
		public ref Self setSubsampledCoarseReconstructionEarlyAccess(VkBool32 @subsampledCoarseReconstructionEarlyAccess) mut { subsampledCoarseReconstructionEarlyAccess = @subsampledCoarseReconstructionEarlyAccess;  return ref this; }
		public ref Self setMaxSubsampledArrayLayers(uint32 @maxSubsampledArrayLayers) mut { maxSubsampledArrayLayers = @maxSubsampledArrayLayers;  return ref this; }
		public ref Self setMaxDescriptorSetSubsampledSamplers(uint32 @maxDescriptorSetSubsampledSamplers) mut { maxDescriptorSetSubsampledSamplers = @maxDescriptorSetSubsampledSamplers;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM;
		public void* pNext = null;
		public VkExtent2D fragmentDensityOffsetGranularity;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityOffsetGranularity(VkExtent2D @fragmentDensityOffsetGranularity) mut { fragmentDensityOffsetGranularity = @fragmentDensityOffsetGranularity;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassFragmentDensityMapCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkAttachmentReference fragmentDensityMapAttachment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityMapAttachment(VkAttachmentReference @fragmentDensityMapAttachment) mut { fragmentDensityMapAttachment = @fragmentDensityMapAttachment;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassFragmentDensityMapOffsetEndInfoQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM;
		public void* pNext = null;
		public uint32 fragmentDensityOffsetCount;
		public VkOffset2D* pFragmentDensityOffsets;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentDensityOffsetCount(uint32 @fragmentDensityOffsetCount) mut { fragmentDensityOffsetCount = @fragmentDensityOffsetCount;  return ref this; }
		public ref Self setPFragmentDensityOffsets(VkOffset2D* @pFragmentDensityOffsets) mut { pFragmentDensityOffsets = @pFragmentDensityOffsets;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceScalarBlockLayoutFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES;
		public void* pNext = null;
		public VkBool32 scalarBlockLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setScalarBlockLayout(VkBool32 @scalarBlockLayout) mut { scalarBlockLayout = @scalarBlockLayout;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceProtectedCapabilitiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR;
		public void* pNext = null;
		public VkBool32 supportsProtected;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSupportsProtected(VkBool32 @supportsProtected) mut { supportsProtected = @supportsProtected;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceUniformBufferStandardLayoutFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES;
		public void* pNext = null;
		public VkBool32 uniformBufferStandardLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setUniformBufferStandardLayout(VkBool32 @uniformBufferStandardLayout) mut { uniformBufferStandardLayout = @uniformBufferStandardLayout;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDepthClipEnableFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 depthClipEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDepthClipEnable(VkBool32 @depthClipEnable) mut { depthClipEnable = @depthClipEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationDepthClipStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;
		public VkBool32 depthClipEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDepthClipEnable(VkBool32 @depthClipEnable) mut { depthClipEnable = @depthClipEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMemoryBudgetPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT;
		public void* pNext = null;
		public uint64[(int)VulkanNative.VK_MAX_MEMORY_HEAPS] heapBudget;
		public uint64[(int)VulkanNative.VK_MAX_MEMORY_HEAPS] heapUsage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHeapBudget(uint64[(int)VulkanNative.VK_MAX_MEMORY_HEAPS] @heapBudget) mut { heapBudget = @heapBudget;  return ref this; }
		public ref Self setHeapUsage(uint64[(int)VulkanNative.VK_MAX_MEMORY_HEAPS] @heapUsage) mut { heapUsage = @heapUsage;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMemoryPriorityFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 memoryPriority;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryPriority(VkBool32 @memoryPriority) mut { memoryPriority = @memoryPriority;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryPriorityAllocateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT;
		public void* pNext = null;
		public float priority;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPriority(float @priority) mut { priority = @priority;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 pageableDeviceLocalMemory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPageableDeviceLocalMemory(VkBool32 @pageableDeviceLocalMemory) mut { pageableDeviceLocalMemory = @pageableDeviceLocalMemory;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceBufferDeviceAddressFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES;
		public void* pNext = null;
		public VkBool32 bufferDeviceAddress;
		public VkBool32 bufferDeviceAddressCaptureReplay;
		public VkBool32 bufferDeviceAddressMultiDevice;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBufferDeviceAddress(VkBool32 @bufferDeviceAddress) mut { bufferDeviceAddress = @bufferDeviceAddress;  return ref this; }
		public ref Self setBufferDeviceAddressCaptureReplay(VkBool32 @bufferDeviceAddressCaptureReplay) mut { bufferDeviceAddressCaptureReplay = @bufferDeviceAddressCaptureReplay;  return ref this; }
		public ref Self setBufferDeviceAddressMultiDevice(VkBool32 @bufferDeviceAddressMultiDevice) mut { bufferDeviceAddressMultiDevice = @bufferDeviceAddressMultiDevice;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 bufferDeviceAddress;
		public VkBool32 bufferDeviceAddressCaptureReplay;
		public VkBool32 bufferDeviceAddressMultiDevice;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBufferDeviceAddress(VkBool32 @bufferDeviceAddress) mut { bufferDeviceAddress = @bufferDeviceAddress;  return ref this; }
		public ref Self setBufferDeviceAddressCaptureReplay(VkBool32 @bufferDeviceAddressCaptureReplay) mut { bufferDeviceAddressCaptureReplay = @bufferDeviceAddressCaptureReplay;  return ref this; }
		public ref Self setBufferDeviceAddressMultiDevice(VkBool32 @bufferDeviceAddressMultiDevice) mut { bufferDeviceAddressMultiDevice = @bufferDeviceAddressMultiDevice;  return ref this; }
	}

	[CRepr]
	public struct VkBufferDeviceAddressInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO;
		public void* pNext = null;
		public VkBuffer buffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
	}

	[CRepr]
	public struct VkBufferOpaqueCaptureAddressCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO;
		public void* pNext = null;
		public uint64 opaqueCaptureAddress;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setOpaqueCaptureAddress(uint64 @opaqueCaptureAddress) mut { opaqueCaptureAddress = @opaqueCaptureAddress;  return ref this; }
	}

	[CRepr]
	public struct VkBufferDeviceAddressCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint64 deviceAddress;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceAddress(uint64 @deviceAddress) mut { deviceAddress = @deviceAddress;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageViewImageFormatInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT;
		public void* pNext = null;
		public VkImageViewType imageViewType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageViewType(VkImageViewType @imageViewType) mut { imageViewType = @imageViewType;  return ref this; }
	}

	[CRepr]
	public struct VkFilterCubicImageViewImageFormatPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT;
		public void* pNext = null;
		public VkBool32 filterCubic;
		public VkBool32 filterCubicMinmax;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFilterCubic(VkBool32 @filterCubic) mut { filterCubic = @filterCubic;  return ref this; }
		public ref Self setFilterCubicMinmax(VkBool32 @filterCubicMinmax) mut { filterCubicMinmax = @filterCubicMinmax;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImagelessFramebufferFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES;
		public void* pNext = null;
		public VkBool32 imagelessFramebuffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImagelessFramebuffer(VkBool32 @imagelessFramebuffer) mut { imagelessFramebuffer = @imagelessFramebuffer;  return ref this; }
	}

	[CRepr]
	public struct VkFramebufferAttachmentsCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO;
		public void* pNext = null;
		public uint32 attachmentImageInfoCount;
		public VkFramebufferAttachmentImageInfo* pAttachmentImageInfos;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAttachmentImageInfoCount(uint32 @attachmentImageInfoCount) mut { attachmentImageInfoCount = @attachmentImageInfoCount;  return ref this; }
		public ref Self setPAttachmentImageInfos(VkFramebufferAttachmentImageInfo* @pAttachmentImageInfos) mut { pAttachmentImageInfos = @pAttachmentImageInfos;  return ref this; }
	}

	[CRepr]
	public struct VkFramebufferAttachmentImageInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO;
		public void* pNext = null;
		public VkImageCreateFlags flags;
		public VkImageUsageFlags usage;
		public uint32 width;
		public uint32 height;
		public uint32 layerCount;
		public uint32 viewFormatCount;
		public VkFormat* pViewFormats;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkImageCreateFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setUsage(VkImageUsageFlags @usage) mut { usage = @usage;  return ref this; }
		public ref Self setWidth(uint32 @width) mut { width = @width;  return ref this; }
		public ref Self setHeight(uint32 @height) mut { height = @height;  return ref this; }
		public ref Self setLayerCount(uint32 @layerCount) mut { layerCount = @layerCount;  return ref this; }
		public ref Self setViewFormatCount(uint32 @viewFormatCount) mut { viewFormatCount = @viewFormatCount;  return ref this; }
		public ref Self setPViewFormats(VkFormat* @pViewFormats) mut { pViewFormats = @pViewFormats;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassAttachmentBeginInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO;
		public void* pNext = null;
		public uint32 attachmentCount;
		public VkImageView* pAttachments;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPAttachments(VkImageView* @pAttachments) mut { pAttachments = @pAttachments;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTextureCompressionASTCHDRFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES;
		public void* pNext = null;
		public VkBool32 textureCompressionASTC_HDR;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTextureCompressionASTC_HDR(VkBool32 @textureCompressionASTC_HDR) mut { textureCompressionASTC_HDR = @textureCompressionASTC_HDR;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCooperativeMatrixFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 cooperativeMatrix;
		public VkBool32 cooperativeMatrixRobustBufferAccess;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCooperativeMatrix(VkBool32 @cooperativeMatrix) mut { cooperativeMatrix = @cooperativeMatrix;  return ref this; }
		public ref Self setCooperativeMatrixRobustBufferAccess(VkBool32 @cooperativeMatrixRobustBufferAccess) mut { cooperativeMatrixRobustBufferAccess = @cooperativeMatrixRobustBufferAccess;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCooperativeMatrixPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV;
		public void* pNext = null;
		public VkShaderStageFlags cooperativeMatrixSupportedStages;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCooperativeMatrixSupportedStages(VkShaderStageFlags @cooperativeMatrixSupportedStages) mut { cooperativeMatrixSupportedStages = @cooperativeMatrixSupportedStages;  return ref this; }
	}

	[CRepr]
	public struct VkCooperativeMatrixPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV;
		public void* pNext = null;
		public uint32 MSize;
		public uint32 NSize;
		public uint32 KSize;
		public VkComponentTypeNV AType;
		public VkComponentTypeNV BType;
		public VkComponentTypeNV CType;
		public VkComponentTypeNV DType;
		public VkScopeNV vkscope;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMSize(uint32 @MSize) mut { MSize = @MSize;  return ref this; }
		public ref Self setNSize(uint32 @NSize) mut { NSize = @NSize;  return ref this; }
		public ref Self setKSize(uint32 @KSize) mut { KSize = @KSize;  return ref this; }
		public ref Self setAType(VkComponentTypeNV @AType) mut { AType = @AType;  return ref this; }
		public ref Self setBType(VkComponentTypeNV @BType) mut { BType = @BType;  return ref this; }
		public ref Self setCType(VkComponentTypeNV @CType) mut { CType = @CType;  return ref this; }
		public ref Self setDType(VkComponentTypeNV @DType) mut { DType = @DType;  return ref this; }
		public ref Self setVkscope(VkScopeNV @vkscope) mut { vkscope = @vkscope;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 ycbcrImageArrays;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setYcbcrImageArrays(VkBool32 @ycbcrImageArrays) mut { ycbcrImageArrays = @ycbcrImageArrays;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewHandleInfoNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX;
		public void* pNext = null;
		public VkImageView imageView;
		public VkDescriptorType descriptorType;
		public VkSampler sampler;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setDescriptorType(VkDescriptorType @descriptorType) mut { descriptorType = @descriptorType;  return ref this; }
		public ref Self setSampler(VkSampler @sampler) mut { sampler = @sampler;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewAddressPropertiesNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX;
		public void* pNext = null;
		public uint64 deviceAddress;
		public uint64 size;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceAddress(uint64 @deviceAddress) mut { deviceAddress = @deviceAddress;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkPresentFrameTokenGGP
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP;
		public void* pNext = null;
		public void* frameToken;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFrameToken(void* @frameToken) mut { frameToken = @frameToken;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCreationFeedback
	{
		public VkPipelineCreationFeedbackFlags flags;
		public uint64 duration;

		public ref Self setFlags(VkPipelineCreationFeedbackFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setDuration(uint64 @duration) mut { duration = @duration;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCreationFeedbackCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO;
		public void* pNext = null;
		public VkPipelineCreationFeedback* pPipelineCreationFeedback;
		public uint32 pipelineStageCreationFeedbackCount;
		public VkPipelineCreationFeedback* pPipelineStageCreationFeedbacks;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPPipelineCreationFeedback(VkPipelineCreationFeedback* @pPipelineCreationFeedback) mut { pPipelineCreationFeedback = @pPipelineCreationFeedback;  return ref this; }
		public ref Self setPipelineStageCreationFeedbackCount(uint32 @pipelineStageCreationFeedbackCount) mut { pipelineStageCreationFeedbackCount = @pipelineStageCreationFeedbackCount;  return ref this; }
		public ref Self setPPipelineStageCreationFeedbacks(VkPipelineCreationFeedback* @pPipelineStageCreationFeedbacks) mut { pPipelineStageCreationFeedbacks = @pPipelineStageCreationFeedbacks;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceFullScreenExclusiveInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT;
		public void* pNext = null;
		public VkFullScreenExclusiveEXT fullScreenExclusive;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFullScreenExclusive(VkFullScreenExclusiveEXT @fullScreenExclusive) mut { fullScreenExclusive = @fullScreenExclusive;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceFullScreenExclusiveWin32InfoEXT
	{
		public VkStructureType sType;
		public void* pNext = null;
		public void* hmonitor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHmonitor(void* @hmonitor) mut { hmonitor = @hmonitor;  return ref this; }
	}

	[CRepr]
	public struct VkSurfaceCapabilitiesFullScreenExclusiveEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT;
		public void* pNext = null;
		public VkBool32 fullScreenExclusiveSupported;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFullScreenExclusiveSupported(VkBool32 @fullScreenExclusiveSupported) mut { fullScreenExclusiveSupported = @fullScreenExclusiveSupported;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePerformanceQueryFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 performanceCounterQueryPools;
		public VkBool32 performanceCounterMultipleQueryPools;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPerformanceCounterQueryPools(VkBool32 @performanceCounterQueryPools) mut { performanceCounterQueryPools = @performanceCounterQueryPools;  return ref this; }
		public ref Self setPerformanceCounterMultipleQueryPools(VkBool32 @performanceCounterMultipleQueryPools) mut { performanceCounterMultipleQueryPools = @performanceCounterMultipleQueryPools;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePerformanceQueryPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR;
		public void* pNext = null;
		public VkBool32 allowCommandBufferQueryCopies;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAllowCommandBufferQueryCopies(VkBool32 @allowCommandBufferQueryCopies) mut { allowCommandBufferQueryCopies = @allowCommandBufferQueryCopies;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceCounterKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR;
		public void* pNext = null;
		public VkPerformanceCounterUnitKHR unit;
		public VkPerformanceCounterScopeKHR vkscope;
		public VkPerformanceCounterStorageKHR storage;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] uuid;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setUnit(VkPerformanceCounterUnitKHR @unit) mut { unit = @unit;  return ref this; }
		public ref Self setVkscope(VkPerformanceCounterScopeKHR @vkscope) mut { vkscope = @vkscope;  return ref this; }
		public ref Self setStorage(VkPerformanceCounterStorageKHR @storage) mut { storage = @storage;  return ref this; }
		public ref Self setUuid(uint8[(int)VulkanNative.VK_UUID_SIZE] @uuid) mut { uuid = @uuid;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceCounterDescriptionKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR;
		public void* pNext = null;
		public VkPerformanceCounterDescriptionFlagsKHR flags;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] name;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] category;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkPerformanceCounterDescriptionFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setName(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @name) mut { name = @name;  return ref this; }
		public ref Self setCategory(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @category) mut { category = @category;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
	}

	[CRepr]
	public struct VkQueryPoolPerformanceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 queueFamilyIndex;
		public uint32 counterIndexCount;
		public uint32* pCounterIndices;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setQueueFamilyIndex(uint32 @queueFamilyIndex) mut { queueFamilyIndex = @queueFamilyIndex;  return ref this; }
		public ref Self setCounterIndexCount(uint32 @counterIndexCount) mut { counterIndexCount = @counterIndexCount;  return ref this; }
		public ref Self setPCounterIndices(uint32* @pCounterIndices) mut { pCounterIndices = @pCounterIndices;  return ref this; }
	}

	[CRepr]
	public struct VkAcquireProfilingLockInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR;
		public void* pNext = null;
		public VkAcquireProfilingLockFlagsKHR flags;
		public uint64 timeout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkAcquireProfilingLockFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setTimeout(uint64 @timeout) mut { timeout = @timeout;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceQuerySubmitInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR;
		public void* pNext = null;
		public uint32 counterPassIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCounterPassIndex(uint32 @counterPassIndex) mut { counterPassIndex = @counterPassIndex;  return ref this; }
	}

	[CRepr]
	public struct VkHeadlessSurfaceCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCoverageReductionModeFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 coverageReductionMode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCoverageReductionMode(VkBool32 @coverageReductionMode) mut { coverageReductionMode = @coverageReductionMode;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCoverageReductionStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public uint32 flags;
		public VkCoverageReductionModeNV coverageReductionMode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCoverageReductionMode(VkCoverageReductionModeNV @coverageReductionMode) mut { coverageReductionMode = @coverageReductionMode;  return ref this; }
	}

	[CRepr]
	public struct VkFramebufferMixedSamplesCombinationNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV;
		public void* pNext = null;
		public VkCoverageReductionModeNV coverageReductionMode;
		public VkSampleCountFlags rasterizationSamples;
		public VkSampleCountFlags depthStencilSamples;
		public VkSampleCountFlags colorSamples;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCoverageReductionMode(VkCoverageReductionModeNV @coverageReductionMode) mut { coverageReductionMode = @coverageReductionMode;  return ref this; }
		public ref Self setRasterizationSamples(VkSampleCountFlags @rasterizationSamples) mut { rasterizationSamples = @rasterizationSamples;  return ref this; }
		public ref Self setDepthStencilSamples(VkSampleCountFlags @depthStencilSamples) mut { depthStencilSamples = @depthStencilSamples;  return ref this; }
		public ref Self setColorSamples(VkSampleCountFlags @colorSamples) mut { colorSamples = @colorSamples;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL;
		public void* pNext = null;
		public VkBool32 shaderIntegerFunctions2;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderIntegerFunctions2(VkBool32 @shaderIntegerFunctions2) mut { shaderIntegerFunctions2 = @shaderIntegerFunctions2;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceValueINTEL
	{
		public VkPerformanceValueTypeINTEL type;
		public VkPerformanceValueDataINTEL data;

		public ref Self setType(VkPerformanceValueTypeINTEL @type) mut { type = @type;  return ref this; }
		public ref Self setData(VkPerformanceValueDataINTEL @data) mut { data = @data;  return ref this; }
	}

	[CRepr]
	public struct VkInitializePerformanceApiInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL;
		public void* pNext = null;
		public void* pUserData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPUserData(void* @pUserData) mut { pUserData = @pUserData;  return ref this; }
	}

	[CRepr]
	public struct VkQueryPoolPerformanceQueryCreateInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL;
		public void* pNext = null;
		public VkQueryPoolSamplingModeINTEL performanceCountersSampling;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPerformanceCountersSampling(VkQueryPoolSamplingModeINTEL @performanceCountersSampling) mut { performanceCountersSampling = @performanceCountersSampling;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceMarkerInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL;
		public void* pNext = null;
		public uint64 marker;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMarker(uint64 @marker) mut { marker = @marker;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceStreamMarkerInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL;
		public void* pNext = null;
		public uint32 marker;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMarker(uint32 @marker) mut { marker = @marker;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceOverrideInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL;
		public void* pNext = null;
		public VkPerformanceOverrideTypeINTEL type;
		public VkBool32 enable;
		public uint64 parameter;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkPerformanceOverrideTypeINTEL @type) mut { type = @type;  return ref this; }
		public ref Self setEnable(VkBool32 @enable) mut { enable = @enable;  return ref this; }
		public ref Self setParameter(uint64 @parameter) mut { parameter = @parameter;  return ref this; }
	}

	[CRepr]
	public struct VkPerformanceConfigurationAcquireInfoINTEL
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL;
		public void* pNext = null;
		public VkPerformanceConfigurationTypeINTEL type;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkPerformanceConfigurationTypeINTEL @type) mut { type = @type;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderClockFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 shaderSubgroupClock;
		public VkBool32 shaderDeviceClock;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderSubgroupClock(VkBool32 @shaderSubgroupClock) mut { shaderSubgroupClock = @shaderSubgroupClock;  return ref this; }
		public ref Self setShaderDeviceClock(VkBool32 @shaderDeviceClock) mut { shaderDeviceClock = @shaderDeviceClock;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceIndexTypeUint8FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 indexTypeUint8;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setIndexTypeUint8(VkBool32 @indexTypeUint8) mut { indexTypeUint8 = @indexTypeUint8;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV;
		public void* pNext = null;
		public uint32 shaderSMCount;
		public uint32 shaderWarpsPerSM;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderSMCount(uint32 @shaderSMCount) mut { shaderSMCount = @shaderSMCount;  return ref this; }
		public ref Self setShaderWarpsPerSM(uint32 @shaderWarpsPerSM) mut { shaderWarpsPerSM = @shaderWarpsPerSM;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 shaderSMBuiltins;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderSMBuiltins(VkBool32 @shaderSMBuiltins) mut { shaderSMBuiltins = @shaderSMBuiltins;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 fragmentShaderSampleInterlock;
		public VkBool32 fragmentShaderPixelInterlock;
		public VkBool32 fragmentShaderShadingRateInterlock;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentShaderSampleInterlock(VkBool32 @fragmentShaderSampleInterlock) mut { fragmentShaderSampleInterlock = @fragmentShaderSampleInterlock;  return ref this; }
		public ref Self setFragmentShaderPixelInterlock(VkBool32 @fragmentShaderPixelInterlock) mut { fragmentShaderPixelInterlock = @fragmentShaderPixelInterlock;  return ref this; }
		public ref Self setFragmentShaderShadingRateInterlock(VkBool32 @fragmentShaderShadingRateInterlock) mut { fragmentShaderShadingRateInterlock = @fragmentShaderShadingRateInterlock;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES;
		public void* pNext = null;
		public VkBool32 separateDepthStencilLayouts;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSeparateDepthStencilLayouts(VkBool32 @separateDepthStencilLayouts) mut { separateDepthStencilLayouts = @separateDepthStencilLayouts;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentReferenceStencilLayout
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT;
		public void* pNext = null;
		public VkImageLayout stencilLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStencilLayout(VkImageLayout @stencilLayout) mut { stencilLayout = @stencilLayout;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 primitiveTopologyListRestart;
		public VkBool32 primitiveTopologyPatchListRestart;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrimitiveTopologyListRestart(VkBool32 @primitiveTopologyListRestart) mut { primitiveTopologyListRestart = @primitiveTopologyListRestart;  return ref this; }
		public ref Self setPrimitiveTopologyPatchListRestart(VkBool32 @primitiveTopologyPatchListRestart) mut { primitiveTopologyPatchListRestart = @primitiveTopologyPatchListRestart;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentDescriptionStencilLayout
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT;
		public void* pNext = null;
		public VkImageLayout stencilInitialLayout;
		public VkImageLayout stencilFinalLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStencilInitialLayout(VkImageLayout @stencilInitialLayout) mut { stencilInitialLayout = @stencilInitialLayout;  return ref this; }
		public ref Self setStencilFinalLayout(VkImageLayout @stencilFinalLayout) mut { stencilFinalLayout = @stencilFinalLayout;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 pipelineExecutableInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineExecutableInfo(VkBool32 @pipelineExecutableInfo) mut { pipelineExecutableInfo = @pipelineExecutableInfo;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR;
		public void* pNext = null;
		public VkPipeline pipeline;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipeline(VkPipeline @pipeline) mut { pipeline = @pipeline;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineExecutablePropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR;
		public void* pNext = null;
		public VkShaderStageFlags stages;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] name;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;
		public uint32 subgroupSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStages(VkShaderStageFlags @stages) mut { stages = @stages;  return ref this; }
		public ref Self setName(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @name) mut { name = @name;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
		public ref Self setSubgroupSize(uint32 @subgroupSize) mut { subgroupSize = @subgroupSize;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineExecutableInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR;
		public void* pNext = null;
		public VkPipeline pipeline;
		public uint32 executableIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipeline(VkPipeline @pipeline) mut { pipeline = @pipeline;  return ref this; }
		public ref Self setExecutableIndex(uint32 @executableIndex) mut { executableIndex = @executableIndex;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineExecutableStatisticKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR;
		public void* pNext = null;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] name;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;
		public VkPipelineExecutableStatisticFormatKHR format;
		public VkPipelineExecutableStatisticValueKHR value;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setName(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @name) mut { name = @name;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
		public ref Self setFormat(VkPipelineExecutableStatisticFormatKHR @format) mut { format = @format;  return ref this; }
		public ref Self setValue(VkPipelineExecutableStatisticValueKHR @value) mut { value = @value;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineExecutableInternalRepresentationKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR;
		public void* pNext = null;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] name;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;
		public VkBool32 isText;
		public uint dataSize;
		public void* pData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setName(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @name) mut { name = @name;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
		public ref Self setIsText(VkBool32 @isText) mut { isText = @isText;  return ref this; }
		public ref Self setDataSize(uint @dataSize) mut { dataSize = @dataSize;  return ref this; }
		public ref Self setPData(void* @pData) mut { pData = @pData;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderDemoteToHelperInvocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderDemoteToHelperInvocation(VkBool32 @shaderDemoteToHelperInvocation) mut { shaderDemoteToHelperInvocation = @shaderDemoteToHelperInvocation;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 texelBufferAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTexelBufferAlignment(VkBool32 @texelBufferAlignment) mut { texelBufferAlignment = @texelBufferAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceTexelBufferAlignmentProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES;
		public void* pNext = null;
		public uint64 storageTexelBufferOffsetAlignmentBytes;
		public VkBool32 storageTexelBufferOffsetSingleTexelAlignment;
		public uint64 uniformTexelBufferOffsetAlignmentBytes;
		public VkBool32 uniformTexelBufferOffsetSingleTexelAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStorageTexelBufferOffsetAlignmentBytes(uint64 @storageTexelBufferOffsetAlignmentBytes) mut { storageTexelBufferOffsetAlignmentBytes = @storageTexelBufferOffsetAlignmentBytes;  return ref this; }
		public ref Self setStorageTexelBufferOffsetSingleTexelAlignment(VkBool32 @storageTexelBufferOffsetSingleTexelAlignment) mut { storageTexelBufferOffsetSingleTexelAlignment = @storageTexelBufferOffsetSingleTexelAlignment;  return ref this; }
		public ref Self setUniformTexelBufferOffsetAlignmentBytes(uint64 @uniformTexelBufferOffsetAlignmentBytes) mut { uniformTexelBufferOffsetAlignmentBytes = @uniformTexelBufferOffsetAlignmentBytes;  return ref this; }
		public ref Self setUniformTexelBufferOffsetSingleTexelAlignment(VkBool32 @uniformTexelBufferOffsetSingleTexelAlignment) mut { uniformTexelBufferOffsetSingleTexelAlignment = @uniformTexelBufferOffsetSingleTexelAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubgroupSizeControlFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES;
		public void* pNext = null;
		public VkBool32 subgroupSizeControl;
		public VkBool32 computeFullSubgroups;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubgroupSizeControl(VkBool32 @subgroupSizeControl) mut { subgroupSizeControl = @subgroupSizeControl;  return ref this; }
		public ref Self setComputeFullSubgroups(VkBool32 @computeFullSubgroups) mut { computeFullSubgroups = @computeFullSubgroups;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubgroupSizeControlProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES;
		public void* pNext = null;
		public uint32 minSubgroupSize;
		public uint32 maxSubgroupSize;
		public uint32 maxComputeWorkgroupSubgroups;
		public VkShaderStageFlags requiredSubgroupSizeStages;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinSubgroupSize(uint32 @minSubgroupSize) mut { minSubgroupSize = @minSubgroupSize;  return ref this; }
		public ref Self setMaxSubgroupSize(uint32 @maxSubgroupSize) mut { maxSubgroupSize = @maxSubgroupSize;  return ref this; }
		public ref Self setMaxComputeWorkgroupSubgroups(uint32 @maxComputeWorkgroupSubgroups) mut { maxComputeWorkgroupSubgroups = @maxComputeWorkgroupSubgroups;  return ref this; }
		public ref Self setRequiredSubgroupSizeStages(VkShaderStageFlags @requiredSubgroupSizeStages) mut { requiredSubgroupSizeStages = @requiredSubgroupSizeStages;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO;
		public void* pNext = null;
		public uint32 requiredSubgroupSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRequiredSubgroupSize(uint32 @requiredSubgroupSize) mut { requiredSubgroupSize = @requiredSubgroupSize;  return ref this; }
	}

	[CRepr]
	public struct VkSubpassShadingPipelineCreateInfoHUAWEI
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI;
		public void* pNext = null;
		public VkRenderPass renderPass;
		public uint32 subpass;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRenderPass(VkRenderPass @renderPass) mut { renderPass = @renderPass;  return ref this; }
		public ref Self setSubpass(uint32 @subpass) mut { subpass = @subpass;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI;
		public void* pNext = null;
		public uint32 maxSubpassShadingWorkgroupSizeAspectRatio;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxSubpassShadingWorkgroupSizeAspectRatio(uint32 @maxSubpassShadingWorkgroupSizeAspectRatio) mut { maxSubpassShadingWorkgroupSizeAspectRatio = @maxSubpassShadingWorkgroupSizeAspectRatio;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryOpaqueCaptureAddressAllocateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO;
		public void* pNext = null;
		public uint64 opaqueCaptureAddress;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setOpaqueCaptureAddress(uint64 @opaqueCaptureAddress) mut { opaqueCaptureAddress = @opaqueCaptureAddress;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceMemoryOpaqueCaptureAddressInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO;
		public void* pNext = null;
		public VkDeviceMemory memory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceLineRasterizationFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 rectangularLines;
		public VkBool32 bresenhamLines;
		public VkBool32 smoothLines;
		public VkBool32 stippledRectangularLines;
		public VkBool32 stippledBresenhamLines;
		public VkBool32 stippledSmoothLines;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRectangularLines(VkBool32 @rectangularLines) mut { rectangularLines = @rectangularLines;  return ref this; }
		public ref Self setBresenhamLines(VkBool32 @bresenhamLines) mut { bresenhamLines = @bresenhamLines;  return ref this; }
		public ref Self setSmoothLines(VkBool32 @smoothLines) mut { smoothLines = @smoothLines;  return ref this; }
		public ref Self setStippledRectangularLines(VkBool32 @stippledRectangularLines) mut { stippledRectangularLines = @stippledRectangularLines;  return ref this; }
		public ref Self setStippledBresenhamLines(VkBool32 @stippledBresenhamLines) mut { stippledBresenhamLines = @stippledBresenhamLines;  return ref this; }
		public ref Self setStippledSmoothLines(VkBool32 @stippledSmoothLines) mut { stippledSmoothLines = @stippledSmoothLines;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceLineRasterizationPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 lineSubPixelPrecisionBits;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLineSubPixelPrecisionBits(uint32 @lineSubPixelPrecisionBits) mut { lineSubPixelPrecisionBits = @lineSubPixelPrecisionBits;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationLineStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkLineRasterizationModeEXT lineRasterizationMode;
		public VkBool32 stippledLineEnable;
		public uint32 lineStippleFactor;
		public uint16 lineStipplePattern;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLineRasterizationMode(VkLineRasterizationModeEXT @lineRasterizationMode) mut { lineRasterizationMode = @lineRasterizationMode;  return ref this; }
		public ref Self setStippledLineEnable(VkBool32 @stippledLineEnable) mut { stippledLineEnable = @stippledLineEnable;  return ref this; }
		public ref Self setLineStippleFactor(uint32 @lineStippleFactor) mut { lineStippleFactor = @lineStippleFactor;  return ref this; }
		public ref Self setLineStipplePattern(uint16 @lineStipplePattern) mut { lineStipplePattern = @lineStipplePattern;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePipelineCreationCacheControlFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES;
		public void* pNext = null;
		public VkBool32 pipelineCreationCacheControl;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineCreationCacheControl(VkBool32 @pipelineCreationCacheControl) mut { pipelineCreationCacheControl = @pipelineCreationCacheControl;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan11Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES;
		public void* pNext = null;
		public VkBool32 storageBuffer16BitAccess;
		public VkBool32 uniformAndStorageBuffer16BitAccess;
		public VkBool32 storagePushConstant16;
		public VkBool32 storageInputOutput16;
		public VkBool32 multiview;
		public VkBool32 multiviewGeometryShader;
		public VkBool32 multiviewTessellationShader;
		public VkBool32 variablePointersStorageBuffer;
		public VkBool32 variablePointers;
		public VkBool32 protectedMemory;
		public VkBool32 samplerYcbcrConversion;
		public VkBool32 shaderDrawParameters;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStorageBuffer16BitAccess(VkBool32 @storageBuffer16BitAccess) mut { storageBuffer16BitAccess = @storageBuffer16BitAccess;  return ref this; }
		public ref Self setUniformAndStorageBuffer16BitAccess(VkBool32 @uniformAndStorageBuffer16BitAccess) mut { uniformAndStorageBuffer16BitAccess = @uniformAndStorageBuffer16BitAccess;  return ref this; }
		public ref Self setStoragePushConstant16(VkBool32 @storagePushConstant16) mut { storagePushConstant16 = @storagePushConstant16;  return ref this; }
		public ref Self setStorageInputOutput16(VkBool32 @storageInputOutput16) mut { storageInputOutput16 = @storageInputOutput16;  return ref this; }
		public ref Self setMultiview(VkBool32 @multiview) mut { multiview = @multiview;  return ref this; }
		public ref Self setMultiviewGeometryShader(VkBool32 @multiviewGeometryShader) mut { multiviewGeometryShader = @multiviewGeometryShader;  return ref this; }
		public ref Self setMultiviewTessellationShader(VkBool32 @multiviewTessellationShader) mut { multiviewTessellationShader = @multiviewTessellationShader;  return ref this; }
		public ref Self setVariablePointersStorageBuffer(VkBool32 @variablePointersStorageBuffer) mut { variablePointersStorageBuffer = @variablePointersStorageBuffer;  return ref this; }
		public ref Self setVariablePointers(VkBool32 @variablePointers) mut { variablePointers = @variablePointers;  return ref this; }
		public ref Self setProtectedMemory(VkBool32 @protectedMemory) mut { protectedMemory = @protectedMemory;  return ref this; }
		public ref Self setSamplerYcbcrConversion(VkBool32 @samplerYcbcrConversion) mut { samplerYcbcrConversion = @samplerYcbcrConversion;  return ref this; }
		public ref Self setShaderDrawParameters(VkBool32 @shaderDrawParameters) mut { shaderDrawParameters = @shaderDrawParameters;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan11Properties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES;
		public void* pNext = null;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] deviceUUID;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] driverUUID;
		public uint8[(int)VulkanNative.VK_LUID_SIZE] deviceLUID;
		public uint32 deviceNodeMask;
		public VkBool32 deviceLUIDValid;
		public uint32 subgroupSize;
		public VkShaderStageFlags subgroupSupportedStages;
		public VkSubgroupFeatureFlags subgroupSupportedOperations;
		public VkBool32 subgroupQuadOperationsInAllStages;
		public VkPointClippingBehavior pointClippingBehavior;
		public uint32 maxMultiviewViewCount;
		public uint32 maxMultiviewInstanceIndex;
		public VkBool32 protectedNoFault;
		public uint32 maxPerSetDescriptors;
		public uint64 maxMemoryAllocationSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @deviceUUID) mut { deviceUUID = @deviceUUID;  return ref this; }
		public ref Self setDriverUUID(uint8[(int)VulkanNative.VK_UUID_SIZE] @driverUUID) mut { driverUUID = @driverUUID;  return ref this; }
		public ref Self setDeviceLUID(uint8[(int)VulkanNative.VK_LUID_SIZE] @deviceLUID) mut { deviceLUID = @deviceLUID;  return ref this; }
		public ref Self setDeviceNodeMask(uint32 @deviceNodeMask) mut { deviceNodeMask = @deviceNodeMask;  return ref this; }
		public ref Self setDeviceLUIDValid(VkBool32 @deviceLUIDValid) mut { deviceLUIDValid = @deviceLUIDValid;  return ref this; }
		public ref Self setSubgroupSize(uint32 @subgroupSize) mut { subgroupSize = @subgroupSize;  return ref this; }
		public ref Self setSubgroupSupportedStages(VkShaderStageFlags @subgroupSupportedStages) mut { subgroupSupportedStages = @subgroupSupportedStages;  return ref this; }
		public ref Self setSubgroupSupportedOperations(VkSubgroupFeatureFlags @subgroupSupportedOperations) mut { subgroupSupportedOperations = @subgroupSupportedOperations;  return ref this; }
		public ref Self setSubgroupQuadOperationsInAllStages(VkBool32 @subgroupQuadOperationsInAllStages) mut { subgroupQuadOperationsInAllStages = @subgroupQuadOperationsInAllStages;  return ref this; }
		public ref Self setPointClippingBehavior(VkPointClippingBehavior @pointClippingBehavior) mut { pointClippingBehavior = @pointClippingBehavior;  return ref this; }
		public ref Self setMaxMultiviewViewCount(uint32 @maxMultiviewViewCount) mut { maxMultiviewViewCount = @maxMultiviewViewCount;  return ref this; }
		public ref Self setMaxMultiviewInstanceIndex(uint32 @maxMultiviewInstanceIndex) mut { maxMultiviewInstanceIndex = @maxMultiviewInstanceIndex;  return ref this; }
		public ref Self setProtectedNoFault(VkBool32 @protectedNoFault) mut { protectedNoFault = @protectedNoFault;  return ref this; }
		public ref Self setMaxPerSetDescriptors(uint32 @maxPerSetDescriptors) mut { maxPerSetDescriptors = @maxPerSetDescriptors;  return ref this; }
		public ref Self setMaxMemoryAllocationSize(uint64 @maxMemoryAllocationSize) mut { maxMemoryAllocationSize = @maxMemoryAllocationSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan12Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES;
		public void* pNext = null;
		public VkBool32 samplerMirrorClampToEdge;
		public VkBool32 drawIndirectCount;
		public VkBool32 storageBuffer8BitAccess;
		public VkBool32 uniformAndStorageBuffer8BitAccess;
		public VkBool32 storagePushConstant8;
		public VkBool32 shaderBufferInt64Atomics;
		public VkBool32 shaderSharedInt64Atomics;
		public VkBool32 shaderFloat16;
		public VkBool32 shaderInt8;
		public VkBool32 descriptorIndexing;
		public VkBool32 shaderInputAttachmentArrayDynamicIndexing;
		public VkBool32 shaderUniformTexelBufferArrayDynamicIndexing;
		public VkBool32 shaderStorageTexelBufferArrayDynamicIndexing;
		public VkBool32 shaderUniformBufferArrayNonUniformIndexing;
		public VkBool32 shaderSampledImageArrayNonUniformIndexing;
		public VkBool32 shaderStorageBufferArrayNonUniformIndexing;
		public VkBool32 shaderStorageImageArrayNonUniformIndexing;
		public VkBool32 shaderInputAttachmentArrayNonUniformIndexing;
		public VkBool32 shaderUniformTexelBufferArrayNonUniformIndexing;
		public VkBool32 shaderStorageTexelBufferArrayNonUniformIndexing;
		public VkBool32 descriptorBindingUniformBufferUpdateAfterBind;
		public VkBool32 descriptorBindingSampledImageUpdateAfterBind;
		public VkBool32 descriptorBindingStorageImageUpdateAfterBind;
		public VkBool32 descriptorBindingStorageBufferUpdateAfterBind;
		public VkBool32 descriptorBindingUniformTexelBufferUpdateAfterBind;
		public VkBool32 descriptorBindingStorageTexelBufferUpdateAfterBind;
		public VkBool32 descriptorBindingUpdateUnusedWhilePending;
		public VkBool32 descriptorBindingPartiallyBound;
		public VkBool32 descriptorBindingVariableDescriptorCount;
		public VkBool32 runtimeDescriptorArray;
		public VkBool32 samplerFilterMinmax;
		public VkBool32 scalarBlockLayout;
		public VkBool32 imagelessFramebuffer;
		public VkBool32 uniformBufferStandardLayout;
		public VkBool32 shaderSubgroupExtendedTypes;
		public VkBool32 separateDepthStencilLayouts;
		public VkBool32 hostQueryReset;
		public VkBool32 timelineSemaphore;
		public VkBool32 bufferDeviceAddress;
		public VkBool32 bufferDeviceAddressCaptureReplay;
		public VkBool32 bufferDeviceAddressMultiDevice;
		public VkBool32 vulkanMemoryModel;
		public VkBool32 vulkanMemoryModelDeviceScope;
		public VkBool32 vulkanMemoryModelAvailabilityVisibilityChains;
		public VkBool32 shaderOutputViewportIndex;
		public VkBool32 shaderOutputLayer;
		public VkBool32 subgroupBroadcastDynamicId;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSamplerMirrorClampToEdge(VkBool32 @samplerMirrorClampToEdge) mut { samplerMirrorClampToEdge = @samplerMirrorClampToEdge;  return ref this; }
		public ref Self setDrawIndirectCount(VkBool32 @drawIndirectCount) mut { drawIndirectCount = @drawIndirectCount;  return ref this; }
		public ref Self setStorageBuffer8BitAccess(VkBool32 @storageBuffer8BitAccess) mut { storageBuffer8BitAccess = @storageBuffer8BitAccess;  return ref this; }
		public ref Self setUniformAndStorageBuffer8BitAccess(VkBool32 @uniformAndStorageBuffer8BitAccess) mut { uniformAndStorageBuffer8BitAccess = @uniformAndStorageBuffer8BitAccess;  return ref this; }
		public ref Self setStoragePushConstant8(VkBool32 @storagePushConstant8) mut { storagePushConstant8 = @storagePushConstant8;  return ref this; }
		public ref Self setShaderBufferInt64Atomics(VkBool32 @shaderBufferInt64Atomics) mut { shaderBufferInt64Atomics = @shaderBufferInt64Atomics;  return ref this; }
		public ref Self setShaderSharedInt64Atomics(VkBool32 @shaderSharedInt64Atomics) mut { shaderSharedInt64Atomics = @shaderSharedInt64Atomics;  return ref this; }
		public ref Self setShaderFloat16(VkBool32 @shaderFloat16) mut { shaderFloat16 = @shaderFloat16;  return ref this; }
		public ref Self setShaderInt8(VkBool32 @shaderInt8) mut { shaderInt8 = @shaderInt8;  return ref this; }
		public ref Self setDescriptorIndexing(VkBool32 @descriptorIndexing) mut { descriptorIndexing = @descriptorIndexing;  return ref this; }
		public ref Self setShaderInputAttachmentArrayDynamicIndexing(VkBool32 @shaderInputAttachmentArrayDynamicIndexing) mut { shaderInputAttachmentArrayDynamicIndexing = @shaderInputAttachmentArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderUniformTexelBufferArrayDynamicIndexing(VkBool32 @shaderUniformTexelBufferArrayDynamicIndexing) mut { shaderUniformTexelBufferArrayDynamicIndexing = @shaderUniformTexelBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderStorageTexelBufferArrayDynamicIndexing(VkBool32 @shaderStorageTexelBufferArrayDynamicIndexing) mut { shaderStorageTexelBufferArrayDynamicIndexing = @shaderStorageTexelBufferArrayDynamicIndexing;  return ref this; }
		public ref Self setShaderUniformBufferArrayNonUniformIndexing(VkBool32 @shaderUniformBufferArrayNonUniformIndexing) mut { shaderUniformBufferArrayNonUniformIndexing = @shaderUniformBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderSampledImageArrayNonUniformIndexing(VkBool32 @shaderSampledImageArrayNonUniformIndexing) mut { shaderSampledImageArrayNonUniformIndexing = @shaderSampledImageArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageBufferArrayNonUniformIndexing(VkBool32 @shaderStorageBufferArrayNonUniformIndexing) mut { shaderStorageBufferArrayNonUniformIndexing = @shaderStorageBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageImageArrayNonUniformIndexing(VkBool32 @shaderStorageImageArrayNonUniformIndexing) mut { shaderStorageImageArrayNonUniformIndexing = @shaderStorageImageArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderInputAttachmentArrayNonUniformIndexing(VkBool32 @shaderInputAttachmentArrayNonUniformIndexing) mut { shaderInputAttachmentArrayNonUniformIndexing = @shaderInputAttachmentArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderUniformTexelBufferArrayNonUniformIndexing(VkBool32 @shaderUniformTexelBufferArrayNonUniformIndexing) mut { shaderUniformTexelBufferArrayNonUniformIndexing = @shaderUniformTexelBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setShaderStorageTexelBufferArrayNonUniformIndexing(VkBool32 @shaderStorageTexelBufferArrayNonUniformIndexing) mut { shaderStorageTexelBufferArrayNonUniformIndexing = @shaderStorageTexelBufferArrayNonUniformIndexing;  return ref this; }
		public ref Self setDescriptorBindingUniformBufferUpdateAfterBind(VkBool32 @descriptorBindingUniformBufferUpdateAfterBind) mut { descriptorBindingUniformBufferUpdateAfterBind = @descriptorBindingUniformBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingSampledImageUpdateAfterBind(VkBool32 @descriptorBindingSampledImageUpdateAfterBind) mut { descriptorBindingSampledImageUpdateAfterBind = @descriptorBindingSampledImageUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageImageUpdateAfterBind(VkBool32 @descriptorBindingStorageImageUpdateAfterBind) mut { descriptorBindingStorageImageUpdateAfterBind = @descriptorBindingStorageImageUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageBufferUpdateAfterBind(VkBool32 @descriptorBindingStorageBufferUpdateAfterBind) mut { descriptorBindingStorageBufferUpdateAfterBind = @descriptorBindingStorageBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingUniformTexelBufferUpdateAfterBind(VkBool32 @descriptorBindingUniformTexelBufferUpdateAfterBind) mut { descriptorBindingUniformTexelBufferUpdateAfterBind = @descriptorBindingUniformTexelBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingStorageTexelBufferUpdateAfterBind(VkBool32 @descriptorBindingStorageTexelBufferUpdateAfterBind) mut { descriptorBindingStorageTexelBufferUpdateAfterBind = @descriptorBindingStorageTexelBufferUpdateAfterBind;  return ref this; }
		public ref Self setDescriptorBindingUpdateUnusedWhilePending(VkBool32 @descriptorBindingUpdateUnusedWhilePending) mut { descriptorBindingUpdateUnusedWhilePending = @descriptorBindingUpdateUnusedWhilePending;  return ref this; }
		public ref Self setDescriptorBindingPartiallyBound(VkBool32 @descriptorBindingPartiallyBound) mut { descriptorBindingPartiallyBound = @descriptorBindingPartiallyBound;  return ref this; }
		public ref Self setDescriptorBindingVariableDescriptorCount(VkBool32 @descriptorBindingVariableDescriptorCount) mut { descriptorBindingVariableDescriptorCount = @descriptorBindingVariableDescriptorCount;  return ref this; }
		public ref Self setRuntimeDescriptorArray(VkBool32 @runtimeDescriptorArray) mut { runtimeDescriptorArray = @runtimeDescriptorArray;  return ref this; }
		public ref Self setSamplerFilterMinmax(VkBool32 @samplerFilterMinmax) mut { samplerFilterMinmax = @samplerFilterMinmax;  return ref this; }
		public ref Self setScalarBlockLayout(VkBool32 @scalarBlockLayout) mut { scalarBlockLayout = @scalarBlockLayout;  return ref this; }
		public ref Self setImagelessFramebuffer(VkBool32 @imagelessFramebuffer) mut { imagelessFramebuffer = @imagelessFramebuffer;  return ref this; }
		public ref Self setUniformBufferStandardLayout(VkBool32 @uniformBufferStandardLayout) mut { uniformBufferStandardLayout = @uniformBufferStandardLayout;  return ref this; }
		public ref Self setShaderSubgroupExtendedTypes(VkBool32 @shaderSubgroupExtendedTypes) mut { shaderSubgroupExtendedTypes = @shaderSubgroupExtendedTypes;  return ref this; }
		public ref Self setSeparateDepthStencilLayouts(VkBool32 @separateDepthStencilLayouts) mut { separateDepthStencilLayouts = @separateDepthStencilLayouts;  return ref this; }
		public ref Self setHostQueryReset(VkBool32 @hostQueryReset) mut { hostQueryReset = @hostQueryReset;  return ref this; }
		public ref Self setTimelineSemaphore(VkBool32 @timelineSemaphore) mut { timelineSemaphore = @timelineSemaphore;  return ref this; }
		public ref Self setBufferDeviceAddress(VkBool32 @bufferDeviceAddress) mut { bufferDeviceAddress = @bufferDeviceAddress;  return ref this; }
		public ref Self setBufferDeviceAddressCaptureReplay(VkBool32 @bufferDeviceAddressCaptureReplay) mut { bufferDeviceAddressCaptureReplay = @bufferDeviceAddressCaptureReplay;  return ref this; }
		public ref Self setBufferDeviceAddressMultiDevice(VkBool32 @bufferDeviceAddressMultiDevice) mut { bufferDeviceAddressMultiDevice = @bufferDeviceAddressMultiDevice;  return ref this; }
		public ref Self setVulkanMemoryModel(VkBool32 @vulkanMemoryModel) mut { vulkanMemoryModel = @vulkanMemoryModel;  return ref this; }
		public ref Self setVulkanMemoryModelDeviceScope(VkBool32 @vulkanMemoryModelDeviceScope) mut { vulkanMemoryModelDeviceScope = @vulkanMemoryModelDeviceScope;  return ref this; }
		public ref Self setVulkanMemoryModelAvailabilityVisibilityChains(VkBool32 @vulkanMemoryModelAvailabilityVisibilityChains) mut { vulkanMemoryModelAvailabilityVisibilityChains = @vulkanMemoryModelAvailabilityVisibilityChains;  return ref this; }
		public ref Self setShaderOutputViewportIndex(VkBool32 @shaderOutputViewportIndex) mut { shaderOutputViewportIndex = @shaderOutputViewportIndex;  return ref this; }
		public ref Self setShaderOutputLayer(VkBool32 @shaderOutputLayer) mut { shaderOutputLayer = @shaderOutputLayer;  return ref this; }
		public ref Self setSubgroupBroadcastDynamicId(VkBool32 @subgroupBroadcastDynamicId) mut { subgroupBroadcastDynamicId = @subgroupBroadcastDynamicId;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan12Properties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES;
		public void* pNext = null;
		public VkDriverId driverID;
		public char8[(int)VulkanNative.VK_MAX_DRIVER_NAME_SIZE] driverName;
		public char8[(int)VulkanNative.VK_MAX_DRIVER_INFO_SIZE] driverInfo;
		public VkConformanceVersion conformanceVersion;
		public VkShaderFloatControlsIndependence denormBehaviorIndependence;
		public VkShaderFloatControlsIndependence roundingModeIndependence;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat16;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat32;
		public VkBool32 shaderSignedZeroInfNanPreserveFloat64;
		public VkBool32 shaderDenormPreserveFloat16;
		public VkBool32 shaderDenormPreserveFloat32;
		public VkBool32 shaderDenormPreserveFloat64;
		public VkBool32 shaderDenormFlushToZeroFloat16;
		public VkBool32 shaderDenormFlushToZeroFloat32;
		public VkBool32 shaderDenormFlushToZeroFloat64;
		public VkBool32 shaderRoundingModeRTEFloat16;
		public VkBool32 shaderRoundingModeRTEFloat32;
		public VkBool32 shaderRoundingModeRTEFloat64;
		public VkBool32 shaderRoundingModeRTZFloat16;
		public VkBool32 shaderRoundingModeRTZFloat32;
		public VkBool32 shaderRoundingModeRTZFloat64;
		public uint32 maxUpdateAfterBindDescriptorsInAllPools;
		public VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
		public VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
		public VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
		public VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
		public VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
		public VkBool32 robustBufferAccessUpdateAfterBind;
		public VkBool32 quadDivergentImplicitLod;
		public uint32 maxPerStageDescriptorUpdateAfterBindSamplers;
		public uint32 maxPerStageDescriptorUpdateAfterBindUniformBuffers;
		public uint32 maxPerStageDescriptorUpdateAfterBindStorageBuffers;
		public uint32 maxPerStageDescriptorUpdateAfterBindSampledImages;
		public uint32 maxPerStageDescriptorUpdateAfterBindStorageImages;
		public uint32 maxPerStageDescriptorUpdateAfterBindInputAttachments;
		public uint32 maxPerStageUpdateAfterBindResources;
		public uint32 maxDescriptorSetUpdateAfterBindSamplers;
		public uint32 maxDescriptorSetUpdateAfterBindUniformBuffers;
		public uint32 maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
		public uint32 maxDescriptorSetUpdateAfterBindStorageBuffers;
		public uint32 maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
		public uint32 maxDescriptorSetUpdateAfterBindSampledImages;
		public uint32 maxDescriptorSetUpdateAfterBindStorageImages;
		public uint32 maxDescriptorSetUpdateAfterBindInputAttachments;
		public VkResolveModeFlags supportedDepthResolveModes;
		public VkResolveModeFlags supportedStencilResolveModes;
		public VkBool32 independentResolveNone;
		public VkBool32 independentResolve;
		public VkBool32 filterMinmaxSingleComponentFormats;
		public VkBool32 filterMinmaxImageComponentMapping;
		public uint64 maxTimelineSemaphoreValueDifference;
		public VkSampleCountFlags framebufferIntegerColorSampleCounts;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDriverID(VkDriverId @driverID) mut { driverID = @driverID;  return ref this; }
		public ref Self setDriverName(char8[(int)VulkanNative.VK_MAX_DRIVER_NAME_SIZE] @driverName) mut { driverName = @driverName;  return ref this; }
		public ref Self setDriverInfo(char8[(int)VulkanNative.VK_MAX_DRIVER_INFO_SIZE] @driverInfo) mut { driverInfo = @driverInfo;  return ref this; }
		public ref Self setConformanceVersion(VkConformanceVersion @conformanceVersion) mut { conformanceVersion = @conformanceVersion;  return ref this; }
		public ref Self setDenormBehaviorIndependence(VkShaderFloatControlsIndependence @denormBehaviorIndependence) mut { denormBehaviorIndependence = @denormBehaviorIndependence;  return ref this; }
		public ref Self setRoundingModeIndependence(VkShaderFloatControlsIndependence @roundingModeIndependence) mut { roundingModeIndependence = @roundingModeIndependence;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat16(VkBool32 @shaderSignedZeroInfNanPreserveFloat16) mut { shaderSignedZeroInfNanPreserveFloat16 = @shaderSignedZeroInfNanPreserveFloat16;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat32(VkBool32 @shaderSignedZeroInfNanPreserveFloat32) mut { shaderSignedZeroInfNanPreserveFloat32 = @shaderSignedZeroInfNanPreserveFloat32;  return ref this; }
		public ref Self setShaderSignedZeroInfNanPreserveFloat64(VkBool32 @shaderSignedZeroInfNanPreserveFloat64) mut { shaderSignedZeroInfNanPreserveFloat64 = @shaderSignedZeroInfNanPreserveFloat64;  return ref this; }
		public ref Self setShaderDenormPreserveFloat16(VkBool32 @shaderDenormPreserveFloat16) mut { shaderDenormPreserveFloat16 = @shaderDenormPreserveFloat16;  return ref this; }
		public ref Self setShaderDenormPreserveFloat32(VkBool32 @shaderDenormPreserveFloat32) mut { shaderDenormPreserveFloat32 = @shaderDenormPreserveFloat32;  return ref this; }
		public ref Self setShaderDenormPreserveFloat64(VkBool32 @shaderDenormPreserveFloat64) mut { shaderDenormPreserveFloat64 = @shaderDenormPreserveFloat64;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat16(VkBool32 @shaderDenormFlushToZeroFloat16) mut { shaderDenormFlushToZeroFloat16 = @shaderDenormFlushToZeroFloat16;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat32(VkBool32 @shaderDenormFlushToZeroFloat32) mut { shaderDenormFlushToZeroFloat32 = @shaderDenormFlushToZeroFloat32;  return ref this; }
		public ref Self setShaderDenormFlushToZeroFloat64(VkBool32 @shaderDenormFlushToZeroFloat64) mut { shaderDenormFlushToZeroFloat64 = @shaderDenormFlushToZeroFloat64;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat16(VkBool32 @shaderRoundingModeRTEFloat16) mut { shaderRoundingModeRTEFloat16 = @shaderRoundingModeRTEFloat16;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat32(VkBool32 @shaderRoundingModeRTEFloat32) mut { shaderRoundingModeRTEFloat32 = @shaderRoundingModeRTEFloat32;  return ref this; }
		public ref Self setShaderRoundingModeRTEFloat64(VkBool32 @shaderRoundingModeRTEFloat64) mut { shaderRoundingModeRTEFloat64 = @shaderRoundingModeRTEFloat64;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat16(VkBool32 @shaderRoundingModeRTZFloat16) mut { shaderRoundingModeRTZFloat16 = @shaderRoundingModeRTZFloat16;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat32(VkBool32 @shaderRoundingModeRTZFloat32) mut { shaderRoundingModeRTZFloat32 = @shaderRoundingModeRTZFloat32;  return ref this; }
		public ref Self setShaderRoundingModeRTZFloat64(VkBool32 @shaderRoundingModeRTZFloat64) mut { shaderRoundingModeRTZFloat64 = @shaderRoundingModeRTZFloat64;  return ref this; }
		public ref Self setMaxUpdateAfterBindDescriptorsInAllPools(uint32 @maxUpdateAfterBindDescriptorsInAllPools) mut { maxUpdateAfterBindDescriptorsInAllPools = @maxUpdateAfterBindDescriptorsInAllPools;  return ref this; }
		public ref Self setShaderUniformBufferArrayNonUniformIndexingNative(VkBool32 @shaderUniformBufferArrayNonUniformIndexingNative) mut { shaderUniformBufferArrayNonUniformIndexingNative = @shaderUniformBufferArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderSampledImageArrayNonUniformIndexingNative(VkBool32 @shaderSampledImageArrayNonUniformIndexingNative) mut { shaderSampledImageArrayNonUniformIndexingNative = @shaderSampledImageArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderStorageBufferArrayNonUniformIndexingNative(VkBool32 @shaderStorageBufferArrayNonUniformIndexingNative) mut { shaderStorageBufferArrayNonUniformIndexingNative = @shaderStorageBufferArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderStorageImageArrayNonUniformIndexingNative(VkBool32 @shaderStorageImageArrayNonUniformIndexingNative) mut { shaderStorageImageArrayNonUniformIndexingNative = @shaderStorageImageArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setShaderInputAttachmentArrayNonUniformIndexingNative(VkBool32 @shaderInputAttachmentArrayNonUniformIndexingNative) mut { shaderInputAttachmentArrayNonUniformIndexingNative = @shaderInputAttachmentArrayNonUniformIndexingNative;  return ref this; }
		public ref Self setRobustBufferAccessUpdateAfterBind(VkBool32 @robustBufferAccessUpdateAfterBind) mut { robustBufferAccessUpdateAfterBind = @robustBufferAccessUpdateAfterBind;  return ref this; }
		public ref Self setQuadDivergentImplicitLod(VkBool32 @quadDivergentImplicitLod) mut { quadDivergentImplicitLod = @quadDivergentImplicitLod;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindSamplers(uint32 @maxPerStageDescriptorUpdateAfterBindSamplers) mut { maxPerStageDescriptorUpdateAfterBindSamplers = @maxPerStageDescriptorUpdateAfterBindSamplers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(uint32 @maxPerStageDescriptorUpdateAfterBindUniformBuffers) mut { maxPerStageDescriptorUpdateAfterBindUniformBuffers = @maxPerStageDescriptorUpdateAfterBindUniformBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(uint32 @maxPerStageDescriptorUpdateAfterBindStorageBuffers) mut { maxPerStageDescriptorUpdateAfterBindStorageBuffers = @maxPerStageDescriptorUpdateAfterBindStorageBuffers;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindSampledImages(uint32 @maxPerStageDescriptorUpdateAfterBindSampledImages) mut { maxPerStageDescriptorUpdateAfterBindSampledImages = @maxPerStageDescriptorUpdateAfterBindSampledImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindStorageImages(uint32 @maxPerStageDescriptorUpdateAfterBindStorageImages) mut { maxPerStageDescriptorUpdateAfterBindStorageImages = @maxPerStageDescriptorUpdateAfterBindStorageImages;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindInputAttachments(uint32 @maxPerStageDescriptorUpdateAfterBindInputAttachments) mut { maxPerStageDescriptorUpdateAfterBindInputAttachments = @maxPerStageDescriptorUpdateAfterBindInputAttachments;  return ref this; }
		public ref Self setMaxPerStageUpdateAfterBindResources(uint32 @maxPerStageUpdateAfterBindResources) mut { maxPerStageUpdateAfterBindResources = @maxPerStageUpdateAfterBindResources;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindSamplers(uint32 @maxDescriptorSetUpdateAfterBindSamplers) mut { maxDescriptorSetUpdateAfterBindSamplers = @maxDescriptorSetUpdateAfterBindSamplers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindUniformBuffers(uint32 @maxDescriptorSetUpdateAfterBindUniformBuffers) mut { maxDescriptorSetUpdateAfterBindUniformBuffers = @maxDescriptorSetUpdateAfterBindUniformBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(uint32 @maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) mut { maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = @maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageBuffers(uint32 @maxDescriptorSetUpdateAfterBindStorageBuffers) mut { maxDescriptorSetUpdateAfterBindStorageBuffers = @maxDescriptorSetUpdateAfterBindStorageBuffers;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(uint32 @maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) mut { maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = @maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindSampledImages(uint32 @maxDescriptorSetUpdateAfterBindSampledImages) mut { maxDescriptorSetUpdateAfterBindSampledImages = @maxDescriptorSetUpdateAfterBindSampledImages;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindStorageImages(uint32 @maxDescriptorSetUpdateAfterBindStorageImages) mut { maxDescriptorSetUpdateAfterBindStorageImages = @maxDescriptorSetUpdateAfterBindStorageImages;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindInputAttachments(uint32 @maxDescriptorSetUpdateAfterBindInputAttachments) mut { maxDescriptorSetUpdateAfterBindInputAttachments = @maxDescriptorSetUpdateAfterBindInputAttachments;  return ref this; }
		public ref Self setSupportedDepthResolveModes(VkResolveModeFlags @supportedDepthResolveModes) mut { supportedDepthResolveModes = @supportedDepthResolveModes;  return ref this; }
		public ref Self setSupportedStencilResolveModes(VkResolveModeFlags @supportedStencilResolveModes) mut { supportedStencilResolveModes = @supportedStencilResolveModes;  return ref this; }
		public ref Self setIndependentResolveNone(VkBool32 @independentResolveNone) mut { independentResolveNone = @independentResolveNone;  return ref this; }
		public ref Self setIndependentResolve(VkBool32 @independentResolve) mut { independentResolve = @independentResolve;  return ref this; }
		public ref Self setFilterMinmaxSingleComponentFormats(VkBool32 @filterMinmaxSingleComponentFormats) mut { filterMinmaxSingleComponentFormats = @filterMinmaxSingleComponentFormats;  return ref this; }
		public ref Self setFilterMinmaxImageComponentMapping(VkBool32 @filterMinmaxImageComponentMapping) mut { filterMinmaxImageComponentMapping = @filterMinmaxImageComponentMapping;  return ref this; }
		public ref Self setMaxTimelineSemaphoreValueDifference(uint64 @maxTimelineSemaphoreValueDifference) mut { maxTimelineSemaphoreValueDifference = @maxTimelineSemaphoreValueDifference;  return ref this; }
		public ref Self setFramebufferIntegerColorSampleCounts(VkSampleCountFlags @framebufferIntegerColorSampleCounts) mut { framebufferIntegerColorSampleCounts = @framebufferIntegerColorSampleCounts;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan13Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES;
		public void* pNext = null;
		public VkBool32 robustImageAccess;
		public VkBool32 inlineUniformBlock;
		public VkBool32 descriptorBindingInlineUniformBlockUpdateAfterBind;
		public VkBool32 pipelineCreationCacheControl;
		public VkBool32 privateData;
		public VkBool32 shaderDemoteToHelperInvocation;
		public VkBool32 shaderTerminateInvocation;
		public VkBool32 subgroupSizeControl;
		public VkBool32 computeFullSubgroups;
		public VkBool32 synchronization2;
		public VkBool32 textureCompressionASTC_HDR;
		public VkBool32 shaderZeroInitializeWorkgroupMemory;
		public VkBool32 dynamicRendering;
		public VkBool32 shaderIntegerDotProduct;
		public VkBool32 maintenance4;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRobustImageAccess(VkBool32 @robustImageAccess) mut { robustImageAccess = @robustImageAccess;  return ref this; }
		public ref Self setInlineUniformBlock(VkBool32 @inlineUniformBlock) mut { inlineUniformBlock = @inlineUniformBlock;  return ref this; }
		public ref Self setDescriptorBindingInlineUniformBlockUpdateAfterBind(VkBool32 @descriptorBindingInlineUniformBlockUpdateAfterBind) mut { descriptorBindingInlineUniformBlockUpdateAfterBind = @descriptorBindingInlineUniformBlockUpdateAfterBind;  return ref this; }
		public ref Self setPipelineCreationCacheControl(VkBool32 @pipelineCreationCacheControl) mut { pipelineCreationCacheControl = @pipelineCreationCacheControl;  return ref this; }
		public ref Self setPrivateData(VkBool32 @privateData) mut { privateData = @privateData;  return ref this; }
		public ref Self setShaderDemoteToHelperInvocation(VkBool32 @shaderDemoteToHelperInvocation) mut { shaderDemoteToHelperInvocation = @shaderDemoteToHelperInvocation;  return ref this; }
		public ref Self setShaderTerminateInvocation(VkBool32 @shaderTerminateInvocation) mut { shaderTerminateInvocation = @shaderTerminateInvocation;  return ref this; }
		public ref Self setSubgroupSizeControl(VkBool32 @subgroupSizeControl) mut { subgroupSizeControl = @subgroupSizeControl;  return ref this; }
		public ref Self setComputeFullSubgroups(VkBool32 @computeFullSubgroups) mut { computeFullSubgroups = @computeFullSubgroups;  return ref this; }
		public ref Self setSynchronization2(VkBool32 @synchronization2) mut { synchronization2 = @synchronization2;  return ref this; }
		public ref Self setTextureCompressionASTC_HDR(VkBool32 @textureCompressionASTC_HDR) mut { textureCompressionASTC_HDR = @textureCompressionASTC_HDR;  return ref this; }
		public ref Self setShaderZeroInitializeWorkgroupMemory(VkBool32 @shaderZeroInitializeWorkgroupMemory) mut { shaderZeroInitializeWorkgroupMemory = @shaderZeroInitializeWorkgroupMemory;  return ref this; }
		public ref Self setDynamicRendering(VkBool32 @dynamicRendering) mut { dynamicRendering = @dynamicRendering;  return ref this; }
		public ref Self setShaderIntegerDotProduct(VkBool32 @shaderIntegerDotProduct) mut { shaderIntegerDotProduct = @shaderIntegerDotProduct;  return ref this; }
		public ref Self setMaintenance4(VkBool32 @maintenance4) mut { maintenance4 = @maintenance4;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVulkan13Properties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES;
		public void* pNext = null;
		public uint32 minSubgroupSize;
		public uint32 maxSubgroupSize;
		public uint32 maxComputeWorkgroupSubgroups;
		public VkShaderStageFlags requiredSubgroupSizeStages;
		public uint32 maxInlineUniformBlockSize;
		public uint32 maxPerStageDescriptorInlineUniformBlocks;
		public uint32 maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
		public uint32 maxDescriptorSetInlineUniformBlocks;
		public uint32 maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
		public uint32 maxInlineUniformTotalSize;
		public VkBool32 integerDotProduct8BitUnsignedAccelerated;
		public VkBool32 integerDotProduct8BitSignedAccelerated;
		public VkBool32 integerDotProduct8BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedUnsignedAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedSignedAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated;
		public VkBool32 integerDotProduct16BitUnsignedAccelerated;
		public VkBool32 integerDotProduct16BitSignedAccelerated;
		public VkBool32 integerDotProduct16BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct32BitUnsignedAccelerated;
		public VkBool32 integerDotProduct32BitSignedAccelerated;
		public VkBool32 integerDotProduct32BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct64BitUnsignedAccelerated;
		public VkBool32 integerDotProduct64BitSignedAccelerated;
		public VkBool32 integerDotProduct64BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
		public uint64 storageTexelBufferOffsetAlignmentBytes;
		public VkBool32 storageTexelBufferOffsetSingleTexelAlignment;
		public uint64 uniformTexelBufferOffsetAlignmentBytes;
		public VkBool32 uniformTexelBufferOffsetSingleTexelAlignment;
		public uint64 maxBufferSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinSubgroupSize(uint32 @minSubgroupSize) mut { minSubgroupSize = @minSubgroupSize;  return ref this; }
		public ref Self setMaxSubgroupSize(uint32 @maxSubgroupSize) mut { maxSubgroupSize = @maxSubgroupSize;  return ref this; }
		public ref Self setMaxComputeWorkgroupSubgroups(uint32 @maxComputeWorkgroupSubgroups) mut { maxComputeWorkgroupSubgroups = @maxComputeWorkgroupSubgroups;  return ref this; }
		public ref Self setRequiredSubgroupSizeStages(VkShaderStageFlags @requiredSubgroupSizeStages) mut { requiredSubgroupSizeStages = @requiredSubgroupSizeStages;  return ref this; }
		public ref Self setMaxInlineUniformBlockSize(uint32 @maxInlineUniformBlockSize) mut { maxInlineUniformBlockSize = @maxInlineUniformBlockSize;  return ref this; }
		public ref Self setMaxPerStageDescriptorInlineUniformBlocks(uint32 @maxPerStageDescriptorInlineUniformBlocks) mut { maxPerStageDescriptorInlineUniformBlocks = @maxPerStageDescriptorInlineUniformBlocks;  return ref this; }
		public ref Self setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(uint32 @maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) mut { maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = @maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;  return ref this; }
		public ref Self setMaxDescriptorSetInlineUniformBlocks(uint32 @maxDescriptorSetInlineUniformBlocks) mut { maxDescriptorSetInlineUniformBlocks = @maxDescriptorSetInlineUniformBlocks;  return ref this; }
		public ref Self setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(uint32 @maxDescriptorSetUpdateAfterBindInlineUniformBlocks) mut { maxDescriptorSetUpdateAfterBindInlineUniformBlocks = @maxDescriptorSetUpdateAfterBindInlineUniformBlocks;  return ref this; }
		public ref Self setMaxInlineUniformTotalSize(uint32 @maxInlineUniformTotalSize) mut { maxInlineUniformTotalSize = @maxInlineUniformTotalSize;  return ref this; }
		public ref Self setIntegerDotProduct8BitUnsignedAccelerated(VkBool32 @integerDotProduct8BitUnsignedAccelerated) mut { integerDotProduct8BitUnsignedAccelerated = @integerDotProduct8BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct8BitSignedAccelerated(VkBool32 @integerDotProduct8BitSignedAccelerated) mut { integerDotProduct8BitSignedAccelerated = @integerDotProduct8BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct8BitMixedSignednessAccelerated(VkBool32 @integerDotProduct8BitMixedSignednessAccelerated) mut { integerDotProduct8BitMixedSignednessAccelerated = @integerDotProduct8BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedUnsignedAccelerated(VkBool32 @integerDotProduct4x8BitPackedUnsignedAccelerated) mut { integerDotProduct4x8BitPackedUnsignedAccelerated = @integerDotProduct4x8BitPackedUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedSignedAccelerated(VkBool32 @integerDotProduct4x8BitPackedSignedAccelerated) mut { integerDotProduct4x8BitPackedSignedAccelerated = @integerDotProduct4x8BitPackedSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(VkBool32 @integerDotProduct4x8BitPackedMixedSignednessAccelerated) mut { integerDotProduct4x8BitPackedMixedSignednessAccelerated = @integerDotProduct4x8BitPackedMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitUnsignedAccelerated(VkBool32 @integerDotProduct16BitUnsignedAccelerated) mut { integerDotProduct16BitUnsignedAccelerated = @integerDotProduct16BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitSignedAccelerated(VkBool32 @integerDotProduct16BitSignedAccelerated) mut { integerDotProduct16BitSignedAccelerated = @integerDotProduct16BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitMixedSignednessAccelerated(VkBool32 @integerDotProduct16BitMixedSignednessAccelerated) mut { integerDotProduct16BitMixedSignednessAccelerated = @integerDotProduct16BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitUnsignedAccelerated(VkBool32 @integerDotProduct32BitUnsignedAccelerated) mut { integerDotProduct32BitUnsignedAccelerated = @integerDotProduct32BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitSignedAccelerated(VkBool32 @integerDotProduct32BitSignedAccelerated) mut { integerDotProduct32BitSignedAccelerated = @integerDotProduct32BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitMixedSignednessAccelerated(VkBool32 @integerDotProduct32BitMixedSignednessAccelerated) mut { integerDotProduct32BitMixedSignednessAccelerated = @integerDotProduct32BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitUnsignedAccelerated(VkBool32 @integerDotProduct64BitUnsignedAccelerated) mut { integerDotProduct64BitUnsignedAccelerated = @integerDotProduct64BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitSignedAccelerated(VkBool32 @integerDotProduct64BitSignedAccelerated) mut { integerDotProduct64BitSignedAccelerated = @integerDotProduct64BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitMixedSignednessAccelerated(VkBool32 @integerDotProduct64BitMixedSignednessAccelerated) mut { integerDotProduct64BitMixedSignednessAccelerated = @integerDotProduct64BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating8BitSignedAccelerated = @integerDotProductAccumulatingSaturating8BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating16BitSignedAccelerated = @integerDotProductAccumulatingSaturating16BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating32BitSignedAccelerated = @integerDotProductAccumulatingSaturating32BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating64BitSignedAccelerated = @integerDotProductAccumulatingSaturating64BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setStorageTexelBufferOffsetAlignmentBytes(uint64 @storageTexelBufferOffsetAlignmentBytes) mut { storageTexelBufferOffsetAlignmentBytes = @storageTexelBufferOffsetAlignmentBytes;  return ref this; }
		public ref Self setStorageTexelBufferOffsetSingleTexelAlignment(VkBool32 @storageTexelBufferOffsetSingleTexelAlignment) mut { storageTexelBufferOffsetSingleTexelAlignment = @storageTexelBufferOffsetSingleTexelAlignment;  return ref this; }
		public ref Self setUniformTexelBufferOffsetAlignmentBytes(uint64 @uniformTexelBufferOffsetAlignmentBytes) mut { uniformTexelBufferOffsetAlignmentBytes = @uniformTexelBufferOffsetAlignmentBytes;  return ref this; }
		public ref Self setUniformTexelBufferOffsetSingleTexelAlignment(VkBool32 @uniformTexelBufferOffsetSingleTexelAlignment) mut { uniformTexelBufferOffsetSingleTexelAlignment = @uniformTexelBufferOffsetSingleTexelAlignment;  return ref this; }
		public ref Self setMaxBufferSize(uint64 @maxBufferSize) mut { maxBufferSize = @maxBufferSize;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineCompilerControlCreateInfoAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD;
		public void* pNext = null;
		public VkPipelineCompilerControlFlagsAMD compilerControlFlags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCompilerControlFlags(VkPipelineCompilerControlFlagsAMD @compilerControlFlags) mut { compilerControlFlags = @compilerControlFlags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCoherentMemoryFeaturesAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD;
		public void* pNext = null;
		public VkBool32 deviceCoherentMemory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDeviceCoherentMemory(VkBool32 @deviceCoherentMemory) mut { deviceCoherentMemory = @deviceCoherentMemory;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceToolProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES;
		public void* pNext = null;
		public char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] name;
		public char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] version;
		public VkToolPurposeFlags purposes;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;
		public char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] layer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setName(char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] @name) mut { name = @name;  return ref this; }
		public ref Self setVersion(char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] @version) mut { version = @version;  return ref this; }
		public ref Self setPurposes(VkToolPurposeFlags @purposes) mut { purposes = @purposes;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
		public ref Self setLayer(char8[(int)VulkanNative.VK_MAX_EXTENSION_NAME_SIZE] @layer) mut { layer = @layer;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerCustomBorderColorCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkClearColorValue customBorderColor;
		public VkFormat format;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCustomBorderColor(VkClearColorValue @customBorderColor) mut { customBorderColor = @customBorderColor;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCustomBorderColorPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT;
		public void* pNext = null;
		public uint32 maxCustomBorderColorSamplers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxCustomBorderColorSamplers(uint32 @maxCustomBorderColorSamplers) mut { maxCustomBorderColorSamplers = @maxCustomBorderColorSamplers;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceCustomBorderColorFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 customBorderColors;
		public VkBool32 customBorderColorWithoutFormat;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCustomBorderColors(VkBool32 @customBorderColors) mut { customBorderColors = @customBorderColors;  return ref this; }
		public ref Self setCustomBorderColorWithoutFormat(VkBool32 @customBorderColorWithoutFormat) mut { customBorderColorWithoutFormat = @customBorderColorWithoutFormat;  return ref this; }
	}

	[CRepr]
	public struct VkSamplerBorderColorComponentMappingCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkComponentMapping components;
		public VkBool32 srgb;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setComponents(VkComponentMapping @components) mut { components = @components;  return ref this; }
		public ref Self setSrgb(VkBool32 @srgb) mut { srgb = @srgb;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceBorderColorSwizzleFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 borderColorSwizzle;
		public VkBool32 borderColorSwizzleFromImage;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBorderColorSwizzle(VkBool32 @borderColorSwizzle) mut { borderColorSwizzle = @borderColorSwizzle;  return ref this; }
		public ref Self setBorderColorSwizzleFromImage(VkBool32 @borderColorSwizzleFromImage) mut { borderColorSwizzleFromImage = @borderColorSwizzleFromImage;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureGeometryTrianglesDataKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR;
		public void* pNext = null;
		public VkFormat vertexFormat;
		public VkDeviceOrHostAddressConstKHR vertexData;
		public uint64 vertexStride;
		public uint32 maxVertex;
		public VkIndexType indexType;
		public VkDeviceOrHostAddressConstKHR indexData;
		public VkDeviceOrHostAddressConstKHR transformData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexFormat(VkFormat @vertexFormat) mut { vertexFormat = @vertexFormat;  return ref this; }
		public ref Self setVertexData(VkDeviceOrHostAddressConstKHR @vertexData) mut { vertexData = @vertexData;  return ref this; }
		public ref Self setVertexStride(uint64 @vertexStride) mut { vertexStride = @vertexStride;  return ref this; }
		public ref Self setMaxVertex(uint32 @maxVertex) mut { maxVertex = @maxVertex;  return ref this; }
		public ref Self setIndexType(VkIndexType @indexType) mut { indexType = @indexType;  return ref this; }
		public ref Self setIndexData(VkDeviceOrHostAddressConstKHR @indexData) mut { indexData = @indexData;  return ref this; }
		public ref Self setTransformData(VkDeviceOrHostAddressConstKHR @transformData) mut { transformData = @transformData;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureGeometryAabbsDataKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR;
		public void* pNext = null;
		public VkDeviceOrHostAddressConstKHR data;
		public uint64 stride;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setData(VkDeviceOrHostAddressConstKHR @data) mut { data = @data;  return ref this; }
		public ref Self setStride(uint64 @stride) mut { stride = @stride;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureGeometryInstancesDataKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR;
		public void* pNext = null;
		public VkBool32 arrayOfPointers;
		public VkDeviceOrHostAddressConstKHR data;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setArrayOfPointers(VkBool32 @arrayOfPointers) mut { arrayOfPointers = @arrayOfPointers;  return ref this; }
		public ref Self setData(VkDeviceOrHostAddressConstKHR @data) mut { data = @data;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureGeometryKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR;
		public void* pNext = null;
		public VkGeometryTypeKHR geometryType;
		public VkAccelerationStructureGeometryDataKHR geometry;
		public VkGeometryFlagsKHR flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGeometryType(VkGeometryTypeKHR @geometryType) mut { geometryType = @geometryType;  return ref this; }
		public ref Self setGeometry(VkAccelerationStructureGeometryDataKHR @geometry) mut { geometry = @geometry;  return ref this; }
		public ref Self setFlags(VkGeometryFlagsKHR @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureBuildGeometryInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR;
		public void* pNext = null;
		public VkAccelerationStructureTypeKHR type;
		public VkBuildAccelerationStructureFlagsKHR flags;
		public VkBuildAccelerationStructureModeKHR mode;
		public VkAccelerationStructureKHR srcAccelerationStructure;
		public VkAccelerationStructureKHR dstAccelerationStructure;
		public uint32 geometryCount;
		public VkAccelerationStructureGeometryKHR* pGeometries;
		public VkAccelerationStructureGeometryKHR** ppGeometries;
		public VkDeviceOrHostAddressKHR scratchData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setType(VkAccelerationStructureTypeKHR @type) mut { type = @type;  return ref this; }
		public ref Self setFlags(VkBuildAccelerationStructureFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setMode(VkBuildAccelerationStructureModeKHR @mode) mut { mode = @mode;  return ref this; }
		public ref Self setSrcAccelerationStructure(VkAccelerationStructureKHR @srcAccelerationStructure) mut { srcAccelerationStructure = @srcAccelerationStructure;  return ref this; }
		public ref Self setDstAccelerationStructure(VkAccelerationStructureKHR @dstAccelerationStructure) mut { dstAccelerationStructure = @dstAccelerationStructure;  return ref this; }
		public ref Self setGeometryCount(uint32 @geometryCount) mut { geometryCount = @geometryCount;  return ref this; }
		public ref Self setPGeometries(VkAccelerationStructureGeometryKHR* @pGeometries) mut { pGeometries = @pGeometries;  return ref this; }
		public ref Self setPpGeometries(VkAccelerationStructureGeometryKHR** @ppGeometries) mut { ppGeometries = @ppGeometries;  return ref this; }
		public ref Self setScratchData(VkDeviceOrHostAddressKHR @scratchData) mut { scratchData = @scratchData;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureBuildRangeInfoKHR
	{
		public uint32 primitiveCount;
		public uint32 primitiveOffset;
		public uint32 firstVertex;
		public uint32 transformOffset;

		public ref Self setPrimitiveCount(uint32 @primitiveCount) mut { primitiveCount = @primitiveCount;  return ref this; }
		public ref Self setPrimitiveOffset(uint32 @primitiveOffset) mut { primitiveOffset = @primitiveOffset;  return ref this; }
		public ref Self setFirstVertex(uint32 @firstVertex) mut { firstVertex = @firstVertex;  return ref this; }
		public ref Self setTransformOffset(uint32 @transformOffset) mut { transformOffset = @transformOffset;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkAccelerationStructureCreateFlagsKHR createFlags;
		public VkBuffer buffer;
		public uint64 offset;
		public uint64 size;
		public VkAccelerationStructureTypeKHR type;
		public uint64 deviceAddress;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCreateFlags(VkAccelerationStructureCreateFlagsKHR @createFlags) mut { createFlags = @createFlags;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
		public ref Self setType(VkAccelerationStructureTypeKHR @type) mut { type = @type;  return ref this; }
		public ref Self setDeviceAddress(uint64 @deviceAddress) mut { deviceAddress = @deviceAddress;  return ref this; }
	}

	[CRepr]
	public struct VkAabbPositionsKHR
	{
		public float minX;
		public float minY;
		public float minZ;
		public float maxX;
		public float maxY;
		public float maxZ;

		public ref Self setMinX(float @minX) mut { minX = @minX;  return ref this; }
		public ref Self setMinY(float @minY) mut { minY = @minY;  return ref this; }
		public ref Self setMinZ(float @minZ) mut { minZ = @minZ;  return ref this; }
		public ref Self setMaxX(float @maxX) mut { maxX = @maxX;  return ref this; }
		public ref Self setMaxY(float @maxY) mut { maxY = @maxY;  return ref this; }
		public ref Self setMaxZ(float @maxZ) mut { maxZ = @maxZ;  return ref this; }
	}

	[CRepr]
	public struct VkTransformMatrixKHR
	{
		public float[12] matrix;

		public ref Self setMatrix(float[12] @matrix) mut { matrix = @matrix;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureInstanceKHR
	{
		public VkTransformMatrixKHR transform;
		public uint32 instanceCustomIndex;
		public uint32 mask;
		public uint32 instanceShaderBindingTableRecordOffset;
		public VkGeometryInstanceFlagsKHR flags;
		public uint64 accelerationStructureReference;

		public ref Self setTransform(VkTransformMatrixKHR @transform) mut { transform = @transform;  return ref this; }
		public ref Self setInstanceCustomIndex(uint32 @instanceCustomIndex) mut { instanceCustomIndex = @instanceCustomIndex;  return ref this; }
		public ref Self setMask(uint32 @mask) mut { mask = @mask;  return ref this; }
		public ref Self setInstanceShaderBindingTableRecordOffset(uint32 @instanceShaderBindingTableRecordOffset) mut { instanceShaderBindingTableRecordOffset = @instanceShaderBindingTableRecordOffset;  return ref this; }
		public ref Self setFlags(VkGeometryInstanceFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setAccelerationStructureReference(uint64 @accelerationStructureReference) mut { accelerationStructureReference = @accelerationStructureReference;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureDeviceAddressInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR;
		public void* pNext = null;
		public VkAccelerationStructureKHR accelerationStructure;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructure(VkAccelerationStructureKHR @accelerationStructure) mut { accelerationStructure = @accelerationStructure;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureVersionInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR;
		public void* pNext = null;
		public uint8* pVersionData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPVersionData(uint8* @pVersionData) mut { pVersionData = @pVersionData;  return ref this; }
	}

	[CRepr]
	public struct VkCopyAccelerationStructureInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR;
		public void* pNext = null;
		public VkAccelerationStructureKHR src;
		public VkAccelerationStructureKHR dst;
		public VkCopyAccelerationStructureModeKHR mode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrc(VkAccelerationStructureKHR @src) mut { src = @src;  return ref this; }
		public ref Self setDst(VkAccelerationStructureKHR @dst) mut { dst = @dst;  return ref this; }
		public ref Self setMode(VkCopyAccelerationStructureModeKHR @mode) mut { mode = @mode;  return ref this; }
	}

	[CRepr]
	public struct VkCopyAccelerationStructureToMemoryInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR;
		public void* pNext = null;
		public VkAccelerationStructureKHR src;
		public VkDeviceOrHostAddressKHR dst;
		public VkCopyAccelerationStructureModeKHR mode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrc(VkAccelerationStructureKHR @src) mut { src = @src;  return ref this; }
		public ref Self setDst(VkDeviceOrHostAddressKHR @dst) mut { dst = @dst;  return ref this; }
		public ref Self setMode(VkCopyAccelerationStructureModeKHR @mode) mut { mode = @mode;  return ref this; }
	}

	[CRepr]
	public struct VkCopyMemoryToAccelerationStructureInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR;
		public void* pNext = null;
		public VkDeviceOrHostAddressConstKHR src;
		public VkAccelerationStructureKHR dst;
		public VkCopyAccelerationStructureModeKHR mode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrc(VkDeviceOrHostAddressConstKHR @src) mut { src = @src;  return ref this; }
		public ref Self setDst(VkAccelerationStructureKHR @dst) mut { dst = @dst;  return ref this; }
		public ref Self setMode(VkCopyAccelerationStructureModeKHR @mode) mut { mode = @mode;  return ref this; }
	}

	[CRepr]
	public struct VkRayTracingPipelineInterfaceCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 maxPipelineRayPayloadSize;
		public uint32 maxPipelineRayHitAttributeSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxPipelineRayPayloadSize(uint32 @maxPipelineRayPayloadSize) mut { maxPipelineRayPayloadSize = @maxPipelineRayPayloadSize;  return ref this; }
		public ref Self setMaxPipelineRayHitAttributeSize(uint32 @maxPipelineRayHitAttributeSize) mut { maxPipelineRayHitAttributeSize = @maxPipelineRayHitAttributeSize;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineLibraryCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 libraryCount;
		public VkPipeline* pLibraries;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLibraryCount(uint32 @libraryCount) mut { libraryCount = @libraryCount;  return ref this; }
		public ref Self setPLibraries(VkPipeline* @pLibraries) mut { pLibraries = @pLibraries;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 extendedDynamicState;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExtendedDynamicState(VkBool32 @extendedDynamicState) mut { extendedDynamicState = @extendedDynamicState;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExtendedDynamicState2FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 extendedDynamicState2;
		public VkBool32 extendedDynamicState2LogicOp;
		public VkBool32 extendedDynamicState2PatchControlPoints;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExtendedDynamicState2(VkBool32 @extendedDynamicState2) mut { extendedDynamicState2 = @extendedDynamicState2;  return ref this; }
		public ref Self setExtendedDynamicState2LogicOp(VkBool32 @extendedDynamicState2LogicOp) mut { extendedDynamicState2LogicOp = @extendedDynamicState2LogicOp;  return ref this; }
		public ref Self setExtendedDynamicState2PatchControlPoints(VkBool32 @extendedDynamicState2PatchControlPoints) mut { extendedDynamicState2PatchControlPoints = @extendedDynamicState2PatchControlPoints;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassTransformBeginInfoQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM;
		public void* pNext = null;
		public VkSurfaceTransformFlagsKHR transform;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTransform(VkSurfaceTransformFlagsKHR @transform) mut { transform = @transform;  return ref this; }
	}

	[CRepr]
	public struct VkCopyCommandTransformInfoQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_COMMAND_TRANSFORM_INFO_QCOM;
		public void* pNext = null;
		public VkSurfaceTransformFlagsKHR transform;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTransform(VkSurfaceTransformFlagsKHR @transform) mut { transform = @transform;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM;
		public void* pNext = null;
		public VkSurfaceTransformFlagsKHR transform;
		public VkRect2D renderArea;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTransform(VkSurfaceTransformFlagsKHR @transform) mut { transform = @transform;  return ref this; }
		public ref Self setRenderArea(VkRect2D @renderArea) mut { renderArea = @renderArea;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDiagnosticsConfigFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 diagnosticsConfig;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDiagnosticsConfig(VkBool32 @diagnosticsConfig) mut { diagnosticsConfig = @diagnosticsConfig;  return ref this; }
	}

	[CRepr]
	public struct VkDeviceDiagnosticsConfigCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV;
		public void* pNext = null;
		public VkDeviceDiagnosticsConfigFlagsNV flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkDeviceDiagnosticsConfigFlagsNV @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderZeroInitializeWorkgroupMemory;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderZeroInitializeWorkgroupMemory(VkBool32 @shaderZeroInitializeWorkgroupMemory) mut { shaderZeroInitializeWorkgroupMemory = @shaderZeroInitializeWorkgroupMemory;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 shaderSubgroupUniformControlFlow;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderSubgroupUniformControlFlow(VkBool32 @shaderSubgroupUniformControlFlow) mut { shaderSubgroupUniformControlFlow = @shaderSubgroupUniformControlFlow;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRobustness2FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 robustBufferAccess2;
		public VkBool32 robustImageAccess2;
		public VkBool32 nullDescriptor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRobustBufferAccess2(VkBool32 @robustBufferAccess2) mut { robustBufferAccess2 = @robustBufferAccess2;  return ref this; }
		public ref Self setRobustImageAccess2(VkBool32 @robustImageAccess2) mut { robustImageAccess2 = @robustImageAccess2;  return ref this; }
		public ref Self setNullDescriptor(VkBool32 @nullDescriptor) mut { nullDescriptor = @nullDescriptor;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRobustness2PropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT;
		public void* pNext = null;
		public uint64 robustStorageBufferAccessSizeAlignment;
		public uint64 robustUniformBufferAccessSizeAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRobustStorageBufferAccessSizeAlignment(uint64 @robustStorageBufferAccessSizeAlignment) mut { robustStorageBufferAccessSizeAlignment = @robustStorageBufferAccessSizeAlignment;  return ref this; }
		public ref Self setRobustUniformBufferAccessSizeAlignment(uint64 @robustUniformBufferAccessSizeAlignment) mut { robustUniformBufferAccessSizeAlignment = @robustUniformBufferAccessSizeAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageRobustnessFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES;
		public void* pNext = null;
		public VkBool32 robustImageAccess;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRobustImageAccess(VkBool32 @robustImageAccess) mut { robustImageAccess = @robustImageAccess;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 workgroupMemoryExplicitLayout;
		public VkBool32 workgroupMemoryExplicitLayoutScalarBlockLayout;
		public VkBool32 workgroupMemoryExplicitLayout8BitAccess;
		public VkBool32 workgroupMemoryExplicitLayout16BitAccess;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setWorkgroupMemoryExplicitLayout(VkBool32 @workgroupMemoryExplicitLayout) mut { workgroupMemoryExplicitLayout = @workgroupMemoryExplicitLayout;  return ref this; }
		public ref Self setWorkgroupMemoryExplicitLayoutScalarBlockLayout(VkBool32 @workgroupMemoryExplicitLayoutScalarBlockLayout) mut { workgroupMemoryExplicitLayoutScalarBlockLayout = @workgroupMemoryExplicitLayoutScalarBlockLayout;  return ref this; }
		public ref Self setWorkgroupMemoryExplicitLayout8BitAccess(VkBool32 @workgroupMemoryExplicitLayout8BitAccess) mut { workgroupMemoryExplicitLayout8BitAccess = @workgroupMemoryExplicitLayout8BitAccess;  return ref this; }
		public ref Self setWorkgroupMemoryExplicitLayout16BitAccess(VkBool32 @workgroupMemoryExplicitLayout16BitAccess) mut { workgroupMemoryExplicitLayout16BitAccess = @workgroupMemoryExplicitLayout16BitAccess;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePortabilitySubsetFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 constantAlphaColorBlendFactors;
		public VkBool32 events;
		public VkBool32 imageViewFormatReinterpretation;
		public VkBool32 imageViewFormatSwizzle;
		public VkBool32 imageView2DOn3DImage;
		public VkBool32 multisampleArrayImage;
		public VkBool32 mutableComparisonSamplers;
		public VkBool32 pointPolygons;
		public VkBool32 samplerMipLodBias;
		public VkBool32 separateStencilMaskRef;
		public VkBool32 shaderSampleRateInterpolationFunctions;
		public VkBool32 tessellationIsolines;
		public VkBool32 tessellationPointMode;
		public VkBool32 triangleFans;
		public VkBool32 vertexAttributeAccessBeyondStride;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setConstantAlphaColorBlendFactors(VkBool32 @constantAlphaColorBlendFactors) mut { constantAlphaColorBlendFactors = @constantAlphaColorBlendFactors;  return ref this; }
		public ref Self setEvents(VkBool32 @events) mut { events = @events;  return ref this; }
		public ref Self setImageViewFormatReinterpretation(VkBool32 @imageViewFormatReinterpretation) mut { imageViewFormatReinterpretation = @imageViewFormatReinterpretation;  return ref this; }
		public ref Self setImageViewFormatSwizzle(VkBool32 @imageViewFormatSwizzle) mut { imageViewFormatSwizzle = @imageViewFormatSwizzle;  return ref this; }
		public ref Self setImageView2DOn3DImage(VkBool32 @imageView2DOn3DImage) mut { imageView2DOn3DImage = @imageView2DOn3DImage;  return ref this; }
		public ref Self setMultisampleArrayImage(VkBool32 @multisampleArrayImage) mut { multisampleArrayImage = @multisampleArrayImage;  return ref this; }
		public ref Self setMutableComparisonSamplers(VkBool32 @mutableComparisonSamplers) mut { mutableComparisonSamplers = @mutableComparisonSamplers;  return ref this; }
		public ref Self setPointPolygons(VkBool32 @pointPolygons) mut { pointPolygons = @pointPolygons;  return ref this; }
		public ref Self setSamplerMipLodBias(VkBool32 @samplerMipLodBias) mut { samplerMipLodBias = @samplerMipLodBias;  return ref this; }
		public ref Self setSeparateStencilMaskRef(VkBool32 @separateStencilMaskRef) mut { separateStencilMaskRef = @separateStencilMaskRef;  return ref this; }
		public ref Self setShaderSampleRateInterpolationFunctions(VkBool32 @shaderSampleRateInterpolationFunctions) mut { shaderSampleRateInterpolationFunctions = @shaderSampleRateInterpolationFunctions;  return ref this; }
		public ref Self setTessellationIsolines(VkBool32 @tessellationIsolines) mut { tessellationIsolines = @tessellationIsolines;  return ref this; }
		public ref Self setTessellationPointMode(VkBool32 @tessellationPointMode) mut { tessellationPointMode = @tessellationPointMode;  return ref this; }
		public ref Self setTriangleFans(VkBool32 @triangleFans) mut { triangleFans = @triangleFans;  return ref this; }
		public ref Self setVertexAttributeAccessBeyondStride(VkBool32 @vertexAttributeAccessBeyondStride) mut { vertexAttributeAccessBeyondStride = @vertexAttributeAccessBeyondStride;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePortabilitySubsetPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 minVertexInputBindingStrideAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinVertexInputBindingStrideAlignment(uint32 @minVertexInputBindingStrideAlignment) mut { minVertexInputBindingStrideAlignment = @minVertexInputBindingStrideAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevice4444FormatsFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 formatA4R4G4B4;
		public VkBool32 formatA4B4G4R4;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormatA4R4G4B4(VkBool32 @formatA4R4G4B4) mut { formatA4R4G4B4 = @formatA4R4G4B4;  return ref this; }
		public ref Self setFormatA4B4G4R4(VkBool32 @formatA4B4G4R4) mut { formatA4B4G4R4 = @formatA4B4G4R4;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI;
		public void* pNext = null;
		public VkBool32 subpassShading;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubpassShading(VkBool32 @subpassShading) mut { subpassShading = @subpassShading;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCopy2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COPY_2;
		public void* pNext = null;
		public uint64 srcOffset;
		public uint64 dstOffset;
		public uint64 size;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcOffset(uint64 @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstOffset(uint64 @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkImageCopy2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_COPY_2;
		public void* pNext = null;
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D srcOffset;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D dstOffset;
		public VkExtent3D extent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffset(VkOffset3D @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffset(VkOffset3D @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
	}

	[CRepr]
	public struct VkImageBlit2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_BLIT_2;
		public void* pNext = null;
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D[2] srcOffsets;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D[2] dstOffsets;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffsets(VkOffset3D[2] @srcOffsets) mut { srcOffsets = @srcOffsets;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffsets(VkOffset3D[2] @dstOffsets) mut { dstOffsets = @dstOffsets;  return ref this; }
	}

	[CRepr]
	public struct VkBufferImageCopy2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2;
		public void* pNext = null;
		public uint64 bufferOffset;
		public uint32 bufferRowLength;
		public uint32 bufferImageHeight;
		public VkImageSubresourceLayers imageSubresource;
		public VkOffset3D imageOffset;
		public VkExtent3D imageExtent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBufferOffset(uint64 @bufferOffset) mut { bufferOffset = @bufferOffset;  return ref this; }
		public ref Self setBufferRowLength(uint32 @bufferRowLength) mut { bufferRowLength = @bufferRowLength;  return ref this; }
		public ref Self setBufferImageHeight(uint32 @bufferImageHeight) mut { bufferImageHeight = @bufferImageHeight;  return ref this; }
		public ref Self setImageSubresource(VkImageSubresourceLayers @imageSubresource) mut { imageSubresource = @imageSubresource;  return ref this; }
		public ref Self setImageOffset(VkOffset3D @imageOffset) mut { imageOffset = @imageOffset;  return ref this; }
		public ref Self setImageExtent(VkExtent3D @imageExtent) mut { imageExtent = @imageExtent;  return ref this; }
	}

	[CRepr]
	public struct VkImageResolve2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2;
		public void* pNext = null;
		public VkImageSubresourceLayers srcSubresource;
		public VkOffset3D srcOffset;
		public VkImageSubresourceLayers dstSubresource;
		public VkOffset3D dstOffset;
		public VkExtent3D extent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcSubresource(VkImageSubresourceLayers @srcSubresource) mut { srcSubresource = @srcSubresource;  return ref this; }
		public ref Self setSrcOffset(VkOffset3D @srcOffset) mut { srcOffset = @srcOffset;  return ref this; }
		public ref Self setDstSubresource(VkImageSubresourceLayers @dstSubresource) mut { dstSubresource = @dstSubresource;  return ref this; }
		public ref Self setDstOffset(VkOffset3D @dstOffset) mut { dstOffset = @dstOffset;  return ref this; }
		public ref Self setExtent(VkExtent3D @extent) mut { extent = @extent;  return ref this; }
	}

	[CRepr]
	public struct VkCopyBufferInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2;
		public void* pNext = null;
		public VkBuffer srcBuffer;
		public VkBuffer dstBuffer;
		public uint32 regionCount;
		public VkBufferCopy2* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcBuffer(VkBuffer @srcBuffer) mut { srcBuffer = @srcBuffer;  return ref this; }
		public ref Self setDstBuffer(VkBuffer @dstBuffer) mut { dstBuffer = @dstBuffer;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkBufferCopy2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkCopyImageInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2;
		public void* pNext = null;
		public VkImage srcImage;
		public VkImageLayout srcImageLayout;
		public VkImage dstImage;
		public VkImageLayout dstImageLayout;
		public uint32 regionCount;
		public VkImageCopy2* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcImage(VkImage @srcImage) mut { srcImage = @srcImage;  return ref this; }
		public ref Self setSrcImageLayout(VkImageLayout @srcImageLayout) mut { srcImageLayout = @srcImageLayout;  return ref this; }
		public ref Self setDstImage(VkImage @dstImage) mut { dstImage = @dstImage;  return ref this; }
		public ref Self setDstImageLayout(VkImageLayout @dstImageLayout) mut { dstImageLayout = @dstImageLayout;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkImageCopy2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkBlitImageInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2;
		public void* pNext = null;
		public VkImage srcImage;
		public VkImageLayout srcImageLayout;
		public VkImage dstImage;
		public VkImageLayout dstImageLayout;
		public uint32 regionCount;
		public VkImageBlit2* pRegions;
		public VkFilter filter;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcImage(VkImage @srcImage) mut { srcImage = @srcImage;  return ref this; }
		public ref Self setSrcImageLayout(VkImageLayout @srcImageLayout) mut { srcImageLayout = @srcImageLayout;  return ref this; }
		public ref Self setDstImage(VkImage @dstImage) mut { dstImage = @dstImage;  return ref this; }
		public ref Self setDstImageLayout(VkImageLayout @dstImageLayout) mut { dstImageLayout = @dstImageLayout;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkImageBlit2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
		public ref Self setFilter(VkFilter @filter) mut { filter = @filter;  return ref this; }
	}

	[CRepr]
	public struct VkCopyBufferToImageInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2;
		public void* pNext = null;
		public VkBuffer srcBuffer;
		public VkImage dstImage;
		public VkImageLayout dstImageLayout;
		public uint32 regionCount;
		public VkBufferImageCopy2* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcBuffer(VkBuffer @srcBuffer) mut { srcBuffer = @srcBuffer;  return ref this; }
		public ref Self setDstImage(VkImage @dstImage) mut { dstImage = @dstImage;  return ref this; }
		public ref Self setDstImageLayout(VkImageLayout @dstImageLayout) mut { dstImageLayout = @dstImageLayout;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkBufferImageCopy2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkCopyImageToBufferInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2;
		public void* pNext = null;
		public VkImage srcImage;
		public VkImageLayout srcImageLayout;
		public VkBuffer dstBuffer;
		public uint32 regionCount;
		public VkBufferImageCopy2* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcImage(VkImage @srcImage) mut { srcImage = @srcImage;  return ref this; }
		public ref Self setSrcImageLayout(VkImageLayout @srcImageLayout) mut { srcImageLayout = @srcImageLayout;  return ref this; }
		public ref Self setDstBuffer(VkBuffer @dstBuffer) mut { dstBuffer = @dstBuffer;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkBufferImageCopy2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkResolveImageInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2;
		public void* pNext = null;
		public VkImage srcImage;
		public VkImageLayout srcImageLayout;
		public VkImage dstImage;
		public VkImageLayout dstImageLayout;
		public uint32 regionCount;
		public VkImageResolve2* pRegions;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcImage(VkImage @srcImage) mut { srcImage = @srcImage;  return ref this; }
		public ref Self setSrcImageLayout(VkImageLayout @srcImageLayout) mut { srcImageLayout = @srcImageLayout;  return ref this; }
		public ref Self setDstImage(VkImage @dstImage) mut { dstImage = @dstImage;  return ref this; }
		public ref Self setDstImageLayout(VkImageLayout @dstImageLayout) mut { dstImageLayout = @dstImageLayout;  return ref this; }
		public ref Self setRegionCount(uint32 @regionCount) mut { regionCount = @regionCount;  return ref this; }
		public ref Self setPRegions(VkImageResolve2* @pRegions) mut { pRegions = @pRegions;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 shaderImageInt64Atomics;
		public VkBool32 sparseImageInt64Atomics;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderImageInt64Atomics(VkBool32 @shaderImageInt64Atomics) mut { shaderImageInt64Atomics = @shaderImageInt64Atomics;  return ref this; }
		public ref Self setSparseImageInt64Atomics(VkBool32 @sparseImageInt64Atomics) mut { sparseImageInt64Atomics = @sparseImageInt64Atomics;  return ref this; }
	}

	[CRepr]
	public struct VkFragmentShadingRateAttachmentInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR;
		public void* pNext = null;
		public VkAttachmentReference2* pFragmentShadingRateAttachment;
		public VkExtent2D shadingRateAttachmentTexelSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPFragmentShadingRateAttachment(VkAttachmentReference2* @pFragmentShadingRateAttachment) mut { pFragmentShadingRateAttachment = @pFragmentShadingRateAttachment;  return ref this; }
		public ref Self setShadingRateAttachmentTexelSize(VkExtent2D @shadingRateAttachmentTexelSize) mut { shadingRateAttachmentTexelSize = @shadingRateAttachmentTexelSize;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineFragmentShadingRateStateCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkExtent2D fragmentSize;
		public VkFragmentShadingRateCombinerOpKHR[2] combinerOps;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentSize(VkExtent2D @fragmentSize) mut { fragmentSize = @fragmentSize;  return ref this; }
		public ref Self setCombinerOps(VkFragmentShadingRateCombinerOpKHR[2] @combinerOps) mut { combinerOps = @combinerOps;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShadingRateFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 pipelineFragmentShadingRate;
		public VkBool32 primitiveFragmentShadingRate;
		public VkBool32 attachmentFragmentShadingRate;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineFragmentShadingRate(VkBool32 @pipelineFragmentShadingRate) mut { pipelineFragmentShadingRate = @pipelineFragmentShadingRate;  return ref this; }
		public ref Self setPrimitiveFragmentShadingRate(VkBool32 @primitiveFragmentShadingRate) mut { primitiveFragmentShadingRate = @primitiveFragmentShadingRate;  return ref this; }
		public ref Self setAttachmentFragmentShadingRate(VkBool32 @attachmentFragmentShadingRate) mut { attachmentFragmentShadingRate = @attachmentFragmentShadingRate;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR;
		public void* pNext = null;
		public VkExtent2D minFragmentShadingRateAttachmentTexelSize;
		public VkExtent2D maxFragmentShadingRateAttachmentTexelSize;
		public uint32 maxFragmentShadingRateAttachmentTexelSizeAspectRatio;
		public VkBool32 primitiveFragmentShadingRateWithMultipleViewports;
		public VkBool32 layeredShadingRateAttachments;
		public VkBool32 fragmentShadingRateNonTrivialCombinerOps;
		public VkExtent2D maxFragmentSize;
		public uint32 maxFragmentSizeAspectRatio;
		public uint32 maxFragmentShadingRateCoverageSamples;
		public VkSampleCountFlags maxFragmentShadingRateRasterizationSamples;
		public VkBool32 fragmentShadingRateWithShaderDepthStencilWrites;
		public VkBool32 fragmentShadingRateWithSampleMask;
		public VkBool32 fragmentShadingRateWithShaderSampleMask;
		public VkBool32 fragmentShadingRateWithConservativeRasterization;
		public VkBool32 fragmentShadingRateWithFragmentShaderInterlock;
		public VkBool32 fragmentShadingRateWithCustomSampleLocations;
		public VkBool32 fragmentShadingRateStrictMultiplyCombiner;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinFragmentShadingRateAttachmentTexelSize(VkExtent2D @minFragmentShadingRateAttachmentTexelSize) mut { minFragmentShadingRateAttachmentTexelSize = @minFragmentShadingRateAttachmentTexelSize;  return ref this; }
		public ref Self setMaxFragmentShadingRateAttachmentTexelSize(VkExtent2D @maxFragmentShadingRateAttachmentTexelSize) mut { maxFragmentShadingRateAttachmentTexelSize = @maxFragmentShadingRateAttachmentTexelSize;  return ref this; }
		public ref Self setMaxFragmentShadingRateAttachmentTexelSizeAspectRatio(uint32 @maxFragmentShadingRateAttachmentTexelSizeAspectRatio) mut { maxFragmentShadingRateAttachmentTexelSizeAspectRatio = @maxFragmentShadingRateAttachmentTexelSizeAspectRatio;  return ref this; }
		public ref Self setPrimitiveFragmentShadingRateWithMultipleViewports(VkBool32 @primitiveFragmentShadingRateWithMultipleViewports) mut { primitiveFragmentShadingRateWithMultipleViewports = @primitiveFragmentShadingRateWithMultipleViewports;  return ref this; }
		public ref Self setLayeredShadingRateAttachments(VkBool32 @layeredShadingRateAttachments) mut { layeredShadingRateAttachments = @layeredShadingRateAttachments;  return ref this; }
		public ref Self setFragmentShadingRateNonTrivialCombinerOps(VkBool32 @fragmentShadingRateNonTrivialCombinerOps) mut { fragmentShadingRateNonTrivialCombinerOps = @fragmentShadingRateNonTrivialCombinerOps;  return ref this; }
		public ref Self setMaxFragmentSize(VkExtent2D @maxFragmentSize) mut { maxFragmentSize = @maxFragmentSize;  return ref this; }
		public ref Self setMaxFragmentSizeAspectRatio(uint32 @maxFragmentSizeAspectRatio) mut { maxFragmentSizeAspectRatio = @maxFragmentSizeAspectRatio;  return ref this; }
		public ref Self setMaxFragmentShadingRateCoverageSamples(uint32 @maxFragmentShadingRateCoverageSamples) mut { maxFragmentShadingRateCoverageSamples = @maxFragmentShadingRateCoverageSamples;  return ref this; }
		public ref Self setMaxFragmentShadingRateRasterizationSamples(VkSampleCountFlags @maxFragmentShadingRateRasterizationSamples) mut { maxFragmentShadingRateRasterizationSamples = @maxFragmentShadingRateRasterizationSamples;  return ref this; }
		public ref Self setFragmentShadingRateWithShaderDepthStencilWrites(VkBool32 @fragmentShadingRateWithShaderDepthStencilWrites) mut { fragmentShadingRateWithShaderDepthStencilWrites = @fragmentShadingRateWithShaderDepthStencilWrites;  return ref this; }
		public ref Self setFragmentShadingRateWithSampleMask(VkBool32 @fragmentShadingRateWithSampleMask) mut { fragmentShadingRateWithSampleMask = @fragmentShadingRateWithSampleMask;  return ref this; }
		public ref Self setFragmentShadingRateWithShaderSampleMask(VkBool32 @fragmentShadingRateWithShaderSampleMask) mut { fragmentShadingRateWithShaderSampleMask = @fragmentShadingRateWithShaderSampleMask;  return ref this; }
		public ref Self setFragmentShadingRateWithConservativeRasterization(VkBool32 @fragmentShadingRateWithConservativeRasterization) mut { fragmentShadingRateWithConservativeRasterization = @fragmentShadingRateWithConservativeRasterization;  return ref this; }
		public ref Self setFragmentShadingRateWithFragmentShaderInterlock(VkBool32 @fragmentShadingRateWithFragmentShaderInterlock) mut { fragmentShadingRateWithFragmentShaderInterlock = @fragmentShadingRateWithFragmentShaderInterlock;  return ref this; }
		public ref Self setFragmentShadingRateWithCustomSampleLocations(VkBool32 @fragmentShadingRateWithCustomSampleLocations) mut { fragmentShadingRateWithCustomSampleLocations = @fragmentShadingRateWithCustomSampleLocations;  return ref this; }
		public ref Self setFragmentShadingRateStrictMultiplyCombiner(VkBool32 @fragmentShadingRateStrictMultiplyCombiner) mut { fragmentShadingRateStrictMultiplyCombiner = @fragmentShadingRateStrictMultiplyCombiner;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShadingRateKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR;
		public void* pNext = null;
		public VkSampleCountFlags sampleCounts;
		public VkExtent2D fragmentSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSampleCounts(VkSampleCountFlags @sampleCounts) mut { sampleCounts = @sampleCounts;  return ref this; }
		public ref Self setFragmentSize(VkExtent2D @fragmentSize) mut { fragmentSize = @fragmentSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderTerminateInvocationFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderTerminateInvocation;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderTerminateInvocation(VkBool32 @shaderTerminateInvocation) mut { shaderTerminateInvocation = @shaderTerminateInvocation;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 fragmentShadingRateEnums;
		public VkBool32 supersampleFragmentShadingRates;
		public VkBool32 noInvocationFragmentShadingRates;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentShadingRateEnums(VkBool32 @fragmentShadingRateEnums) mut { fragmentShadingRateEnums = @fragmentShadingRateEnums;  return ref this; }
		public ref Self setSupersampleFragmentShadingRates(VkBool32 @supersampleFragmentShadingRates) mut { supersampleFragmentShadingRates = @supersampleFragmentShadingRates;  return ref this; }
		public ref Self setNoInvocationFragmentShadingRates(VkBool32 @noInvocationFragmentShadingRates) mut { noInvocationFragmentShadingRates = @noInvocationFragmentShadingRates;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV;
		public void* pNext = null;
		public VkSampleCountFlags maxFragmentShadingRateInvocationCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxFragmentShadingRateInvocationCount(VkSampleCountFlags @maxFragmentShadingRateInvocationCount) mut { maxFragmentShadingRateInvocationCount = @maxFragmentShadingRateInvocationCount;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineFragmentShadingRateEnumStateCreateInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV;
		public void* pNext = null;
		public VkFragmentShadingRateTypeNV shadingRateType;
		public VkFragmentShadingRateNV shadingRate;
		public VkFragmentShadingRateCombinerOpKHR[2] combinerOps;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShadingRateType(VkFragmentShadingRateTypeNV @shadingRateType) mut { shadingRateType = @shadingRateType;  return ref this; }
		public ref Self setShadingRate(VkFragmentShadingRateNV @shadingRate) mut { shadingRate = @shadingRate;  return ref this; }
		public ref Self setCombinerOps(VkFragmentShadingRateCombinerOpKHR[2] @combinerOps) mut { combinerOps = @combinerOps;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureBuildSizesInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR;
		public void* pNext = null;
		public uint64 accelerationStructureSize;
		public uint64 updateScratchSize;
		public uint64 buildScratchSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAccelerationStructureSize(uint64 @accelerationStructureSize) mut { accelerationStructureSize = @accelerationStructureSize;  return ref this; }
		public ref Self setUpdateScratchSize(uint64 @updateScratchSize) mut { updateScratchSize = @updateScratchSize;  return ref this; }
		public ref Self setBuildScratchSize(uint64 @buildScratchSize) mut { buildScratchSize = @buildScratchSize;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 image2DViewOf3D;
		public VkBool32 sampler2DViewOf3D;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage2DViewOf3D(VkBool32 @image2DViewOf3D) mut { image2DViewOf3D = @image2DViewOf3D;  return ref this; }
		public ref Self setSampler2DViewOf3D(VkBool32 @sampler2DViewOf3D) mut { sampler2DViewOf3D = @sampler2DViewOf3D;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_VALVE;
		public void* pNext = null;
		public VkBool32 mutableDescriptorType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMutableDescriptorType(VkBool32 @mutableDescriptorType) mut { mutableDescriptorType = @mutableDescriptorType;  return ref this; }
	}

	[CRepr]
	public struct VkMutableDescriptorTypeListVALVE
	{
		public uint32 descriptorTypeCount;
		public VkDescriptorType* pDescriptorTypes;

		public ref Self setDescriptorTypeCount(uint32 @descriptorTypeCount) mut { descriptorTypeCount = @descriptorTypeCount;  return ref this; }
		public ref Self setPDescriptorTypes(VkDescriptorType* @pDescriptorTypes) mut { pDescriptorTypes = @pDescriptorTypes;  return ref this; }
	}

	[CRepr]
	public struct VkMutableDescriptorTypeCreateInfoVALVE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_VALVE;
		public void* pNext = null;
		public uint32 mutableDescriptorTypeListCount;
		public VkMutableDescriptorTypeListVALVE* pMutableDescriptorTypeLists;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMutableDescriptorTypeListCount(uint32 @mutableDescriptorTypeListCount) mut { mutableDescriptorTypeListCount = @mutableDescriptorTypeListCount;  return ref this; }
		public ref Self setPMutableDescriptorTypeLists(VkMutableDescriptorTypeListVALVE* @pMutableDescriptorTypeLists) mut { pMutableDescriptorTypeLists = @pMutableDescriptorTypeLists;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDepthClipControlFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 depthClipControl;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDepthClipControl(VkBool32 @depthClipControl) mut { depthClipControl = @depthClipControl;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineViewportDepthClipControlCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkBool32 negativeOneToOne;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setNegativeOneToOne(VkBool32 @negativeOneToOne) mut { negativeOneToOne = @negativeOneToOne;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 vertexInputDynamicState;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexInputDynamicState(VkBool32 @vertexInputDynamicState) mut { vertexInputDynamicState = @vertexInputDynamicState;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceExternalMemoryRDMAFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 externalMemoryRDMA;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExternalMemoryRDMA(VkBool32 @externalMemoryRDMA) mut { externalMemoryRDMA = @externalMemoryRDMA;  return ref this; }
	}

	[CRepr]
	public struct VkVertexInputBindingDescription2EXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT;
		public void* pNext = null;
		public uint32 binding;
		public uint32 stride;
		public VkVertexInputRate inputRate;
		public uint32 divisor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setStride(uint32 @stride) mut { stride = @stride;  return ref this; }
		public ref Self setInputRate(VkVertexInputRate @inputRate) mut { inputRate = @inputRate;  return ref this; }
		public ref Self setDivisor(uint32 @divisor) mut { divisor = @divisor;  return ref this; }
	}

	[CRepr]
	public struct VkVertexInputAttributeDescription2EXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT;
		public void* pNext = null;
		public uint32 location;
		public uint32 binding;
		public VkFormat format;
		public uint32 offset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLocation(uint32 @location) mut { location = @location;  return ref this; }
		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setOffset(uint32 @offset) mut { offset = @offset;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceColorWriteEnableFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 colorWriteEnable;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setColorWriteEnable(VkBool32 @colorWriteEnable) mut { colorWriteEnable = @colorWriteEnable;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineColorWriteCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_COLOR_WRITE_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 attachmentCount;
		public VkBool32* pColorWriteEnables;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAttachmentCount(uint32 @attachmentCount) mut { attachmentCount = @attachmentCount;  return ref this; }
		public ref Self setPColorWriteEnables(VkBool32* @pColorWriteEnables) mut { pColorWriteEnables = @pColorWriteEnables;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryBarrier2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_BARRIER_2;
		public void* pNext = null;
		public uint64 srcStageMask;
		public uint64 srcAccessMask;
		public uint64 dstStageMask;
		public uint64 dstAccessMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcStageMask(uint64 @srcStageMask) mut { srcStageMask = @srcStageMask;  return ref this; }
		public ref Self setSrcAccessMask(uint64 @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstStageMask(uint64 @dstStageMask) mut { dstStageMask = @dstStageMask;  return ref this; }
		public ref Self setDstAccessMask(uint64 @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
	}

	[CRepr]
	public struct VkImageMemoryBarrier2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2;
		public void* pNext = null;
		public uint64 srcStageMask;
		public uint64 srcAccessMask;
		public uint64 dstStageMask;
		public uint64 dstAccessMask;
		public VkImageLayout oldLayout;
		public VkImageLayout newLayout;
		public uint32 srcQueueFamilyIndex;
		public uint32 dstQueueFamilyIndex;
		public VkImage image;
		public VkImageSubresourceRange subresourceRange;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcStageMask(uint64 @srcStageMask) mut { srcStageMask = @srcStageMask;  return ref this; }
		public ref Self setSrcAccessMask(uint64 @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstStageMask(uint64 @dstStageMask) mut { dstStageMask = @dstStageMask;  return ref this; }
		public ref Self setDstAccessMask(uint64 @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setOldLayout(VkImageLayout @oldLayout) mut { oldLayout = @oldLayout;  return ref this; }
		public ref Self setNewLayout(VkImageLayout @newLayout) mut { newLayout = @newLayout;  return ref this; }
		public ref Self setSrcQueueFamilyIndex(uint32 @srcQueueFamilyIndex) mut { srcQueueFamilyIndex = @srcQueueFamilyIndex;  return ref this; }
		public ref Self setDstQueueFamilyIndex(uint32 @dstQueueFamilyIndex) mut { dstQueueFamilyIndex = @dstQueueFamilyIndex;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setSubresourceRange(VkImageSubresourceRange @subresourceRange) mut { subresourceRange = @subresourceRange;  return ref this; }
	}

	[CRepr]
	public struct VkBufferMemoryBarrier2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2;
		public void* pNext = null;
		public uint64 srcStageMask;
		public uint64 srcAccessMask;
		public uint64 dstStageMask;
		public uint64 dstAccessMask;
		public uint32 srcQueueFamilyIndex;
		public uint32 dstQueueFamilyIndex;
		public VkBuffer buffer;
		public uint64 offset;
		public uint64 size;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSrcStageMask(uint64 @srcStageMask) mut { srcStageMask = @srcStageMask;  return ref this; }
		public ref Self setSrcAccessMask(uint64 @srcAccessMask) mut { srcAccessMask = @srcAccessMask;  return ref this; }
		public ref Self setDstStageMask(uint64 @dstStageMask) mut { dstStageMask = @dstStageMask;  return ref this; }
		public ref Self setDstAccessMask(uint64 @dstAccessMask) mut { dstAccessMask = @dstAccessMask;  return ref this; }
		public ref Self setSrcQueueFamilyIndex(uint32 @srcQueueFamilyIndex) mut { srcQueueFamilyIndex = @srcQueueFamilyIndex;  return ref this; }
		public ref Self setDstQueueFamilyIndex(uint32 @dstQueueFamilyIndex) mut { dstQueueFamilyIndex = @dstQueueFamilyIndex;  return ref this; }
		public ref Self setBuffer(VkBuffer @buffer) mut { buffer = @buffer;  return ref this; }
		public ref Self setOffset(uint64 @offset) mut { offset = @offset;  return ref this; }
		public ref Self setSize(uint64 @size) mut { size = @size;  return ref this; }
	}

	[CRepr]
	public struct VkDependencyInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DEPENDENCY_INFO;
		public void* pNext = null;
		public VkDependencyFlags dependencyFlags;
		public uint32 memoryBarrierCount;
		public VkMemoryBarrier2* pMemoryBarriers;
		public uint32 bufferMemoryBarrierCount;
		public VkBufferMemoryBarrier2* pBufferMemoryBarriers;
		public uint32 imageMemoryBarrierCount;
		public VkImageMemoryBarrier2* pImageMemoryBarriers;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDependencyFlags(VkDependencyFlags @dependencyFlags) mut { dependencyFlags = @dependencyFlags;  return ref this; }
		public ref Self setMemoryBarrierCount(uint32 @memoryBarrierCount) mut { memoryBarrierCount = @memoryBarrierCount;  return ref this; }
		public ref Self setPMemoryBarriers(VkMemoryBarrier2* @pMemoryBarriers) mut { pMemoryBarriers = @pMemoryBarriers;  return ref this; }
		public ref Self setBufferMemoryBarrierCount(uint32 @bufferMemoryBarrierCount) mut { bufferMemoryBarrierCount = @bufferMemoryBarrierCount;  return ref this; }
		public ref Self setPBufferMemoryBarriers(VkBufferMemoryBarrier2* @pBufferMemoryBarriers) mut { pBufferMemoryBarriers = @pBufferMemoryBarriers;  return ref this; }
		public ref Self setImageMemoryBarrierCount(uint32 @imageMemoryBarrierCount) mut { imageMemoryBarrierCount = @imageMemoryBarrierCount;  return ref this; }
		public ref Self setPImageMemoryBarriers(VkImageMemoryBarrier2* @pImageMemoryBarriers) mut { pImageMemoryBarriers = @pImageMemoryBarriers;  return ref this; }
	}

	[CRepr]
	public struct VkSemaphoreSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public uint64 value;
		public uint64 stageMask;
		public uint32 deviceIndex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setValue(uint64 @value) mut { value = @value;  return ref this; }
		public ref Self setStageMask(uint64 @stageMask) mut { stageMask = @stageMask;  return ref this; }
		public ref Self setDeviceIndex(uint32 @deviceIndex) mut { deviceIndex = @deviceIndex;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferSubmitInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO;
		public void* pNext = null;
		public VkCommandBuffer commandBuffer;
		public uint32 deviceMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCommandBuffer(VkCommandBuffer @commandBuffer) mut { commandBuffer = @commandBuffer;  return ref this; }
		public ref Self setDeviceMask(uint32 @deviceMask) mut { deviceMask = @deviceMask;  return ref this; }
	}

	[CRepr]
	public struct VkSubmitInfo2
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBMIT_INFO_2;
		public void* pNext = null;
		public VkSubmitFlags flags;
		public uint32 waitSemaphoreInfoCount;
		public VkSemaphoreSubmitInfo* pWaitSemaphoreInfos;
		public uint32 commandBufferInfoCount;
		public VkCommandBufferSubmitInfo* pCommandBufferInfos;
		public uint32 signalSemaphoreInfoCount;
		public VkSemaphoreSubmitInfo* pSignalSemaphoreInfos;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkSubmitFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setWaitSemaphoreInfoCount(uint32 @waitSemaphoreInfoCount) mut { waitSemaphoreInfoCount = @waitSemaphoreInfoCount;  return ref this; }
		public ref Self setPWaitSemaphoreInfos(VkSemaphoreSubmitInfo* @pWaitSemaphoreInfos) mut { pWaitSemaphoreInfos = @pWaitSemaphoreInfos;  return ref this; }
		public ref Self setCommandBufferInfoCount(uint32 @commandBufferInfoCount) mut { commandBufferInfoCount = @commandBufferInfoCount;  return ref this; }
		public ref Self setPCommandBufferInfos(VkCommandBufferSubmitInfo* @pCommandBufferInfos) mut { pCommandBufferInfos = @pCommandBufferInfos;  return ref this; }
		public ref Self setSignalSemaphoreInfoCount(uint32 @signalSemaphoreInfoCount) mut { signalSemaphoreInfoCount = @signalSemaphoreInfoCount;  return ref this; }
		public ref Self setPSignalSemaphoreInfos(VkSemaphoreSubmitInfo* @pSignalSemaphoreInfos) mut { pSignalSemaphoreInfos = @pSignalSemaphoreInfos;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyCheckpointProperties2NV
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint64 checkpointExecutionStageMask;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCheckpointExecutionStageMask(uint64 @checkpointExecutionStageMask) mut { checkpointExecutionStageMask = @checkpointExecutionStageMask;  return ref this; }
	}

	[CRepr]
	public struct VkCheckpointData2NV
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint64 stage;
		public void* pCheckpointMarker;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStage(uint64 @stage) mut { stage = @stage;  return ref this; }
		public ref Self setPCheckpointMarker(void* @pCheckpointMarker) mut { pCheckpointMarker = @pCheckpointMarker;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSynchronization2Features
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES;
		public void* pNext = null;
		public VkBool32 synchronization2;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSynchronization2(VkBool32 @synchronization2) mut { synchronization2 = @synchronization2;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 primitivesGeneratedQuery;
		public VkBool32 primitivesGeneratedQueryWithRasterizerDiscard;
		public VkBool32 primitivesGeneratedQueryWithNonZeroStreams;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPrimitivesGeneratedQuery(VkBool32 @primitivesGeneratedQuery) mut { primitivesGeneratedQuery = @primitivesGeneratedQuery;  return ref this; }
		public ref Self setPrimitivesGeneratedQueryWithRasterizerDiscard(VkBool32 @primitivesGeneratedQueryWithRasterizerDiscard) mut { primitivesGeneratedQueryWithRasterizerDiscard = @primitivesGeneratedQueryWithRasterizerDiscard;  return ref this; }
		public ref Self setPrimitivesGeneratedQueryWithNonZeroStreams(VkBool32 @primitivesGeneratedQueryWithNonZeroStreams) mut { primitivesGeneratedQueryWithNonZeroStreams = @primitivesGeneratedQueryWithNonZeroStreams;  return ref this; }
	}

	[CRepr]
	public struct VkVideoQueueFamilyProperties2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_QUEUE_FAMILY_PROPERTIES_2_KHR;
		public void* pNext = null;
		public VkVideoCodecOperationFlagsKHR videoCodecOperations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVideoCodecOperations(VkVideoCodecOperationFlagsKHR @videoCodecOperations) mut { videoCodecOperations = @videoCodecOperations;  return ref this; }
	}

	[CRepr]
	public struct VkQueueFamilyQueryResultStatusProperties2KHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_2_KHR;
		public void* pNext = null;
		public VkBool32 supported;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSupported(VkBool32 @supported) mut { supported = @supported;  return ref this; }
	}

	[CRepr]
	public struct VkVideoProfilesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_PROFILES_KHR;
		public void* pNext = null;
		public uint32 profileCount;
		public VkVideoProfileKHR* pProfiles;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProfileCount(uint32 @profileCount) mut { profileCount = @profileCount;  return ref this; }
		public ref Self setPProfiles(VkVideoProfileKHR* @pProfiles) mut { pProfiles = @pProfiles;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceVideoFormatInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR;
		public void* pNext = null;
		public VkImageUsageFlags imageUsage;
		public VkVideoProfilesKHR* pVideoProfiles;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageUsage(VkImageUsageFlags @imageUsage) mut { imageUsage = @imageUsage;  return ref this; }
		public ref Self setPVideoProfiles(VkVideoProfilesKHR* @pVideoProfiles) mut { pVideoProfiles = @pVideoProfiles;  return ref this; }
	}

	[CRepr]
	public struct VkVideoFormatPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_FORMAT_PROPERTIES_KHR;
		public void* pNext = null;
		public VkFormat format;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
	}

	[CRepr]
	public struct VkVideoProfileKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_PROFILE_KHR;
		public void* pNext = null;
		public VkVideoCodecOperationFlagsKHR videoCodecOperation;
		public VkVideoChromaSubsamplingFlagsKHR chromaSubsampling;
		public VkVideoComponentDepthFlagBitsKHR lumaBitDepth;
		public VkVideoComponentDepthFlagBitsKHR chromaBitDepth;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVideoCodecOperation(VkVideoCodecOperationFlagsKHR @videoCodecOperation) mut { videoCodecOperation = @videoCodecOperation;  return ref this; }
		public ref Self setChromaSubsampling(VkVideoChromaSubsamplingFlagsKHR @chromaSubsampling) mut { chromaSubsampling = @chromaSubsampling;  return ref this; }
		public ref Self setLumaBitDepth(VkVideoComponentDepthFlagBitsKHR @lumaBitDepth) mut { lumaBitDepth = @lumaBitDepth;  return ref this; }
		public ref Self setChromaBitDepth(VkVideoComponentDepthFlagBitsKHR @chromaBitDepth) mut { chromaBitDepth = @chromaBitDepth;  return ref this; }
	}

	[CRepr]
	public struct VkVideoCapabilitiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_CAPABILITIES_KHR;
		public void* pNext = null;
		public VkVideoCapabilityFlagsKHR capabilityFlags;
		public uint64 minBitstreamBufferOffsetAlignment;
		public uint64 minBitstreamBufferSizeAlignment;
		public VkExtent2D videoPictureExtentGranularity;
		public VkExtent2D minExtent;
		public VkExtent2D maxExtent;
		public uint32 maxReferencePicturesSlotsCount;
		public uint32 maxReferencePicturesActiveCount;
		public VkExtensionProperties stdHeaderVersion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCapabilityFlags(VkVideoCapabilityFlagsKHR @capabilityFlags) mut { capabilityFlags = @capabilityFlags;  return ref this; }
		public ref Self setMinBitstreamBufferOffsetAlignment(uint64 @minBitstreamBufferOffsetAlignment) mut { minBitstreamBufferOffsetAlignment = @minBitstreamBufferOffsetAlignment;  return ref this; }
		public ref Self setMinBitstreamBufferSizeAlignment(uint64 @minBitstreamBufferSizeAlignment) mut { minBitstreamBufferSizeAlignment = @minBitstreamBufferSizeAlignment;  return ref this; }
		public ref Self setVideoPictureExtentGranularity(VkExtent2D @videoPictureExtentGranularity) mut { videoPictureExtentGranularity = @videoPictureExtentGranularity;  return ref this; }
		public ref Self setMinExtent(VkExtent2D @minExtent) mut { minExtent = @minExtent;  return ref this; }
		public ref Self setMaxExtent(VkExtent2D @maxExtent) mut { maxExtent = @maxExtent;  return ref this; }
		public ref Self setMaxReferencePicturesSlotsCount(uint32 @maxReferencePicturesSlotsCount) mut { maxReferencePicturesSlotsCount = @maxReferencePicturesSlotsCount;  return ref this; }
		public ref Self setMaxReferencePicturesActiveCount(uint32 @maxReferencePicturesActiveCount) mut { maxReferencePicturesActiveCount = @maxReferencePicturesActiveCount;  return ref this; }
		public ref Self setStdHeaderVersion(VkExtensionProperties @stdHeaderVersion) mut { stdHeaderVersion = @stdHeaderVersion;  return ref this; }
	}

	[CRepr]
	public struct VkVideoGetMemoryPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_GET_MEMORY_PROPERTIES_KHR;
		public void* pNext = null;
		public uint32 memoryBindIndex;
		public VkMemoryRequirements2* pMemoryRequirements;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryBindIndex(uint32 @memoryBindIndex) mut { memoryBindIndex = @memoryBindIndex;  return ref this; }
		public ref Self setPMemoryRequirements(VkMemoryRequirements2* @pMemoryRequirements) mut { pMemoryRequirements = @pMemoryRequirements;  return ref this; }
	}

	[CRepr]
	public struct VkVideoBindMemoryKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_BIND_MEMORY_KHR;
		public void* pNext = null;
		public uint32 memoryBindIndex;
		public VkDeviceMemory memory;
		public uint64 memoryOffset;
		public uint64 memorySize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryBindIndex(uint32 @memoryBindIndex) mut { memoryBindIndex = @memoryBindIndex;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMemoryOffset(uint64 @memoryOffset) mut { memoryOffset = @memoryOffset;  return ref this; }
		public ref Self setMemorySize(uint64 @memorySize) mut { memorySize = @memorySize;  return ref this; }
	}

	[CRepr]
	public struct VkVideoPictureResourceKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_PICTURE_RESOURCE_KHR;
		public void* pNext = null;
		public VkOffset2D codedOffset;
		public VkExtent2D codedExtent;
		public uint32 baseArrayLayer;
		public VkImageView imageViewBinding;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCodedOffset(VkOffset2D @codedOffset) mut { codedOffset = @codedOffset;  return ref this; }
		public ref Self setCodedExtent(VkExtent2D @codedExtent) mut { codedExtent = @codedExtent;  return ref this; }
		public ref Self setBaseArrayLayer(uint32 @baseArrayLayer) mut { baseArrayLayer = @baseArrayLayer;  return ref this; }
		public ref Self setImageViewBinding(VkImageView @imageViewBinding) mut { imageViewBinding = @imageViewBinding;  return ref this; }
	}

	[CRepr]
	public struct VkVideoReferenceSlotKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_REFERENCE_SLOT_KHR;
		public void* pNext = null;
		public int8 slotIndex;
		public VkVideoPictureResourceKHR* pPictureResource;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSlotIndex(int8 @slotIndex) mut { slotIndex = @slotIndex;  return ref this; }
		public ref Self setPPictureResource(VkVideoPictureResourceKHR* @pPictureResource) mut { pPictureResource = @pPictureResource;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeCapabilitiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_CAPABILITIES_KHR;
		public void* pNext = null;
		public VkVideoDecodeCapabilityFlagsKHR flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoDecodeCapabilityFlagsKHR @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_INFO_KHR;
		public void* pNext = null;
		public VkVideoDecodeFlagsKHR flags;
		public VkBuffer srcBuffer;
		public uint64 srcBufferOffset;
		public uint64 srcBufferRange;
		public VkVideoPictureResourceKHR dstPictureResource;
		public VkVideoReferenceSlotKHR* pSetupReferenceSlot;
		public uint32 referenceSlotCount;
		public VkVideoReferenceSlotKHR* pReferenceSlots;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoDecodeFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSrcBuffer(VkBuffer @srcBuffer) mut { srcBuffer = @srcBuffer;  return ref this; }
		public ref Self setSrcBufferOffset(uint64 @srcBufferOffset) mut { srcBufferOffset = @srcBufferOffset;  return ref this; }
		public ref Self setSrcBufferRange(uint64 @srcBufferRange) mut { srcBufferRange = @srcBufferRange;  return ref this; }
		public ref Self setDstPictureResource(VkVideoPictureResourceKHR @dstPictureResource) mut { dstPictureResource = @dstPictureResource;  return ref this; }
		public ref Self setPSetupReferenceSlot(VkVideoReferenceSlotKHR* @pSetupReferenceSlot) mut { pSetupReferenceSlot = @pSetupReferenceSlot;  return ref this; }
		public ref Self setReferenceSlotCount(uint32 @referenceSlotCount) mut { referenceSlotCount = @referenceSlotCount;  return ref this; }
		public ref Self setPReferenceSlots(VkVideoReferenceSlotKHR* @pReferenceSlots) mut { pReferenceSlots = @pReferenceSlots;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264ProfileEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PROFILE_EXT;
		public void* pNext = null;
		public void* stdProfileIdc;
		public VkVideoDecodeH264PictureLayoutFlagsEXT pictureLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStdProfileIdc(void* @stdProfileIdc) mut { stdProfileIdc = @stdProfileIdc;  return ref this; }
		public ref Self setPictureLayout(VkVideoDecodeH264PictureLayoutFlagsEXT @pictureLayout) mut { pictureLayout = @pictureLayout;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264CapabilitiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_CAPABILITIES_EXT;
		public void* pNext = null;
		public StdVideoH264Level maxLevel;
		public VkOffset2D fieldOffsetGranularity;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxLevel(StdVideoH264Level @maxLevel) mut { maxLevel = @maxLevel;  return ref this; }
		public ref Self setFieldOffsetGranularity(VkOffset2D @fieldOffsetGranularity) mut { fieldOffsetGranularity = @fieldOffsetGranularity;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264SessionParametersAddInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_EXT;
		public void* pNext = null;
		public uint32 spsStdCount;
		public void* pSpsStd;
		public uint32 ppsStdCount;
		public void* pPpsStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSpsStdCount(uint32 @spsStdCount) mut { spsStdCount = @spsStdCount;  return ref this; }
		public ref Self setPSpsStd(void* @pSpsStd) mut { pSpsStd = @pSpsStd;  return ref this; }
		public ref Self setPpsStdCount(uint32 @ppsStdCount) mut { ppsStdCount = @ppsStdCount;  return ref this; }
		public ref Self setPPpsStd(void* @pPpsStd) mut { pPpsStd = @pPpsStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264SessionParametersCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 maxSpsStdCount;
		public uint32 maxPpsStdCount;
		public VkVideoDecodeH264SessionParametersAddInfoEXT* pParametersAddInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxSpsStdCount(uint32 @maxSpsStdCount) mut { maxSpsStdCount = @maxSpsStdCount;  return ref this; }
		public ref Self setMaxPpsStdCount(uint32 @maxPpsStdCount) mut { maxPpsStdCount = @maxPpsStdCount;  return ref this; }
		public ref Self setPParametersAddInfo(VkVideoDecodeH264SessionParametersAddInfoEXT* @pParametersAddInfo) mut { pParametersAddInfo = @pParametersAddInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264PictureInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PICTURE_INFO_EXT;
		public void* pNext = null;
		public void* pStdPictureInfo;
		public uint32 slicesCount;
		public uint32* pSlicesDataOffsets;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPStdPictureInfo(void* @pStdPictureInfo) mut { pStdPictureInfo = @pStdPictureInfo;  return ref this; }
		public ref Self setSlicesCount(uint32 @slicesCount) mut { slicesCount = @slicesCount;  return ref this; }
		public ref Self setPSlicesDataOffsets(uint32* @pSlicesDataOffsets) mut { pSlicesDataOffsets = @pSlicesDataOffsets;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264DpbSlotInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_DPB_SLOT_INFO_EXT;
		public void* pNext = null;
		public void* pStdReferenceInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPStdReferenceInfo(void* @pStdReferenceInfo) mut { pStdReferenceInfo = @pStdReferenceInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH264MvcEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_MVC_EXT;
		public void* pNext = null;
		public void* pStdMvc;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPStdMvc(void* @pStdMvc) mut { pStdMvc = @pStdMvc;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265ProfileEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_EXT;
		public void* pNext = null;
		public void* stdProfileIdc;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStdProfileIdc(void* @stdProfileIdc) mut { stdProfileIdc = @stdProfileIdc;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265CapabilitiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_EXT;
		public void* pNext = null;
		public StdVideoH265Level maxLevel;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxLevel(StdVideoH265Level @maxLevel) mut { maxLevel = @maxLevel;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265SessionParametersAddInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_EXT;
		public void* pNext = null;
		public uint32 vpsStdCount;
		public void* pVpsStd;
		public uint32 spsStdCount;
		public void* pSpsStd;
		public uint32 ppsStdCount;
		public void* pPpsStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVpsStdCount(uint32 @vpsStdCount) mut { vpsStdCount = @vpsStdCount;  return ref this; }
		public ref Self setPVpsStd(void* @pVpsStd) mut { pVpsStd = @pVpsStd;  return ref this; }
		public ref Self setSpsStdCount(uint32 @spsStdCount) mut { spsStdCount = @spsStdCount;  return ref this; }
		public ref Self setPSpsStd(void* @pSpsStd) mut { pSpsStd = @pSpsStd;  return ref this; }
		public ref Self setPpsStdCount(uint32 @ppsStdCount) mut { ppsStdCount = @ppsStdCount;  return ref this; }
		public ref Self setPPpsStd(void* @pPpsStd) mut { pPpsStd = @pPpsStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265SessionParametersCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 maxVpsStdCount;
		public uint32 maxSpsStdCount;
		public uint32 maxPpsStdCount;
		public VkVideoDecodeH265SessionParametersAddInfoEXT* pParametersAddInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxVpsStdCount(uint32 @maxVpsStdCount) mut { maxVpsStdCount = @maxVpsStdCount;  return ref this; }
		public ref Self setMaxSpsStdCount(uint32 @maxSpsStdCount) mut { maxSpsStdCount = @maxSpsStdCount;  return ref this; }
		public ref Self setMaxPpsStdCount(uint32 @maxPpsStdCount) mut { maxPpsStdCount = @maxPpsStdCount;  return ref this; }
		public ref Self setPParametersAddInfo(VkVideoDecodeH265SessionParametersAddInfoEXT* @pParametersAddInfo) mut { pParametersAddInfo = @pParametersAddInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265PictureInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_EXT;
		public void* pNext = null;
		public void* pStdPictureInfo;
		public uint32 slicesCount;
		public uint32* pSlicesDataOffsets;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPStdPictureInfo(void* @pStdPictureInfo) mut { pStdPictureInfo = @pStdPictureInfo;  return ref this; }
		public ref Self setSlicesCount(uint32 @slicesCount) mut { slicesCount = @slicesCount;  return ref this; }
		public ref Self setPSlicesDataOffsets(uint32* @pSlicesDataOffsets) mut { pSlicesDataOffsets = @pSlicesDataOffsets;  return ref this; }
	}

	[CRepr]
	public struct VkVideoDecodeH265DpbSlotInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_EXT;
		public void* pNext = null;
		public void* pStdReferenceInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPStdReferenceInfo(void* @pStdReferenceInfo) mut { pStdReferenceInfo = @pStdReferenceInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoSessionCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_SESSION_CREATE_INFO_KHR;
		public void* pNext = null;
		public uint32 queueFamilyIndex;
		public VkVideoSessionCreateFlagsKHR flags;
		public VkVideoProfileKHR* pVideoProfile;
		public VkFormat pictureFormat;
		public VkExtent2D maxCodedExtent;
		public VkFormat referencePicturesFormat;
		public uint32 maxReferencePicturesSlotsCount;
		public uint32 maxReferencePicturesActiveCount;
		public VkExtensionProperties* pStdHeaderVersion;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setQueueFamilyIndex(uint32 @queueFamilyIndex) mut { queueFamilyIndex = @queueFamilyIndex;  return ref this; }
		public ref Self setFlags(VkVideoSessionCreateFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setPVideoProfile(VkVideoProfileKHR* @pVideoProfile) mut { pVideoProfile = @pVideoProfile;  return ref this; }
		public ref Self setPictureFormat(VkFormat @pictureFormat) mut { pictureFormat = @pictureFormat;  return ref this; }
		public ref Self setMaxCodedExtent(VkExtent2D @maxCodedExtent) mut { maxCodedExtent = @maxCodedExtent;  return ref this; }
		public ref Self setReferencePicturesFormat(VkFormat @referencePicturesFormat) mut { referencePicturesFormat = @referencePicturesFormat;  return ref this; }
		public ref Self setMaxReferencePicturesSlotsCount(uint32 @maxReferencePicturesSlotsCount) mut { maxReferencePicturesSlotsCount = @maxReferencePicturesSlotsCount;  return ref this; }
		public ref Self setMaxReferencePicturesActiveCount(uint32 @maxReferencePicturesActiveCount) mut { maxReferencePicturesActiveCount = @maxReferencePicturesActiveCount;  return ref this; }
		public ref Self setPStdHeaderVersion(VkExtensionProperties* @pStdHeaderVersion) mut { pStdHeaderVersion = @pStdHeaderVersion;  return ref this; }
	}

	[CRepr]
	public struct VkVideoSessionParametersCreateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR;
		public void* pNext = null;
		public VkVideoSessionParametersKHR videoSessionParametersTemplate;
		public VkVideoSessionKHR videoSession;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVideoSessionParametersTemplate(VkVideoSessionParametersKHR @videoSessionParametersTemplate) mut { videoSessionParametersTemplate = @videoSessionParametersTemplate;  return ref this; }
		public ref Self setVideoSession(VkVideoSessionKHR @videoSession) mut { videoSession = @videoSession;  return ref this; }
	}

	[CRepr]
	public struct VkVideoSessionParametersUpdateInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR;
		public void* pNext = null;
		public uint32 updateSequenceCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setUpdateSequenceCount(uint32 @updateSequenceCount) mut { updateSequenceCount = @updateSequenceCount;  return ref this; }
	}

	[CRepr]
	public struct VkVideoBeginCodingInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_BEGIN_CODING_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;
		public VkVideoCodingQualityPresetFlagsKHR codecQualityPreset;
		public VkVideoSessionKHR videoSession;
		public VkVideoSessionParametersKHR videoSessionParameters;
		public uint32 referenceSlotCount;
		public VkVideoReferenceSlotKHR* pReferenceSlots;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCodecQualityPreset(VkVideoCodingQualityPresetFlagsKHR @codecQualityPreset) mut { codecQualityPreset = @codecQualityPreset;  return ref this; }
		public ref Self setVideoSession(VkVideoSessionKHR @videoSession) mut { videoSession = @videoSession;  return ref this; }
		public ref Self setVideoSessionParameters(VkVideoSessionParametersKHR @videoSessionParameters) mut { videoSessionParameters = @videoSessionParameters;  return ref this; }
		public ref Self setReferenceSlotCount(uint32 @referenceSlotCount) mut { referenceSlotCount = @referenceSlotCount;  return ref this; }
		public ref Self setPReferenceSlots(VkVideoReferenceSlotKHR* @pReferenceSlots) mut { pReferenceSlots = @pReferenceSlots;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEndCodingInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_END_CODING_INFO_KHR;
		public void* pNext = null;
		public uint32 flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkVideoCodingControlInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_CODING_CONTROL_INFO_KHR;
		public void* pNext = null;
		public VkVideoCodingControlFlagsKHR flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoCodingControlFlagsKHR @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_INFO_KHR;
		public void* pNext = null;
		public VkVideoEncodeFlagsKHR flags;
		public uint32 qualityLevel;
		public VkBuffer dstBitstreamBuffer;
		public uint64 dstBitstreamBufferOffset;
		public uint64 dstBitstreamBufferMaxRange;
		public VkVideoPictureResourceKHR srcPictureResource;
		public VkVideoReferenceSlotKHR* pSetupReferenceSlot;
		public uint32 referenceSlotCount;
		public VkVideoReferenceSlotKHR* pReferenceSlots;
		public uint32 precedingExternallyEncodedBytes;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoEncodeFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setQualityLevel(uint32 @qualityLevel) mut { qualityLevel = @qualityLevel;  return ref this; }
		public ref Self setDstBitstreamBuffer(VkBuffer @dstBitstreamBuffer) mut { dstBitstreamBuffer = @dstBitstreamBuffer;  return ref this; }
		public ref Self setDstBitstreamBufferOffset(uint64 @dstBitstreamBufferOffset) mut { dstBitstreamBufferOffset = @dstBitstreamBufferOffset;  return ref this; }
		public ref Self setDstBitstreamBufferMaxRange(uint64 @dstBitstreamBufferMaxRange) mut { dstBitstreamBufferMaxRange = @dstBitstreamBufferMaxRange;  return ref this; }
		public ref Self setSrcPictureResource(VkVideoPictureResourceKHR @srcPictureResource) mut { srcPictureResource = @srcPictureResource;  return ref this; }
		public ref Self setPSetupReferenceSlot(VkVideoReferenceSlotKHR* @pSetupReferenceSlot) mut { pSetupReferenceSlot = @pSetupReferenceSlot;  return ref this; }
		public ref Self setReferenceSlotCount(uint32 @referenceSlotCount) mut { referenceSlotCount = @referenceSlotCount;  return ref this; }
		public ref Self setPReferenceSlots(VkVideoReferenceSlotKHR* @pReferenceSlots) mut { pReferenceSlots = @pReferenceSlots;  return ref this; }
		public ref Self setPrecedingExternallyEncodedBytes(uint32 @precedingExternallyEncodedBytes) mut { precedingExternallyEncodedBytes = @precedingExternallyEncodedBytes;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeRateControlInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_INFO_KHR;
		public void* pNext = null;
		public VkVideoEncodeRateControlFlagsKHR flags;
		public VkVideoEncodeRateControlModeFlagsKHR rateControlMode;
		public uint8 layerCount;
		public VkVideoEncodeRateControlLayerInfoKHR* pLayerConfigs;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoEncodeRateControlFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRateControlMode(VkVideoEncodeRateControlModeFlagsKHR @rateControlMode) mut { rateControlMode = @rateControlMode;  return ref this; }
		public ref Self setLayerCount(uint8 @layerCount) mut { layerCount = @layerCount;  return ref this; }
		public ref Self setPLayerConfigs(VkVideoEncodeRateControlLayerInfoKHR* @pLayerConfigs) mut { pLayerConfigs = @pLayerConfigs;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeRateControlLayerInfoKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR;
		public void* pNext = null;
		public uint32 averageBitrate;
		public uint32 maxBitrate;
		public uint32 frameRateNumerator;
		public uint32 frameRateDenominator;
		public uint32 virtualBufferSizeInMs;
		public uint32 initialVirtualBufferSizeInMs;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setAverageBitrate(uint32 @averageBitrate) mut { averageBitrate = @averageBitrate;  return ref this; }
		public ref Self setMaxBitrate(uint32 @maxBitrate) mut { maxBitrate = @maxBitrate;  return ref this; }
		public ref Self setFrameRateNumerator(uint32 @frameRateNumerator) mut { frameRateNumerator = @frameRateNumerator;  return ref this; }
		public ref Self setFrameRateDenominator(uint32 @frameRateDenominator) mut { frameRateDenominator = @frameRateDenominator;  return ref this; }
		public ref Self setVirtualBufferSizeInMs(uint32 @virtualBufferSizeInMs) mut { virtualBufferSizeInMs = @virtualBufferSizeInMs;  return ref this; }
		public ref Self setInitialVirtualBufferSizeInMs(uint32 @initialVirtualBufferSizeInMs) mut { initialVirtualBufferSizeInMs = @initialVirtualBufferSizeInMs;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeCapabilitiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_CAPABILITIES_KHR;
		public void* pNext = null;
		public VkVideoEncodeCapabilityFlagsKHR flags;
		public VkVideoEncodeRateControlModeFlagsKHR rateControlModes;
		public uint8 rateControlLayerCount;
		public uint8 qualityLevelCount;
		public VkExtent2D inputImageDataFillAlignment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoEncodeCapabilityFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRateControlModes(VkVideoEncodeRateControlModeFlagsKHR @rateControlModes) mut { rateControlModes = @rateControlModes;  return ref this; }
		public ref Self setRateControlLayerCount(uint8 @rateControlLayerCount) mut { rateControlLayerCount = @rateControlLayerCount;  return ref this; }
		public ref Self setQualityLevelCount(uint8 @qualityLevelCount) mut { qualityLevelCount = @qualityLevelCount;  return ref this; }
		public ref Self setInputImageDataFillAlignment(VkExtent2D @inputImageDataFillAlignment) mut { inputImageDataFillAlignment = @inputImageDataFillAlignment;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264CapabilitiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_CAPABILITIES_EXT;
		public void* pNext = null;
		public VkVideoEncodeH264CapabilityFlagsEXT flags;
		public VkVideoEncodeH264InputModeFlagsEXT inputModeFlags;
		public VkVideoEncodeH264OutputModeFlagsEXT outputModeFlags;
		public uint8 maxPPictureL0ReferenceCount;
		public uint8 maxBPictureL0ReferenceCount;
		public uint8 maxL1ReferenceCount;
		public VkBool32 motionVectorsOverPicBoundariesFlag;
		public uint32 maxBytesPerPicDenom;
		public uint32 maxBitsPerMbDenom;
		public uint32 log2MaxMvLengthHorizontal;
		public uint32 log2MaxMvLengthVertical;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoEncodeH264CapabilityFlagsEXT @flags) mut { flags = @flags;  return ref this; }
		public ref Self setInputModeFlags(VkVideoEncodeH264InputModeFlagsEXT @inputModeFlags) mut { inputModeFlags = @inputModeFlags;  return ref this; }
		public ref Self setOutputModeFlags(VkVideoEncodeH264OutputModeFlagsEXT @outputModeFlags) mut { outputModeFlags = @outputModeFlags;  return ref this; }
		public ref Self setMaxPPictureL0ReferenceCount(uint8 @maxPPictureL0ReferenceCount) mut { maxPPictureL0ReferenceCount = @maxPPictureL0ReferenceCount;  return ref this; }
		public ref Self setMaxBPictureL0ReferenceCount(uint8 @maxBPictureL0ReferenceCount) mut { maxBPictureL0ReferenceCount = @maxBPictureL0ReferenceCount;  return ref this; }
		public ref Self setMaxL1ReferenceCount(uint8 @maxL1ReferenceCount) mut { maxL1ReferenceCount = @maxL1ReferenceCount;  return ref this; }
		public ref Self setMotionVectorsOverPicBoundariesFlag(VkBool32 @motionVectorsOverPicBoundariesFlag) mut { motionVectorsOverPicBoundariesFlag = @motionVectorsOverPicBoundariesFlag;  return ref this; }
		public ref Self setMaxBytesPerPicDenom(uint32 @maxBytesPerPicDenom) mut { maxBytesPerPicDenom = @maxBytesPerPicDenom;  return ref this; }
		public ref Self setMaxBitsPerMbDenom(uint32 @maxBitsPerMbDenom) mut { maxBitsPerMbDenom = @maxBitsPerMbDenom;  return ref this; }
		public ref Self setLog2MaxMvLengthHorizontal(uint32 @log2MaxMvLengthHorizontal) mut { log2MaxMvLengthHorizontal = @log2MaxMvLengthHorizontal;  return ref this; }
		public ref Self setLog2MaxMvLengthVertical(uint32 @log2MaxMvLengthVertical) mut { log2MaxMvLengthVertical = @log2MaxMvLengthVertical;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264SessionParametersAddInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_EXT;
		public void* pNext = null;
		public uint32 spsStdCount;
		public void* pSpsStd;
		public uint32 ppsStdCount;
		public void* pPpsStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSpsStdCount(uint32 @spsStdCount) mut { spsStdCount = @spsStdCount;  return ref this; }
		public ref Self setPSpsStd(void* @pSpsStd) mut { pSpsStd = @pSpsStd;  return ref this; }
		public ref Self setPpsStdCount(uint32 @ppsStdCount) mut { ppsStdCount = @ppsStdCount;  return ref this; }
		public ref Self setPPpsStd(void* @pPpsStd) mut { pPpsStd = @pPpsStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264SessionParametersCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 maxSpsStdCount;
		public uint32 maxPpsStdCount;
		public VkVideoEncodeH264SessionParametersAddInfoEXT* pParametersAddInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxSpsStdCount(uint32 @maxSpsStdCount) mut { maxSpsStdCount = @maxSpsStdCount;  return ref this; }
		public ref Self setMaxPpsStdCount(uint32 @maxPpsStdCount) mut { maxPpsStdCount = @maxPpsStdCount;  return ref this; }
		public ref Self setPParametersAddInfo(VkVideoEncodeH264SessionParametersAddInfoEXT* @pParametersAddInfo) mut { pParametersAddInfo = @pParametersAddInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264DpbSlotInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_DPB_SLOT_INFO_EXT;
		public void* pNext = null;
		public int8 slotIndex;
		public void* pStdReferenceInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSlotIndex(int8 @slotIndex) mut { slotIndex = @slotIndex;  return ref this; }
		public ref Self setPStdReferenceInfo(void* @pStdReferenceInfo) mut { pStdReferenceInfo = @pStdReferenceInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264VclFrameInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_VCL_FRAME_INFO_EXT;
		public void* pNext = null;
		public VkVideoEncodeH264ReferenceListsEXT* pReferenceFinalLists;
		public uint32 naluSliceEntryCount;
		public VkVideoEncodeH264NaluSliceEXT* pNaluSliceEntries;
		public void* pCurrentPictureInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPReferenceFinalLists(VkVideoEncodeH264ReferenceListsEXT* @pReferenceFinalLists) mut { pReferenceFinalLists = @pReferenceFinalLists;  return ref this; }
		public ref Self setNaluSliceEntryCount(uint32 @naluSliceEntryCount) mut { naluSliceEntryCount = @naluSliceEntryCount;  return ref this; }
		public ref Self setPNaluSliceEntries(VkVideoEncodeH264NaluSliceEXT* @pNaluSliceEntries) mut { pNaluSliceEntries = @pNaluSliceEntries;  return ref this; }
		public ref Self setPCurrentPictureInfo(void* @pCurrentPictureInfo) mut { pCurrentPictureInfo = @pCurrentPictureInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264ReferenceListsEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_REFERENCE_LISTS_EXT;
		public void* pNext = null;
		public uint8 referenceList0EntryCount;
		public VkVideoEncodeH264DpbSlotInfoEXT* pReferenceList0Entries;
		public uint8 referenceList1EntryCount;
		public VkVideoEncodeH264DpbSlotInfoEXT* pReferenceList1Entries;
		public void* pMemMgmtCtrlOperations;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setReferenceList0EntryCount(uint8 @referenceList0EntryCount) mut { referenceList0EntryCount = @referenceList0EntryCount;  return ref this; }
		public ref Self setPReferenceList0Entries(VkVideoEncodeH264DpbSlotInfoEXT* @pReferenceList0Entries) mut { pReferenceList0Entries = @pReferenceList0Entries;  return ref this; }
		public ref Self setReferenceList1EntryCount(uint8 @referenceList1EntryCount) mut { referenceList1EntryCount = @referenceList1EntryCount;  return ref this; }
		public ref Self setPReferenceList1Entries(VkVideoEncodeH264DpbSlotInfoEXT* @pReferenceList1Entries) mut { pReferenceList1Entries = @pReferenceList1Entries;  return ref this; }
		public ref Self setPMemMgmtCtrlOperations(void* @pMemMgmtCtrlOperations) mut { pMemMgmtCtrlOperations = @pMemMgmtCtrlOperations;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264EmitPictureParametersEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_EMIT_PICTURE_PARAMETERS_EXT;
		public void* pNext = null;
		public uint8 spsId;
		public VkBool32 emitSpsEnable;
		public uint32 ppsIdEntryCount;
		public uint8* ppsIdEntries;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSpsId(uint8 @spsId) mut { spsId = @spsId;  return ref this; }
		public ref Self setEmitSpsEnable(VkBool32 @emitSpsEnable) mut { emitSpsEnable = @emitSpsEnable;  return ref this; }
		public ref Self setPpsIdEntryCount(uint32 @ppsIdEntryCount) mut { ppsIdEntryCount = @ppsIdEntryCount;  return ref this; }
		public ref Self setPpsIdEntries(uint8* @ppsIdEntries) mut { ppsIdEntries = @ppsIdEntries;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264ProfileEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_PROFILE_EXT;
		public void* pNext = null;
		public void* stdProfileIdc;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStdProfileIdc(void* @stdProfileIdc) mut { stdProfileIdc = @stdProfileIdc;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264NaluSliceEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_NALU_SLICE_EXT;
		public void* pNext = null;
		public uint32 mbCount;
		public VkVideoEncodeH264ReferenceListsEXT* pReferenceFinalLists;
		public void* pSliceHeaderStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMbCount(uint32 @mbCount) mut { mbCount = @mbCount;  return ref this; }
		public ref Self setPReferenceFinalLists(VkVideoEncodeH264ReferenceListsEXT* @pReferenceFinalLists) mut { pReferenceFinalLists = @pReferenceFinalLists;  return ref this; }
		public ref Self setPSliceHeaderStd(void* @pSliceHeaderStd) mut { pSliceHeaderStd = @pSliceHeaderStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264RateControlInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_INFO_EXT;
		public void* pNext = null;
		public uint32 gopFrameCount;
		public uint32 idrPeriod;
		public uint32 consecutiveBFrameCount;
		public VkVideoEncodeH264RateControlStructureFlagsEXT rateControlStructure;
		public uint8 temporalLayerCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGopFrameCount(uint32 @gopFrameCount) mut { gopFrameCount = @gopFrameCount;  return ref this; }
		public ref Self setIdrPeriod(uint32 @idrPeriod) mut { idrPeriod = @idrPeriod;  return ref this; }
		public ref Self setConsecutiveBFrameCount(uint32 @consecutiveBFrameCount) mut { consecutiveBFrameCount = @consecutiveBFrameCount;  return ref this; }
		public ref Self setRateControlStructure(VkVideoEncodeH264RateControlStructureFlagsEXT @rateControlStructure) mut { rateControlStructure = @rateControlStructure;  return ref this; }
		public ref Self setTemporalLayerCount(uint8 @temporalLayerCount) mut { temporalLayerCount = @temporalLayerCount;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264QpEXT
	{
		public int32 qpI;
		public int32 qpP;
		public int32 qpB;

		public ref Self setQpI(int32 @qpI) mut { qpI = @qpI;  return ref this; }
		public ref Self setQpP(int32 @qpP) mut { qpP = @qpP;  return ref this; }
		public ref Self setQpB(int32 @qpB) mut { qpB = @qpB;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264FrameSizeEXT
	{
		public uint32 frameISize;
		public uint32 framePSize;
		public uint32 frameBSize;

		public ref Self setFrameISize(uint32 @frameISize) mut { frameISize = @frameISize;  return ref this; }
		public ref Self setFramePSize(uint32 @framePSize) mut { framePSize = @framePSize;  return ref this; }
		public ref Self setFrameBSize(uint32 @frameBSize) mut { frameBSize = @frameBSize;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH264RateControlLayerInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_EXT;
		public void* pNext = null;
		public uint8 temporalLayerId;
		public VkBool32 useInitialRcQp;
		public VkVideoEncodeH264QpEXT initialRcQp;
		public VkBool32 useMinQp;
		public VkVideoEncodeH264QpEXT minQp;
		public VkBool32 useMaxQp;
		public VkVideoEncodeH264QpEXT maxQp;
		public VkBool32 useMaxFrameSize;
		public VkVideoEncodeH264FrameSizeEXT maxFrameSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTemporalLayerId(uint8 @temporalLayerId) mut { temporalLayerId = @temporalLayerId;  return ref this; }
		public ref Self setUseInitialRcQp(VkBool32 @useInitialRcQp) mut { useInitialRcQp = @useInitialRcQp;  return ref this; }
		public ref Self setInitialRcQp(VkVideoEncodeH264QpEXT @initialRcQp) mut { initialRcQp = @initialRcQp;  return ref this; }
		public ref Self setUseMinQp(VkBool32 @useMinQp) mut { useMinQp = @useMinQp;  return ref this; }
		public ref Self setMinQp(VkVideoEncodeH264QpEXT @minQp) mut { minQp = @minQp;  return ref this; }
		public ref Self setUseMaxQp(VkBool32 @useMaxQp) mut { useMaxQp = @useMaxQp;  return ref this; }
		public ref Self setMaxQp(VkVideoEncodeH264QpEXT @maxQp) mut { maxQp = @maxQp;  return ref this; }
		public ref Self setUseMaxFrameSize(VkBool32 @useMaxFrameSize) mut { useMaxFrameSize = @useMaxFrameSize;  return ref this; }
		public ref Self setMaxFrameSize(VkVideoEncodeH264FrameSizeEXT @maxFrameSize) mut { maxFrameSize = @maxFrameSize;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265CapabilitiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_CAPABILITIES_EXT;
		public void* pNext = null;
		public VkVideoEncodeH265CapabilityFlagsEXT flags;
		public VkVideoEncodeH265InputModeFlagsEXT inputModeFlags;
		public VkVideoEncodeH265OutputModeFlagsEXT outputModeFlags;
		public VkVideoEncodeH265CtbSizeFlagsEXT ctbSizes;
		public VkVideoEncodeH265TransformBlockSizeFlagsEXT transformBlockSizes;
		public uint8 maxPPictureL0ReferenceCount;
		public uint8 maxBPictureL0ReferenceCount;
		public uint8 maxL1ReferenceCount;
		public uint8 maxSubLayersCount;
		public uint8 minLog2MinLumaCodingBlockSizeMinus3;
		public uint8 maxLog2MinLumaCodingBlockSizeMinus3;
		public uint8 minLog2MinLumaTransformBlockSizeMinus2;
		public uint8 maxLog2MinLumaTransformBlockSizeMinus2;
		public uint8 minMaxTransformHierarchyDepthInter;
		public uint8 maxMaxTransformHierarchyDepthInter;
		public uint8 minMaxTransformHierarchyDepthIntra;
		public uint8 maxMaxTransformHierarchyDepthIntra;
		public uint8 maxDiffCuQpDeltaDepth;
		public uint8 minMaxNumMergeCand;
		public uint8 maxMaxNumMergeCand;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkVideoEncodeH265CapabilityFlagsEXT @flags) mut { flags = @flags;  return ref this; }
		public ref Self setInputModeFlags(VkVideoEncodeH265InputModeFlagsEXT @inputModeFlags) mut { inputModeFlags = @inputModeFlags;  return ref this; }
		public ref Self setOutputModeFlags(VkVideoEncodeH265OutputModeFlagsEXT @outputModeFlags) mut { outputModeFlags = @outputModeFlags;  return ref this; }
		public ref Self setCtbSizes(VkVideoEncodeH265CtbSizeFlagsEXT @ctbSizes) mut { ctbSizes = @ctbSizes;  return ref this; }
		public ref Self setTransformBlockSizes(VkVideoEncodeH265TransformBlockSizeFlagsEXT @transformBlockSizes) mut { transformBlockSizes = @transformBlockSizes;  return ref this; }
		public ref Self setMaxPPictureL0ReferenceCount(uint8 @maxPPictureL0ReferenceCount) mut { maxPPictureL0ReferenceCount = @maxPPictureL0ReferenceCount;  return ref this; }
		public ref Self setMaxBPictureL0ReferenceCount(uint8 @maxBPictureL0ReferenceCount) mut { maxBPictureL0ReferenceCount = @maxBPictureL0ReferenceCount;  return ref this; }
		public ref Self setMaxL1ReferenceCount(uint8 @maxL1ReferenceCount) mut { maxL1ReferenceCount = @maxL1ReferenceCount;  return ref this; }
		public ref Self setMaxSubLayersCount(uint8 @maxSubLayersCount) mut { maxSubLayersCount = @maxSubLayersCount;  return ref this; }
		public ref Self setMinLog2MinLumaCodingBlockSizeMinus3(uint8 @minLog2MinLumaCodingBlockSizeMinus3) mut { minLog2MinLumaCodingBlockSizeMinus3 = @minLog2MinLumaCodingBlockSizeMinus3;  return ref this; }
		public ref Self setMaxLog2MinLumaCodingBlockSizeMinus3(uint8 @maxLog2MinLumaCodingBlockSizeMinus3) mut { maxLog2MinLumaCodingBlockSizeMinus3 = @maxLog2MinLumaCodingBlockSizeMinus3;  return ref this; }
		public ref Self setMinLog2MinLumaTransformBlockSizeMinus2(uint8 @minLog2MinLumaTransformBlockSizeMinus2) mut { minLog2MinLumaTransformBlockSizeMinus2 = @minLog2MinLumaTransformBlockSizeMinus2;  return ref this; }
		public ref Self setMaxLog2MinLumaTransformBlockSizeMinus2(uint8 @maxLog2MinLumaTransformBlockSizeMinus2) mut { maxLog2MinLumaTransformBlockSizeMinus2 = @maxLog2MinLumaTransformBlockSizeMinus2;  return ref this; }
		public ref Self setMinMaxTransformHierarchyDepthInter(uint8 @minMaxTransformHierarchyDepthInter) mut { minMaxTransformHierarchyDepthInter = @minMaxTransformHierarchyDepthInter;  return ref this; }
		public ref Self setMaxMaxTransformHierarchyDepthInter(uint8 @maxMaxTransformHierarchyDepthInter) mut { maxMaxTransformHierarchyDepthInter = @maxMaxTransformHierarchyDepthInter;  return ref this; }
		public ref Self setMinMaxTransformHierarchyDepthIntra(uint8 @minMaxTransformHierarchyDepthIntra) mut { minMaxTransformHierarchyDepthIntra = @minMaxTransformHierarchyDepthIntra;  return ref this; }
		public ref Self setMaxMaxTransformHierarchyDepthIntra(uint8 @maxMaxTransformHierarchyDepthIntra) mut { maxMaxTransformHierarchyDepthIntra = @maxMaxTransformHierarchyDepthIntra;  return ref this; }
		public ref Self setMaxDiffCuQpDeltaDepth(uint8 @maxDiffCuQpDeltaDepth) mut { maxDiffCuQpDeltaDepth = @maxDiffCuQpDeltaDepth;  return ref this; }
		public ref Self setMinMaxNumMergeCand(uint8 @minMaxNumMergeCand) mut { minMaxNumMergeCand = @minMaxNumMergeCand;  return ref this; }
		public ref Self setMaxMaxNumMergeCand(uint8 @maxMaxNumMergeCand) mut { maxMaxNumMergeCand = @maxMaxNumMergeCand;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265SessionParametersAddInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_EXT;
		public void* pNext = null;
		public uint32 vpsStdCount;
		public void* pVpsStd;
		public uint32 spsStdCount;
		public void* pSpsStd;
		public uint32 ppsStdCount;
		public void* pPpsStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVpsStdCount(uint32 @vpsStdCount) mut { vpsStdCount = @vpsStdCount;  return ref this; }
		public ref Self setPVpsStd(void* @pVpsStd) mut { pVpsStd = @pVpsStd;  return ref this; }
		public ref Self setSpsStdCount(uint32 @spsStdCount) mut { spsStdCount = @spsStdCount;  return ref this; }
		public ref Self setPSpsStd(void* @pSpsStd) mut { pSpsStd = @pSpsStd;  return ref this; }
		public ref Self setPpsStdCount(uint32 @ppsStdCount) mut { ppsStdCount = @ppsStdCount;  return ref this; }
		public ref Self setPPpsStd(void* @pPpsStd) mut { pPpsStd = @pPpsStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265SessionParametersCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_EXT;
		public void* pNext = null;
		public uint32 maxVpsStdCount;
		public uint32 maxSpsStdCount;
		public uint32 maxPpsStdCount;
		public VkVideoEncodeH265SessionParametersAddInfoEXT* pParametersAddInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxVpsStdCount(uint32 @maxVpsStdCount) mut { maxVpsStdCount = @maxVpsStdCount;  return ref this; }
		public ref Self setMaxSpsStdCount(uint32 @maxSpsStdCount) mut { maxSpsStdCount = @maxSpsStdCount;  return ref this; }
		public ref Self setMaxPpsStdCount(uint32 @maxPpsStdCount) mut { maxPpsStdCount = @maxPpsStdCount;  return ref this; }
		public ref Self setPParametersAddInfo(VkVideoEncodeH265SessionParametersAddInfoEXT* @pParametersAddInfo) mut { pParametersAddInfo = @pParametersAddInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265VclFrameInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_VCL_FRAME_INFO_EXT;
		public void* pNext = null;
		public VkVideoEncodeH265ReferenceListsEXT* pReferenceFinalLists;
		public uint32 naluSliceSegmentEntryCount;
		public VkVideoEncodeH265NaluSliceSegmentEXT* pNaluSliceSegmentEntries;
		public void* pCurrentPictureInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPReferenceFinalLists(VkVideoEncodeH265ReferenceListsEXT* @pReferenceFinalLists) mut { pReferenceFinalLists = @pReferenceFinalLists;  return ref this; }
		public ref Self setNaluSliceSegmentEntryCount(uint32 @naluSliceSegmentEntryCount) mut { naluSliceSegmentEntryCount = @naluSliceSegmentEntryCount;  return ref this; }
		public ref Self setPNaluSliceSegmentEntries(VkVideoEncodeH265NaluSliceSegmentEXT* @pNaluSliceSegmentEntries) mut { pNaluSliceSegmentEntries = @pNaluSliceSegmentEntries;  return ref this; }
		public ref Self setPCurrentPictureInfo(void* @pCurrentPictureInfo) mut { pCurrentPictureInfo = @pCurrentPictureInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265EmitPictureParametersEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_EMIT_PICTURE_PARAMETERS_EXT;
		public void* pNext = null;
		public uint8 vpsId;
		public uint8 spsId;
		public VkBool32 emitVpsEnable;
		public VkBool32 emitSpsEnable;
		public uint32 ppsIdEntryCount;
		public uint8* ppsIdEntries;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVpsId(uint8 @vpsId) mut { vpsId = @vpsId;  return ref this; }
		public ref Self setSpsId(uint8 @spsId) mut { spsId = @spsId;  return ref this; }
		public ref Self setEmitVpsEnable(VkBool32 @emitVpsEnable) mut { emitVpsEnable = @emitVpsEnable;  return ref this; }
		public ref Self setEmitSpsEnable(VkBool32 @emitSpsEnable) mut { emitSpsEnable = @emitSpsEnable;  return ref this; }
		public ref Self setPpsIdEntryCount(uint32 @ppsIdEntryCount) mut { ppsIdEntryCount = @ppsIdEntryCount;  return ref this; }
		public ref Self setPpsIdEntries(uint8* @ppsIdEntries) mut { ppsIdEntries = @ppsIdEntries;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265NaluSliceSegmentEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_EXT;
		public void* pNext = null;
		public uint32 ctbCount;
		public VkVideoEncodeH265ReferenceListsEXT* pReferenceFinalLists;
		public void* pSliceSegmentHeaderStd;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCtbCount(uint32 @ctbCount) mut { ctbCount = @ctbCount;  return ref this; }
		public ref Self setPReferenceFinalLists(VkVideoEncodeH265ReferenceListsEXT* @pReferenceFinalLists) mut { pReferenceFinalLists = @pReferenceFinalLists;  return ref this; }
		public ref Self setPSliceSegmentHeaderStd(void* @pSliceSegmentHeaderStd) mut { pSliceSegmentHeaderStd = @pSliceSegmentHeaderStd;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265RateControlInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_INFO_EXT;
		public void* pNext = null;
		public uint32 gopFrameCount;
		public uint32 idrPeriod;
		public uint32 consecutiveBFrameCount;
		public VkVideoEncodeH265RateControlStructureFlagsEXT rateControlStructure;
		public uint8 subLayerCount;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGopFrameCount(uint32 @gopFrameCount) mut { gopFrameCount = @gopFrameCount;  return ref this; }
		public ref Self setIdrPeriod(uint32 @idrPeriod) mut { idrPeriod = @idrPeriod;  return ref this; }
		public ref Self setConsecutiveBFrameCount(uint32 @consecutiveBFrameCount) mut { consecutiveBFrameCount = @consecutiveBFrameCount;  return ref this; }
		public ref Self setRateControlStructure(VkVideoEncodeH265RateControlStructureFlagsEXT @rateControlStructure) mut { rateControlStructure = @rateControlStructure;  return ref this; }
		public ref Self setSubLayerCount(uint8 @subLayerCount) mut { subLayerCount = @subLayerCount;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265QpEXT
	{
		public int32 qpI;
		public int32 qpP;
		public int32 qpB;

		public ref Self setQpI(int32 @qpI) mut { qpI = @qpI;  return ref this; }
		public ref Self setQpP(int32 @qpP) mut { qpP = @qpP;  return ref this; }
		public ref Self setQpB(int32 @qpB) mut { qpB = @qpB;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265FrameSizeEXT
	{
		public uint32 frameISize;
		public uint32 framePSize;
		public uint32 frameBSize;

		public ref Self setFrameISize(uint32 @frameISize) mut { frameISize = @frameISize;  return ref this; }
		public ref Self setFramePSize(uint32 @framePSize) mut { framePSize = @framePSize;  return ref this; }
		public ref Self setFrameBSize(uint32 @frameBSize) mut { frameBSize = @frameBSize;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265RateControlLayerInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_EXT;
		public void* pNext = null;
		public uint8 temporalId;
		public VkBool32 useInitialRcQp;
		public VkVideoEncodeH265QpEXT initialRcQp;
		public VkBool32 useMinQp;
		public VkVideoEncodeH265QpEXT minQp;
		public VkBool32 useMaxQp;
		public VkVideoEncodeH265QpEXT maxQp;
		public VkBool32 useMaxFrameSize;
		public VkVideoEncodeH265FrameSizeEXT maxFrameSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTemporalId(uint8 @temporalId) mut { temporalId = @temporalId;  return ref this; }
		public ref Self setUseInitialRcQp(VkBool32 @useInitialRcQp) mut { useInitialRcQp = @useInitialRcQp;  return ref this; }
		public ref Self setInitialRcQp(VkVideoEncodeH265QpEXT @initialRcQp) mut { initialRcQp = @initialRcQp;  return ref this; }
		public ref Self setUseMinQp(VkBool32 @useMinQp) mut { useMinQp = @useMinQp;  return ref this; }
		public ref Self setMinQp(VkVideoEncodeH265QpEXT @minQp) mut { minQp = @minQp;  return ref this; }
		public ref Self setUseMaxQp(VkBool32 @useMaxQp) mut { useMaxQp = @useMaxQp;  return ref this; }
		public ref Self setMaxQp(VkVideoEncodeH265QpEXT @maxQp) mut { maxQp = @maxQp;  return ref this; }
		public ref Self setUseMaxFrameSize(VkBool32 @useMaxFrameSize) mut { useMaxFrameSize = @useMaxFrameSize;  return ref this; }
		public ref Self setMaxFrameSize(VkVideoEncodeH265FrameSizeEXT @maxFrameSize) mut { maxFrameSize = @maxFrameSize;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265ProfileEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_PROFILE_EXT;
		public void* pNext = null;
		public void* stdProfileIdc;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setStdProfileIdc(void* @stdProfileIdc) mut { stdProfileIdc = @stdProfileIdc;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265DpbSlotInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_DPB_SLOT_INFO_EXT;
		public void* pNext = null;
		public int8 slotIndex;
		public void* pStdReferenceInfo;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSlotIndex(int8 @slotIndex) mut { slotIndex = @slotIndex;  return ref this; }
		public ref Self setPStdReferenceInfo(void* @pStdReferenceInfo) mut { pStdReferenceInfo = @pStdReferenceInfo;  return ref this; }
	}

	[CRepr]
	public struct VkVideoEncodeH265ReferenceListsEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_REFERENCE_LISTS_EXT;
		public void* pNext = null;
		public uint8 referenceList0EntryCount;
		public VkVideoEncodeH265DpbSlotInfoEXT* pReferenceList0Entries;
		public uint8 referenceList1EntryCount;
		public VkVideoEncodeH265DpbSlotInfoEXT* pReferenceList1Entries;
		public void* pReferenceModifications;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setReferenceList0EntryCount(uint8 @referenceList0EntryCount) mut { referenceList0EntryCount = @referenceList0EntryCount;  return ref this; }
		public ref Self setPReferenceList0Entries(VkVideoEncodeH265DpbSlotInfoEXT* @pReferenceList0Entries) mut { pReferenceList0Entries = @pReferenceList0Entries;  return ref this; }
		public ref Self setReferenceList1EntryCount(uint8 @referenceList1EntryCount) mut { referenceList1EntryCount = @referenceList1EntryCount;  return ref this; }
		public ref Self setPReferenceList1Entries(VkVideoEncodeH265DpbSlotInfoEXT* @pReferenceList1Entries) mut { pReferenceList1Entries = @pReferenceList1Entries;  return ref this; }
		public ref Self setPReferenceModifications(void* @pReferenceModifications) mut { pReferenceModifications = @pReferenceModifications;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceInheritedViewportScissorFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 inheritedViewportScissor2D;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setInheritedViewportScissor2D(VkBool32 @inheritedViewportScissor2D) mut { inheritedViewportScissor2D = @inheritedViewportScissor2D;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferInheritanceViewportScissorInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV;
		public void* pNext = null;
		public VkBool32 viewportScissor2D;
		public uint32 viewportDepthCount;
		public VkViewport* pViewportDepths;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setViewportScissor2D(VkBool32 @viewportScissor2D) mut { viewportScissor2D = @viewportScissor2D;  return ref this; }
		public ref Self setViewportDepthCount(uint32 @viewportDepthCount) mut { viewportDepthCount = @viewportDepthCount;  return ref this; }
		public ref Self setPViewportDepths(VkViewport* @pViewportDepths) mut { pViewportDepths = @pViewportDepths;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 ycbcr2plane444Formats;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setYcbcr2plane444Formats(VkBool32 @ycbcr2plane444Formats) mut { ycbcr2plane444Formats = @ycbcr2plane444Formats;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProvokingVertexFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 provokingVertexLast;
		public VkBool32 transformFeedbackPreservesProvokingVertex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProvokingVertexLast(VkBool32 @provokingVertexLast) mut { provokingVertexLast = @provokingVertexLast;  return ref this; }
		public ref Self setTransformFeedbackPreservesProvokingVertex(VkBool32 @transformFeedbackPreservesProvokingVertex) mut { transformFeedbackPreservesProvokingVertex = @transformFeedbackPreservesProvokingVertex;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceProvokingVertexPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT;
		public void* pNext = null;
		public VkBool32 provokingVertexModePerPipeline;
		public VkBool32 transformFeedbackPreservesTriangleFanProvokingVertex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProvokingVertexModePerPipeline(VkBool32 @provokingVertexModePerPipeline) mut { provokingVertexModePerPipeline = @provokingVertexModePerPipeline;  return ref this; }
		public ref Self setTransformFeedbackPreservesTriangleFanProvokingVertex(VkBool32 @transformFeedbackPreservesTriangleFanProvokingVertex) mut { transformFeedbackPreservesTriangleFanProvokingVertex = @transformFeedbackPreservesTriangleFanProvokingVertex;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRasterizationProvokingVertexStateCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkProvokingVertexModeEXT provokingVertexMode;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setProvokingVertexMode(VkProvokingVertexModeEXT @provokingVertexMode) mut { provokingVertexMode = @provokingVertexMode;  return ref this; }
	}

	[CRepr]
	public struct VkCuModuleCreateInfoNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CU_MODULE_CREATE_INFO_NVX;
		public void* pNext = null;
		public uint dataSize;
		public void* pData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDataSize(uint @dataSize) mut { dataSize = @dataSize;  return ref this; }
		public ref Self setPData(void* @pData) mut { pData = @pData;  return ref this; }
	}

	[CRepr]
	public struct VkCuFunctionCreateInfoNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CU_FUNCTION_CREATE_INFO_NVX;
		public void* pNext = null;
		public VkCuModuleNVX module;
		public char8* pName;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setModule(VkCuModuleNVX @module) mut { module = @module;  return ref this; }
		public ref Self setPName(char8* @pName) mut { pName = @pName;  return ref this; }
	}

	[CRepr]
	public struct VkCuLaunchInfoNVX
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_CU_LAUNCH_INFO_NVX;
		public void* pNext = null;
		public VkCuFunctionNVX vkfunction;
		public uint32 gridDimX;
		public uint32 gridDimY;
		public uint32 gridDimZ;
		public uint32 blockDimX;
		public uint32 blockDimY;
		public uint32 blockDimZ;
		public uint32 sharedMemBytes;
		public uint paramCount;
		public void* pParams;
		public uint extraCount;
		public void* pExtras;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVkfunction(VkCuFunctionNVX @vkfunction) mut { vkfunction = @vkfunction;  return ref this; }
		public ref Self setGridDimX(uint32 @gridDimX) mut { gridDimX = @gridDimX;  return ref this; }
		public ref Self setGridDimY(uint32 @gridDimY) mut { gridDimY = @gridDimY;  return ref this; }
		public ref Self setGridDimZ(uint32 @gridDimZ) mut { gridDimZ = @gridDimZ;  return ref this; }
		public ref Self setBlockDimX(uint32 @blockDimX) mut { blockDimX = @blockDimX;  return ref this; }
		public ref Self setBlockDimY(uint32 @blockDimY) mut { blockDimY = @blockDimY;  return ref this; }
		public ref Self setBlockDimZ(uint32 @blockDimZ) mut { blockDimZ = @blockDimZ;  return ref this; }
		public ref Self setSharedMemBytes(uint32 @sharedMemBytes) mut { sharedMemBytes = @sharedMemBytes;  return ref this; }
		public ref Self setParamCount(uint @paramCount) mut { paramCount = @paramCount;  return ref this; }
		public ref Self setPParams(void* @pParams) mut { pParams = @pParams;  return ref this; }
		public ref Self setExtraCount(uint @extraCount) mut { extraCount = @extraCount;  return ref this; }
		public ref Self setPExtras(void* @pExtras) mut { pExtras = @pExtras;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderIntegerDotProductFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES;
		public void* pNext = null;
		public VkBool32 shaderIntegerDotProduct;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderIntegerDotProduct(VkBool32 @shaderIntegerDotProduct) mut { shaderIntegerDotProduct = @shaderIntegerDotProduct;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderIntegerDotProductProperties
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES;
		public void* pNext = null;
		public VkBool32 integerDotProduct8BitUnsignedAccelerated;
		public VkBool32 integerDotProduct8BitSignedAccelerated;
		public VkBool32 integerDotProduct8BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedUnsignedAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedSignedAccelerated;
		public VkBool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated;
		public VkBool32 integerDotProduct16BitUnsignedAccelerated;
		public VkBool32 integerDotProduct16BitSignedAccelerated;
		public VkBool32 integerDotProduct16BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct32BitUnsignedAccelerated;
		public VkBool32 integerDotProduct32BitSignedAccelerated;
		public VkBool32 integerDotProduct32BitMixedSignednessAccelerated;
		public VkBool32 integerDotProduct64BitUnsignedAccelerated;
		public VkBool32 integerDotProduct64BitSignedAccelerated;
		public VkBool32 integerDotProduct64BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated;
		public VkBool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setIntegerDotProduct8BitUnsignedAccelerated(VkBool32 @integerDotProduct8BitUnsignedAccelerated) mut { integerDotProduct8BitUnsignedAccelerated = @integerDotProduct8BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct8BitSignedAccelerated(VkBool32 @integerDotProduct8BitSignedAccelerated) mut { integerDotProduct8BitSignedAccelerated = @integerDotProduct8BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct8BitMixedSignednessAccelerated(VkBool32 @integerDotProduct8BitMixedSignednessAccelerated) mut { integerDotProduct8BitMixedSignednessAccelerated = @integerDotProduct8BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedUnsignedAccelerated(VkBool32 @integerDotProduct4x8BitPackedUnsignedAccelerated) mut { integerDotProduct4x8BitPackedUnsignedAccelerated = @integerDotProduct4x8BitPackedUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedSignedAccelerated(VkBool32 @integerDotProduct4x8BitPackedSignedAccelerated) mut { integerDotProduct4x8BitPackedSignedAccelerated = @integerDotProduct4x8BitPackedSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(VkBool32 @integerDotProduct4x8BitPackedMixedSignednessAccelerated) mut { integerDotProduct4x8BitPackedMixedSignednessAccelerated = @integerDotProduct4x8BitPackedMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitUnsignedAccelerated(VkBool32 @integerDotProduct16BitUnsignedAccelerated) mut { integerDotProduct16BitUnsignedAccelerated = @integerDotProduct16BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitSignedAccelerated(VkBool32 @integerDotProduct16BitSignedAccelerated) mut { integerDotProduct16BitSignedAccelerated = @integerDotProduct16BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct16BitMixedSignednessAccelerated(VkBool32 @integerDotProduct16BitMixedSignednessAccelerated) mut { integerDotProduct16BitMixedSignednessAccelerated = @integerDotProduct16BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitUnsignedAccelerated(VkBool32 @integerDotProduct32BitUnsignedAccelerated) mut { integerDotProduct32BitUnsignedAccelerated = @integerDotProduct32BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitSignedAccelerated(VkBool32 @integerDotProduct32BitSignedAccelerated) mut { integerDotProduct32BitSignedAccelerated = @integerDotProduct32BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct32BitMixedSignednessAccelerated(VkBool32 @integerDotProduct32BitMixedSignednessAccelerated) mut { integerDotProduct32BitMixedSignednessAccelerated = @integerDotProduct32BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitUnsignedAccelerated(VkBool32 @integerDotProduct64BitUnsignedAccelerated) mut { integerDotProduct64BitUnsignedAccelerated = @integerDotProduct64BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitSignedAccelerated(VkBool32 @integerDotProduct64BitSignedAccelerated) mut { integerDotProduct64BitSignedAccelerated = @integerDotProduct64BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProduct64BitMixedSignednessAccelerated(VkBool32 @integerDotProduct64BitMixedSignednessAccelerated) mut { integerDotProduct64BitMixedSignednessAccelerated = @integerDotProduct64BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating8BitSignedAccelerated = @integerDotProductAccumulatingSaturating8BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating16BitSignedAccelerated = @integerDotProductAccumulatingSaturating16BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating32BitSignedAccelerated = @integerDotProductAccumulatingSaturating32BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) mut { integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = @integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitSignedAccelerated) mut { integerDotProductAccumulatingSaturating64BitSignedAccelerated = @integerDotProductAccumulatingSaturating64BitSignedAccelerated;  return ref this; }
		public ref Self setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(VkBool32 @integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) mut { integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = @integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDrmPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT;
		public void* pNext = null;
		public VkBool32 hasPrimary;
		public VkBool32 hasRender;
		public int64 primaryMajor;
		public int64 primaryMinor;
		public int64 renderMajor;
		public int64 renderMinor;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setHasPrimary(VkBool32 @hasPrimary) mut { hasPrimary = @hasPrimary;  return ref this; }
		public ref Self setHasRender(VkBool32 @hasRender) mut { hasRender = @hasRender;  return ref this; }
		public ref Self setPrimaryMajor(int64 @primaryMajor) mut { primaryMajor = @primaryMajor;  return ref this; }
		public ref Self setPrimaryMinor(int64 @primaryMinor) mut { primaryMinor = @primaryMinor;  return ref this; }
		public ref Self setRenderMajor(int64 @renderMajor) mut { renderMajor = @renderMajor;  return ref this; }
		public ref Self setRenderMinor(int64 @renderMinor) mut { renderMinor = @renderMinor;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR;
		public void* pNext = null;
		public VkBool32 fragmentShaderBarycentric;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFragmentShaderBarycentric(VkBool32 @fragmentShaderBarycentric) mut { fragmentShaderBarycentric = @fragmentShaderBarycentric;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR;
		public void* pNext = null;
		public VkBool32 triStripVertexOrderIndependentOfProvokingVertex;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setTriStripVertexOrderIndependentOfProvokingVertex(VkBool32 @triStripVertexOrderIndependentOfProvokingVertex) mut { triStripVertexOrderIndependentOfProvokingVertex = @triStripVertexOrderIndependentOfProvokingVertex;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 rayTracingMotionBlur;
		public VkBool32 rayTracingMotionBlurPipelineTraceRaysIndirect;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRayTracingMotionBlur(VkBool32 @rayTracingMotionBlur) mut { rayTracingMotionBlur = @rayTracingMotionBlur;  return ref this; }
		public ref Self setRayTracingMotionBlurPipelineTraceRaysIndirect(VkBool32 @rayTracingMotionBlurPipelineTraceRaysIndirect) mut { rayTracingMotionBlurPipelineTraceRaysIndirect = @rayTracingMotionBlurPipelineTraceRaysIndirect;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureGeometryMotionTrianglesDataNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV;
		public void* pNext = null;
		public VkDeviceOrHostAddressConstKHR vertexData;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setVertexData(VkDeviceOrHostAddressConstKHR @vertexData) mut { vertexData = @vertexData;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureMotionInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV;
		public void* pNext = null;
		public uint32 maxInstances;
		public uint32 flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMaxInstances(uint32 @maxInstances) mut { maxInstances = @maxInstances;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkSRTDataNV
	{
		public float sx;
		public float a;
		public float b;
		public float pvx;
		public float sy;
		public float c;
		public float pvy;
		public float sz;
		public float pvz;
		public float qx;
		public float qy;
		public float qz;
		public float qw;
		public float tx;
		public float ty;
		public float tz;

		public ref Self setSx(float @sx) mut { sx = @sx;  return ref this; }
		public ref Self setA(float @a) mut { a = @a;  return ref this; }
		public ref Self setB(float @b) mut { b = @b;  return ref this; }
		public ref Self setPvx(float @pvx) mut { pvx = @pvx;  return ref this; }
		public ref Self setSy(float @sy) mut { sy = @sy;  return ref this; }
		public ref Self setC(float @c) mut { c = @c;  return ref this; }
		public ref Self setPvy(float @pvy) mut { pvy = @pvy;  return ref this; }
		public ref Self setSz(float @sz) mut { sz = @sz;  return ref this; }
		public ref Self setPvz(float @pvz) mut { pvz = @pvz;  return ref this; }
		public ref Self setQx(float @qx) mut { qx = @qx;  return ref this; }
		public ref Self setQy(float @qy) mut { qy = @qy;  return ref this; }
		public ref Self setQz(float @qz) mut { qz = @qz;  return ref this; }
		public ref Self setQw(float @qw) mut { qw = @qw;  return ref this; }
		public ref Self setTx(float @tx) mut { tx = @tx;  return ref this; }
		public ref Self setTy(float @ty) mut { ty = @ty;  return ref this; }
		public ref Self setTz(float @tz) mut { tz = @tz;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureSRTMotionInstanceNV
	{
		public VkSRTDataNV transformT0;
		public VkSRTDataNV transformT1;
		public uint32 instanceCustomIndex;
		public uint32 mask;
		public uint32 instanceShaderBindingTableRecordOffset;
		public VkGeometryInstanceFlagsKHR flags;
		public uint64 accelerationStructureReference;

		public ref Self setTransformT0(VkSRTDataNV @transformT0) mut { transformT0 = @transformT0;  return ref this; }
		public ref Self setTransformT1(VkSRTDataNV @transformT1) mut { transformT1 = @transformT1;  return ref this; }
		public ref Self setInstanceCustomIndex(uint32 @instanceCustomIndex) mut { instanceCustomIndex = @instanceCustomIndex;  return ref this; }
		public ref Self setMask(uint32 @mask) mut { mask = @mask;  return ref this; }
		public ref Self setInstanceShaderBindingTableRecordOffset(uint32 @instanceShaderBindingTableRecordOffset) mut { instanceShaderBindingTableRecordOffset = @instanceShaderBindingTableRecordOffset;  return ref this; }
		public ref Self setFlags(VkGeometryInstanceFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setAccelerationStructureReference(uint64 @accelerationStructureReference) mut { accelerationStructureReference = @accelerationStructureReference;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureMatrixMotionInstanceNV
	{
		public VkTransformMatrixKHR transformT0;
		public VkTransformMatrixKHR transformT1;
		public uint32 instanceCustomIndex;
		public uint32 mask;
		public uint32 instanceShaderBindingTableRecordOffset;
		public VkGeometryInstanceFlagsKHR flags;
		public uint64 accelerationStructureReference;

		public ref Self setTransformT0(VkTransformMatrixKHR @transformT0) mut { transformT0 = @transformT0;  return ref this; }
		public ref Self setTransformT1(VkTransformMatrixKHR @transformT1) mut { transformT1 = @transformT1;  return ref this; }
		public ref Self setInstanceCustomIndex(uint32 @instanceCustomIndex) mut { instanceCustomIndex = @instanceCustomIndex;  return ref this; }
		public ref Self setMask(uint32 @mask) mut { mask = @mask;  return ref this; }
		public ref Self setInstanceShaderBindingTableRecordOffset(uint32 @instanceShaderBindingTableRecordOffset) mut { instanceShaderBindingTableRecordOffset = @instanceShaderBindingTableRecordOffset;  return ref this; }
		public ref Self setFlags(VkGeometryInstanceFlagsKHR @flags) mut { flags = @flags;  return ref this; }
		public ref Self setAccelerationStructureReference(uint64 @accelerationStructureReference) mut { accelerationStructureReference = @accelerationStructureReference;  return ref this; }
	}

	[CRepr]
	public struct VkAccelerationStructureMotionInstanceNV
	{
		public VkAccelerationStructureMotionInstanceTypeNV type;
		public uint32 flags;
		public VkAccelerationStructureMotionInstanceDataNV data;

		public ref Self setType(VkAccelerationStructureMotionInstanceTypeNV @type) mut { type = @type;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setData(VkAccelerationStructureMotionInstanceDataNV @data) mut { data = @data;  return ref this; }
	}

	[CRepr]
	public struct VkMemoryGetRemoteAddressInfoNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_MEMORY_GET_REMOTE_ADDRESS_INFO_NV;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public VkExternalMemoryHandleTypeFlags handleType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setHandleType(VkExternalMemoryHandleTypeFlags @handleType) mut { handleType = @handleType;  return ref this; }
	}

	[CRepr]
	public struct VkImportMemoryBufferCollectionFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA;
		public void* pNext = null;
		public VkBufferCollectionFUCHSIA collection;
		public uint32 index;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCollection(VkBufferCollectionFUCHSIA @collection) mut { collection = @collection;  return ref this; }
		public ref Self setIndex(uint32 @index) mut { index = @index;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCollectionImageCreateInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkBufferCollectionFUCHSIA collection;
		public uint32 index;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCollection(VkBufferCollectionFUCHSIA @collection) mut { collection = @collection;  return ref this; }
		public ref Self setIndex(uint32 @index) mut { index = @index;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCollectionBufferCreateInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA;
		public void* pNext = null;
		public VkBufferCollectionFUCHSIA collection;
		public uint32 index;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCollection(VkBufferCollectionFUCHSIA @collection) mut { collection = @collection;  return ref this; }
		public ref Self setIndex(uint32 @index) mut { index = @index;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCollectionCreateInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CREATE_INFO_FUCHSIA;
		public void* pNext = null;
		public void* collectionToken;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCollectionToken(void* @collectionToken) mut { collectionToken = @collectionToken;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCollectionPropertiesFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COLLECTION_PROPERTIES_FUCHSIA;
		public void* pNext = null;
		public uint32 memoryTypeBits;
		public uint32 bufferCount;
		public uint32 createInfoIndex;
		public uint64 sysmemPixelFormat;
		public VkFormatFeatureFlags formatFeatures;
		public VkSysmemColorSpaceFUCHSIA sysmemColorSpaceIndex;
		public VkComponentMapping samplerYcbcrConversionComponents;
		public VkSamplerYcbcrModelConversion suggestedYcbcrModel;
		public VkSamplerYcbcrRange suggestedYcbcrRange;
		public VkChromaLocation suggestedXChromaOffset;
		public VkChromaLocation suggestedYChromaOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemoryTypeBits(uint32 @memoryTypeBits) mut { memoryTypeBits = @memoryTypeBits;  return ref this; }
		public ref Self setBufferCount(uint32 @bufferCount) mut { bufferCount = @bufferCount;  return ref this; }
		public ref Self setCreateInfoIndex(uint32 @createInfoIndex) mut { createInfoIndex = @createInfoIndex;  return ref this; }
		public ref Self setSysmemPixelFormat(uint64 @sysmemPixelFormat) mut { sysmemPixelFormat = @sysmemPixelFormat;  return ref this; }
		public ref Self setFormatFeatures(VkFormatFeatureFlags @formatFeatures) mut { formatFeatures = @formatFeatures;  return ref this; }
		public ref Self setSysmemColorSpaceIndex(VkSysmemColorSpaceFUCHSIA @sysmemColorSpaceIndex) mut { sysmemColorSpaceIndex = @sysmemColorSpaceIndex;  return ref this; }
		public ref Self setSamplerYcbcrConversionComponents(VkComponentMapping @samplerYcbcrConversionComponents) mut { samplerYcbcrConversionComponents = @samplerYcbcrConversionComponents;  return ref this; }
		public ref Self setSuggestedYcbcrModel(VkSamplerYcbcrModelConversion @suggestedYcbcrModel) mut { suggestedYcbcrModel = @suggestedYcbcrModel;  return ref this; }
		public ref Self setSuggestedYcbcrRange(VkSamplerYcbcrRange @suggestedYcbcrRange) mut { suggestedYcbcrRange = @suggestedYcbcrRange;  return ref this; }
		public ref Self setSuggestedXChromaOffset(VkChromaLocation @suggestedXChromaOffset) mut { suggestedXChromaOffset = @suggestedXChromaOffset;  return ref this; }
		public ref Self setSuggestedYChromaOffset(VkChromaLocation @suggestedYChromaOffset) mut { suggestedYChromaOffset = @suggestedYChromaOffset;  return ref this; }
	}

	[CRepr]
	public struct VkBufferConstraintsInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_CONSTRAINTS_INFO_FUCHSIA;
		public void* pNext = null;
		public VkBufferCreateInfo createInfo;
		public VkFormatFeatureFlags requiredFormatFeatures;
		public VkBufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setCreateInfo(VkBufferCreateInfo @createInfo) mut { createInfo = @createInfo;  return ref this; }
		public ref Self setRequiredFormatFeatures(VkFormatFeatureFlags @requiredFormatFeatures) mut { requiredFormatFeatures = @requiredFormatFeatures;  return ref this; }
		public ref Self setBufferCollectionConstraints(VkBufferCollectionConstraintsInfoFUCHSIA @bufferCollectionConstraints) mut { bufferCollectionConstraints = @bufferCollectionConstraints;  return ref this; }
	}

	[CRepr]
	public struct VkSysmemColorSpaceFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SYSMEM_COLOR_SPACE_FUCHSIA;
		public void* pNext = null;
		public uint32 colorSpace;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setColorSpace(uint32 @colorSpace) mut { colorSpace = @colorSpace;  return ref this; }
	}

	[CRepr]
	public struct VkImageFormatConstraintsInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA;
		public void* pNext = null;
		public VkImageCreateInfo imageCreateInfo;
		public VkFormatFeatureFlags requiredFormatFeatures;
		public uint32 flags;
		public uint64 sysmemPixelFormat;
		public uint32 colorSpaceCount;
		public VkSysmemColorSpaceFUCHSIA* pColorSpaces;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageCreateInfo(VkImageCreateInfo @imageCreateInfo) mut { imageCreateInfo = @imageCreateInfo;  return ref this; }
		public ref Self setRequiredFormatFeatures(VkFormatFeatureFlags @requiredFormatFeatures) mut { requiredFormatFeatures = @requiredFormatFeatures;  return ref this; }
		public ref Self setFlags(uint32 @flags) mut { flags = @flags;  return ref this; }
		public ref Self setSysmemPixelFormat(uint64 @sysmemPixelFormat) mut { sysmemPixelFormat = @sysmemPixelFormat;  return ref this; }
		public ref Self setColorSpaceCount(uint32 @colorSpaceCount) mut { colorSpaceCount = @colorSpaceCount;  return ref this; }
		public ref Self setPColorSpaces(VkSysmemColorSpaceFUCHSIA* @pColorSpaces) mut { pColorSpaces = @pColorSpaces;  return ref this; }
	}

	[CRepr]
	public struct VkImageConstraintsInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_CONSTRAINTS_INFO_FUCHSIA;
		public void* pNext = null;
		public uint32 formatConstraintsCount;
		public VkImageFormatConstraintsInfoFUCHSIA* pFormatConstraints;
		public VkBufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
		public VkImageConstraintsInfoFlagsFUCHSIA flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormatConstraintsCount(uint32 @formatConstraintsCount) mut { formatConstraintsCount = @formatConstraintsCount;  return ref this; }
		public ref Self setPFormatConstraints(VkImageFormatConstraintsInfoFUCHSIA* @pFormatConstraints) mut { pFormatConstraints = @pFormatConstraints;  return ref this; }
		public ref Self setBufferCollectionConstraints(VkBufferCollectionConstraintsInfoFUCHSIA @bufferCollectionConstraints) mut { bufferCollectionConstraints = @bufferCollectionConstraints;  return ref this; }
		public ref Self setFlags(VkImageConstraintsInfoFlagsFUCHSIA @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkBufferCollectionConstraintsInfoFUCHSIA
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA;
		public void* pNext = null;
		public uint32 minBufferCount;
		public uint32 maxBufferCount;
		public uint32 minBufferCountForCamping;
		public uint32 minBufferCountForDedicatedSlack;
		public uint32 minBufferCountForSharedSlack;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinBufferCount(uint32 @minBufferCount) mut { minBufferCount = @minBufferCount;  return ref this; }
		public ref Self setMaxBufferCount(uint32 @maxBufferCount) mut { maxBufferCount = @maxBufferCount;  return ref this; }
		public ref Self setMinBufferCountForCamping(uint32 @minBufferCountForCamping) mut { minBufferCountForCamping = @minBufferCountForCamping;  return ref this; }
		public ref Self setMinBufferCountForDedicatedSlack(uint32 @minBufferCountForDedicatedSlack) mut { minBufferCountForDedicatedSlack = @minBufferCountForDedicatedSlack;  return ref this; }
		public ref Self setMinBufferCountForSharedSlack(uint32 @minBufferCountForSharedSlack) mut { minBufferCountForSharedSlack = @minBufferCountForSharedSlack;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 formatRgba10x6WithoutYCbCrSampler;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormatRgba10x6WithoutYCbCrSampler(VkBool32 @formatRgba10x6WithoutYCbCrSampler) mut { formatRgba10x6WithoutYCbCrSampler = @formatRgba10x6WithoutYCbCrSampler;  return ref this; }
	}

	[CRepr]
	public struct VkFormatProperties3
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3;
		public void* pNext = null;
		public uint64 linearTilingFeatures;
		public uint64 optimalTilingFeatures;
		public uint64 bufferFeatures;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLinearTilingFeatures(uint64 @linearTilingFeatures) mut { linearTilingFeatures = @linearTilingFeatures;  return ref this; }
		public ref Self setOptimalTilingFeatures(uint64 @optimalTilingFeatures) mut { optimalTilingFeatures = @optimalTilingFeatures;  return ref this; }
		public ref Self setBufferFeatures(uint64 @bufferFeatures) mut { bufferFeatures = @bufferFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkDrmFormatModifierPropertiesList2EXT
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint32 drmFormatModifierCount;
		public VkDrmFormatModifierProperties2EXT* pDrmFormatModifierProperties;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDrmFormatModifierCount(uint32 @drmFormatModifierCount) mut { drmFormatModifierCount = @drmFormatModifierCount;  return ref this; }
		public ref Self setPDrmFormatModifierProperties(VkDrmFormatModifierProperties2EXT* @pDrmFormatModifierProperties) mut { pDrmFormatModifierProperties = @pDrmFormatModifierProperties;  return ref this; }
	}

	[CRepr]
	public struct VkDrmFormatModifierProperties2EXT
	{
		public uint64 drmFormatModifier;
		public uint32 drmFormatModifierPlaneCount;
		public uint64 drmFormatModifierTilingFeatures;

		public ref Self setDrmFormatModifier(uint64 @drmFormatModifier) mut { drmFormatModifier = @drmFormatModifier;  return ref this; }
		public ref Self setDrmFormatModifierPlaneCount(uint32 @drmFormatModifierPlaneCount) mut { drmFormatModifierPlaneCount = @drmFormatModifierPlaneCount;  return ref this; }
		public ref Self setDrmFormatModifierTilingFeatures(uint64 @drmFormatModifierTilingFeatures) mut { drmFormatModifierTilingFeatures = @drmFormatModifierTilingFeatures;  return ref this; }
	}

	[CRepr]
	public struct VkAndroidHardwareBufferFormatProperties2ANDROID
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkFormat format;
		public uint64 externalFormat;
		public uint64 formatFeatures;
		public VkComponentMapping samplerYcbcrConversionComponents;
		public VkSamplerYcbcrModelConversion suggestedYcbcrModel;
		public VkSamplerYcbcrRange suggestedYcbcrRange;
		public VkChromaLocation suggestedXChromaOffset;
		public VkChromaLocation suggestedYChromaOffset;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFormat(VkFormat @format) mut { format = @format;  return ref this; }
		public ref Self setExternalFormat(uint64 @externalFormat) mut { externalFormat = @externalFormat;  return ref this; }
		public ref Self setFormatFeatures(uint64 @formatFeatures) mut { formatFeatures = @formatFeatures;  return ref this; }
		public ref Self setSamplerYcbcrConversionComponents(VkComponentMapping @samplerYcbcrConversionComponents) mut { samplerYcbcrConversionComponents = @samplerYcbcrConversionComponents;  return ref this; }
		public ref Self setSuggestedYcbcrModel(VkSamplerYcbcrModelConversion @suggestedYcbcrModel) mut { suggestedYcbcrModel = @suggestedYcbcrModel;  return ref this; }
		public ref Self setSuggestedYcbcrRange(VkSamplerYcbcrRange @suggestedYcbcrRange) mut { suggestedYcbcrRange = @suggestedYcbcrRange;  return ref this; }
		public ref Self setSuggestedXChromaOffset(VkChromaLocation @suggestedXChromaOffset) mut { suggestedXChromaOffset = @suggestedXChromaOffset;  return ref this; }
		public ref Self setSuggestedYChromaOffset(VkChromaLocation @suggestedYChromaOffset) mut { suggestedYChromaOffset = @suggestedYChromaOffset;  return ref this; }
	}

	[CRepr]
	public struct VkPipelineRenderingCreateInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO;
		public void* pNext = null;
		public uint32 viewMask;
		public uint32 colorAttachmentCount;
		public VkFormat* pColorAttachmentFormats;
		public VkFormat depthAttachmentFormat;
		public VkFormat stencilAttachmentFormat;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setViewMask(uint32 @viewMask) mut { viewMask = @viewMask;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachmentFormats(VkFormat* @pColorAttachmentFormats) mut { pColorAttachmentFormats = @pColorAttachmentFormats;  return ref this; }
		public ref Self setDepthAttachmentFormat(VkFormat @depthAttachmentFormat) mut { depthAttachmentFormat = @depthAttachmentFormat;  return ref this; }
		public ref Self setStencilAttachmentFormat(VkFormat @stencilAttachmentFormat) mut { stencilAttachmentFormat = @stencilAttachmentFormat;  return ref this; }
	}

	[CRepr]
	public struct VkRenderingInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDERING_INFO;
		public void* pNext = null;
		public VkRenderingFlags flags;
		public VkRect2D renderArea;
		public uint32 layerCount;
		public uint32 viewMask;
		public uint32 colorAttachmentCount;
		public VkRenderingAttachmentInfo* pColorAttachments;
		public VkRenderingAttachmentInfo* pDepthAttachment;
		public VkRenderingAttachmentInfo* pStencilAttachment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkRenderingFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setRenderArea(VkRect2D @renderArea) mut { renderArea = @renderArea;  return ref this; }
		public ref Self setLayerCount(uint32 @layerCount) mut { layerCount = @layerCount;  return ref this; }
		public ref Self setViewMask(uint32 @viewMask) mut { viewMask = @viewMask;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachments(VkRenderingAttachmentInfo* @pColorAttachments) mut { pColorAttachments = @pColorAttachments;  return ref this; }
		public ref Self setPDepthAttachment(VkRenderingAttachmentInfo* @pDepthAttachment) mut { pDepthAttachment = @pDepthAttachment;  return ref this; }
		public ref Self setPStencilAttachment(VkRenderingAttachmentInfo* @pStencilAttachment) mut { pStencilAttachment = @pStencilAttachment;  return ref this; }
	}

	[CRepr]
	public struct VkRenderingAttachmentInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO;
		public void* pNext = null;
		public VkImageView imageView;
		public VkImageLayout imageLayout;
		public VkResolveModeFlags resolveMode;
		public VkImageView resolveImageView;
		public VkImageLayout resolveImageLayout;
		public VkAttachmentLoadOp loadOp;
		public VkAttachmentStoreOp storeOp;
		public VkClearValue clearValue;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setImageLayout(VkImageLayout @imageLayout) mut { imageLayout = @imageLayout;  return ref this; }
		public ref Self setResolveMode(VkResolveModeFlags @resolveMode) mut { resolveMode = @resolveMode;  return ref this; }
		public ref Self setResolveImageView(VkImageView @resolveImageView) mut { resolveImageView = @resolveImageView;  return ref this; }
		public ref Self setResolveImageLayout(VkImageLayout @resolveImageLayout) mut { resolveImageLayout = @resolveImageLayout;  return ref this; }
		public ref Self setLoadOp(VkAttachmentLoadOp @loadOp) mut { loadOp = @loadOp;  return ref this; }
		public ref Self setStoreOp(VkAttachmentStoreOp @storeOp) mut { storeOp = @storeOp;  return ref this; }
		public ref Self setClearValue(VkClearValue @clearValue) mut { clearValue = @clearValue;  return ref this; }
	}

	[CRepr]
	public struct VkRenderingFragmentShadingRateAttachmentInfoKHR
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkImageView imageView;
		public VkImageLayout imageLayout;
		public VkExtent2D shadingRateAttachmentTexelSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setImageLayout(VkImageLayout @imageLayout) mut { imageLayout = @imageLayout;  return ref this; }
		public ref Self setShadingRateAttachmentTexelSize(VkExtent2D @shadingRateAttachmentTexelSize) mut { shadingRateAttachmentTexelSize = @shadingRateAttachmentTexelSize;  return ref this; }
	}

	[CRepr]
	public struct VkRenderingFragmentDensityMapAttachmentInfoEXT
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkImageView imageView;
		public VkImageLayout imageLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setImageLayout(VkImageLayout @imageLayout) mut { imageLayout = @imageLayout;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDynamicRenderingFeatures
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES;
		public void* pNext = null;
		public VkBool32 dynamicRendering;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDynamicRendering(VkBool32 @dynamicRendering) mut { dynamicRendering = @dynamicRendering;  return ref this; }
	}

	[CRepr]
	public struct VkCommandBufferInheritanceRenderingInfo
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO;
		public void* pNext = null;
		public VkRenderingFlags flags;
		public uint32 viewMask;
		public uint32 colorAttachmentCount;
		public VkFormat* pColorAttachmentFormats;
		public VkFormat depthAttachmentFormat;
		public VkFormat stencilAttachmentFormat;
		public VkSampleCountFlags rasterizationSamples;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkRenderingFlags @flags) mut { flags = @flags;  return ref this; }
		public ref Self setViewMask(uint32 @viewMask) mut { viewMask = @viewMask;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachmentFormats(VkFormat* @pColorAttachmentFormats) mut { pColorAttachmentFormats = @pColorAttachmentFormats;  return ref this; }
		public ref Self setDepthAttachmentFormat(VkFormat @depthAttachmentFormat) mut { depthAttachmentFormat = @depthAttachmentFormat;  return ref this; }
		public ref Self setStencilAttachmentFormat(VkFormat @stencilAttachmentFormat) mut { stencilAttachmentFormat = @stencilAttachmentFormat;  return ref this; }
		public ref Self setRasterizationSamples(VkSampleCountFlags @rasterizationSamples) mut { rasterizationSamples = @rasterizationSamples;  return ref this; }
	}

	[CRepr]
	public struct VkAttachmentSampleCountInfoAMD
	{
		public VkStructureType sType;
		public void* pNext = null;
		public uint32 colorAttachmentCount;
		public VkSampleCountFlags* pColorAttachmentSamples;
		public VkSampleCountFlags depthStencilAttachmentSamples;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setColorAttachmentCount(uint32 @colorAttachmentCount) mut { colorAttachmentCount = @colorAttachmentCount;  return ref this; }
		public ref Self setPColorAttachmentSamples(VkSampleCountFlags* @pColorAttachmentSamples) mut { pColorAttachmentSamples = @pColorAttachmentSamples;  return ref this; }
		public ref Self setDepthStencilAttachmentSamples(VkSampleCountFlags @depthStencilAttachmentSamples) mut { depthStencilAttachmentSamples = @depthStencilAttachmentSamples;  return ref this; }
	}

	[CRepr]
	public struct VkMultiviewPerViewAttributesInfoNVX
	{
		public VkStructureType sType;
		public void* pNext = null;
		public VkBool32 perViewAttributes;
		public VkBool32 perViewAttributesPositionXOnly;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPerViewAttributes(VkBool32 @perViewAttributes) mut { perViewAttributes = @perViewAttributes;  return ref this; }
		public ref Self setPerViewAttributesPositionXOnly(VkBool32 @perViewAttributesPositionXOnly) mut { perViewAttributesPositionXOnly = @perViewAttributesPositionXOnly;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageViewMinLodFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 minLod;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinLod(VkBool32 @minLod) mut { minLod = @minLod;  return ref this; }
	}

	[CRepr]
	public struct VkImageViewMinLodCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT;
		public void* pNext = null;
		public float minLod;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMinLod(float @minLod) mut { minLod = @minLod;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM;
		public void* pNext = null;
		public VkBool32 rasterizationOrderColorAttachmentAccess;
		public VkBool32 rasterizationOrderDepthAttachmentAccess;
		public VkBool32 rasterizationOrderStencilAttachmentAccess;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setRasterizationOrderColorAttachmentAccess(VkBool32 @rasterizationOrderColorAttachmentAccess) mut { rasterizationOrderColorAttachmentAccess = @rasterizationOrderColorAttachmentAccess;  return ref this; }
		public ref Self setRasterizationOrderDepthAttachmentAccess(VkBool32 @rasterizationOrderDepthAttachmentAccess) mut { rasterizationOrderDepthAttachmentAccess = @rasterizationOrderDepthAttachmentAccess;  return ref this; }
		public ref Self setRasterizationOrderStencilAttachmentAccess(VkBool32 @rasterizationOrderStencilAttachmentAccess) mut { rasterizationOrderStencilAttachmentAccess = @rasterizationOrderStencilAttachmentAccess;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV;
		public void* pNext = null;
		public VkBool32 linearColorAttachment;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setLinearColorAttachment(VkBool32 @linearColorAttachment) mut { linearColorAttachment = @linearColorAttachment;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 graphicsPipelineLibrary;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGraphicsPipelineLibrary(VkBool32 @graphicsPipelineLibrary) mut { graphicsPipelineLibrary = @graphicsPipelineLibrary;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT;
		public void* pNext = null;
		public VkBool32 graphicsPipelineLibraryFastLinking;
		public VkBool32 graphicsPipelineLibraryIndependentInterpolationDecoration;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setGraphicsPipelineLibraryFastLinking(VkBool32 @graphicsPipelineLibraryFastLinking) mut { graphicsPipelineLibraryFastLinking = @graphicsPipelineLibraryFastLinking;  return ref this; }
		public ref Self setGraphicsPipelineLibraryIndependentInterpolationDecoration(VkBool32 @graphicsPipelineLibraryIndependentInterpolationDecoration) mut { graphicsPipelineLibraryIndependentInterpolationDecoration = @graphicsPipelineLibraryIndependentInterpolationDecoration;  return ref this; }
	}

	[CRepr]
	public struct VkGraphicsPipelineLibraryCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkGraphicsPipelineLibraryFlagsEXT flags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkGraphicsPipelineLibraryFlagsEXT @flags) mut { flags = @flags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE;
		public void* pNext = null;
		public VkBool32 descriptorSetHostMapping;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDescriptorSetHostMapping(VkBool32 @descriptorSetHostMapping) mut { descriptorSetHostMapping = @descriptorSetHostMapping;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetBindingReferenceVALVE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_BINDING_REFERENCE_VALVE;
		public void* pNext = null;
		public VkDescriptorSetLayout descriptorSetLayout;
		public uint32 binding;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDescriptorSetLayout(VkDescriptorSetLayout @descriptorSetLayout) mut { descriptorSetLayout = @descriptorSetLayout;  return ref this; }
		public ref Self setBinding(uint32 @binding) mut { binding = @binding;  return ref this; }
	}

	[CRepr]
	public struct VkDescriptorSetLayoutHostMappingInfoVALVE
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE;
		public void* pNext = null;
		public uint descriptorOffset;
		public uint32 descriptorSize;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDescriptorOffset(uint @descriptorOffset) mut { descriptorOffset = @descriptorOffset;  return ref this; }
		public ref Self setDescriptorSize(uint32 @descriptorSize) mut { descriptorSize = @descriptorSize;  return ref this; }
	}

	[CRepr]
	public struct VkImageCompressionControlEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT;
		public void* pNext = null;
		public VkImageCompressionFlagsEXT flags;
		public uint32 compressionControlPlaneCount;
		public VkImageCompressionFixedRateFlagsEXT* pFixedRateFlags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setFlags(VkImageCompressionFlagsEXT @flags) mut { flags = @flags;  return ref this; }
		public ref Self setCompressionControlPlaneCount(uint32 @compressionControlPlaneCount) mut { compressionControlPlaneCount = @compressionControlPlaneCount;  return ref this; }
		public ref Self setPFixedRateFlags(VkImageCompressionFixedRateFlagsEXT* @pFixedRateFlags) mut { pFixedRateFlags = @pFixedRateFlags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageCompressionControlFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 imageCompressionControl;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageCompressionControl(VkBool32 @imageCompressionControl) mut { imageCompressionControl = @imageCompressionControl;  return ref this; }
	}

	[CRepr]
	public struct VkImageCompressionPropertiesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_PROPERTIES_EXT;
		public void* pNext = null;
		public VkImageCompressionFlagsEXT imageCompressionFlags;
		public VkImageCompressionFixedRateFlagsEXT imageCompressionFixedRateFlags;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageCompressionFlags(VkImageCompressionFlagsEXT @imageCompressionFlags) mut { imageCompressionFlags = @imageCompressionFlags;  return ref this; }
		public ref Self setImageCompressionFixedRateFlags(VkImageCompressionFixedRateFlagsEXT @imageCompressionFixedRateFlags) mut { imageCompressionFixedRateFlags = @imageCompressionFixedRateFlags;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 imageCompressionControlSwapchain;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageCompressionControlSwapchain(VkBool32 @imageCompressionControlSwapchain) mut { imageCompressionControlSwapchain = @imageCompressionControlSwapchain;  return ref this; }
	}

	[CRepr]
	public struct VkImageSubresource2EXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_EXT;
		public void* pNext = null;
		public VkImageSubresource imageSubresource;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImageSubresource(VkImageSubresource @imageSubresource) mut { imageSubresource = @imageSubresource;  return ref this; }
	}

	[CRepr]
	public struct VkSubresourceLayout2EXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_EXT;
		public void* pNext = null;
		public VkSubresourceLayout subresourceLayout;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubresourceLayout(VkSubresourceLayout @subresourceLayout) mut { subresourceLayout = @subresourceLayout;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassCreationControlEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_CONTROL_EXT;
		public void* pNext = null;
		public VkBool32 disallowMerging;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setDisallowMerging(VkBool32 @disallowMerging) mut { disallowMerging = @disallowMerging;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassCreationFeedbackInfoEXT
	{
		public uint32 postMergeSubpassCount;

		public ref Self setPostMergeSubpassCount(uint32 @postMergeSubpassCount) mut { postMergeSubpassCount = @postMergeSubpassCount;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassCreationFeedbackCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkRenderPassCreationFeedbackInfoEXT* pRenderPassFeedback;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPRenderPassFeedback(VkRenderPassCreationFeedbackInfoEXT* @pRenderPassFeedback) mut { pRenderPassFeedback = @pRenderPassFeedback;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassSubpassFeedbackInfoEXT
	{
		public VkSubpassMergeStatusEXT subpassMergeStatus;
		public char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] description;
		public uint32 postMergeIndex;

		public ref Self setSubpassMergeStatus(VkSubpassMergeStatusEXT @subpassMergeStatus) mut { subpassMergeStatus = @subpassMergeStatus;  return ref this; }
		public ref Self setDescription(char8[(int)VulkanNative.VK_MAX_DESCRIPTION_SIZE] @description) mut { description = @description;  return ref this; }
		public ref Self setPostMergeIndex(uint32 @postMergeIndex) mut { postMergeIndex = @postMergeIndex;  return ref this; }
	}

	[CRepr]
	public struct VkRenderPassSubpassFeedbackCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkRenderPassSubpassFeedbackInfoEXT* pSubpassFeedback;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPSubpassFeedback(VkRenderPassSubpassFeedbackInfoEXT* @pSubpassFeedback) mut { pSubpassFeedback = @pSubpassFeedback;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 subpassMergeFeedback;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSubpassMergeFeedback(VkBool32 @subpassMergeFeedback) mut { subpassMergeFeedback = @subpassMergeFeedback;  return ref this; }
	}

	[CRepr]
	public struct VkPipelinePropertiesIdentifierEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PIPELINE_PROPERTIES_IDENTIFIER_EXT;
		public void* pNext = null;
		public uint8[(int)VulkanNative.VK_UUID_SIZE] pipelineIdentifier;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelineIdentifier(uint8[(int)VulkanNative.VK_UUID_SIZE] @pipelineIdentifier) mut { pipelineIdentifier = @pipelineIdentifier;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDevicePipelinePropertiesFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 pipelinePropertiesIdentifier;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPipelinePropertiesIdentifier(VkBool32 @pipelinePropertiesIdentifier) mut { pipelinePropertiesIdentifier = @pipelinePropertiesIdentifier;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD;
		public void* pNext = null;
		public VkBool32 shaderEarlyAndLateFragmentTests;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setShaderEarlyAndLateFragmentTests(VkBool32 @shaderEarlyAndLateFragmentTests) mut { shaderEarlyAndLateFragmentTests = @shaderEarlyAndLateFragmentTests;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalObjectCreateInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECT_CREATE_INFO_EXT;
		public void* pNext = null;
		public VkExportMetalObjectTypeFlagsEXT exportObjectType;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setExportObjectType(VkExportMetalObjectTypeFlagsEXT @exportObjectType) mut { exportObjectType = @exportObjectType;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalObjectsInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECTS_INFO_EXT;
		public void* pNext = null;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalDeviceInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_DEVICE_INFO_EXT;
		public void* pNext = null;
		public void* mtlDevice;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMtlDevice(void* @mtlDevice) mut { mtlDevice = @mtlDevice;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalCommandQueueInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_COMMAND_QUEUE_INFO_EXT;
		public void* pNext = null;
		public VkQueue queue;
		public void* mtlCommandQueue;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setQueue(VkQueue @queue) mut { queue = @queue;  return ref this; }
		public ref Self setMtlCommandQueue(void* @mtlCommandQueue) mut { mtlCommandQueue = @mtlCommandQueue;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalBufferInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_BUFFER_INFO_EXT;
		public void* pNext = null;
		public VkDeviceMemory memory;
		public void* mtlBuffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMemory(VkDeviceMemory @memory) mut { memory = @memory;  return ref this; }
		public ref Self setMtlBuffer(void* @mtlBuffer) mut { mtlBuffer = @mtlBuffer;  return ref this; }
	}

	[CRepr]
	public struct VkImportMetalBufferInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_METAL_BUFFER_INFO_EXT;
		public void* pNext = null;
		public void* mtlBuffer;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMtlBuffer(void* @mtlBuffer) mut { mtlBuffer = @mtlBuffer;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalTextureInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_TEXTURE_INFO_EXT;
		public void* pNext = null;
		public VkImage image;
		public VkImageView imageView;
		public VkBufferView bufferView;
		public VkImageAspectFlags plane;
		public void* mtlTexture;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setImageView(VkImageView @imageView) mut { imageView = @imageView;  return ref this; }
		public ref Self setBufferView(VkBufferView @bufferView) mut { bufferView = @bufferView;  return ref this; }
		public ref Self setPlane(VkImageAspectFlags @plane) mut { plane = @plane;  return ref this; }
		public ref Self setMtlTexture(void* @mtlTexture) mut { mtlTexture = @mtlTexture;  return ref this; }
	}

	[CRepr]
	public struct VkImportMetalTextureInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_METAL_TEXTURE_INFO_EXT;
		public void* pNext = null;
		public VkImageAspectFlags plane;
		public void* mtlTexture;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setPlane(VkImageAspectFlags @plane) mut { plane = @plane;  return ref this; }
		public ref Self setMtlTexture(void* @mtlTexture) mut { mtlTexture = @mtlTexture;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalIOSurfaceInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_IO_SURFACE_INFO_EXT;
		public void* pNext = null;
		public VkImage image;
		public void* ioSurface;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setImage(VkImage @image) mut { image = @image;  return ref this; }
		public ref Self setIoSurface(void* @ioSurface) mut { ioSurface = @ioSurface;  return ref this; }
	}

	[CRepr]
	public struct VkImportMetalIOSurfaceInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_METAL_IO_SURFACE_INFO_EXT;
		public void* pNext = null;
		public void* ioSurface;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setIoSurface(void* @ioSurface) mut { ioSurface = @ioSurface;  return ref this; }
	}

	[CRepr]
	public struct VkExportMetalSharedEventInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_EXPORT_METAL_SHARED_EVENT_INFO_EXT;
		public void* pNext = null;
		public VkSemaphore semaphore;
		public VkEvent event;
		public void* mtlSharedEvent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setSemaphore(VkSemaphore @semaphore) mut { semaphore = @semaphore;  return ref this; }
		public ref Self setEvent(VkEvent @event) mut { event = @event;  return ref this; }
		public ref Self setMtlSharedEvent(void* @mtlSharedEvent) mut { mtlSharedEvent = @mtlSharedEvent;  return ref this; }
	}

	[CRepr]
	public struct VkImportMetalSharedEventInfoEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_IMPORT_METAL_SHARED_EVENT_INFO_EXT;
		public void* pNext = null;
		public void* mtlSharedEvent;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setMtlSharedEvent(void* @mtlSharedEvent) mut { mtlSharedEvent = @mtlSharedEvent;  return ref this; }
	}

	[CRepr]
	public struct VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT
	{
		public VkStructureType sType = .VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT;
		public void* pNext = null;
		public VkBool32 nonSeamlessCubeMap;

		public ref Self setSType(VkStructureType @sType) mut { sType = @sType;  return ref this; }
		public ref Self setPNext(void* @pNext) mut { pNext = @pNext;  return ref this; }
		public ref Self setNonSeamlessCubeMap(VkBool32 @nonSeamlessCubeMap) mut { nonSeamlessCubeMap = @nonSeamlessCubeMap;  return ref this; }
	}

}

