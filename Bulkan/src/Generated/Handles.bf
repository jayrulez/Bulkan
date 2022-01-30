using System;

namespace Bulkan
{
	[CRepr]
	public struct VkInstance : IEquatable<VkInstance>
	{
		public readonly int Handle;
		public this(int existingHandle) { Handle = existingHandle; }
		public static VkInstance Null => VkInstance(0);
		public static implicit operator VkInstance(int handle) => VkInstance(handle);
		public static bool operator ==(VkInstance left, VkInstance right) => left.Handle == right.Handle;
		public static bool operator !=(VkInstance left, VkInstance right) => left.Handle != right.Handle;
		public static bool operator ==(VkInstance left, int right) => left.Handle == right;
		public static bool operator !=(VkInstance left, int right) => left.Handle != right;
		public bool Equals(VkInstance h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPhysicalDevice : IEquatable<VkPhysicalDevice>
	{
		public readonly int Handle;
		public this(int existingHandle) { Handle = existingHandle; }
		public static VkPhysicalDevice Null => VkPhysicalDevice(0);
		public static implicit operator VkPhysicalDevice(int handle) => VkPhysicalDevice(handle);
		public static bool operator ==(VkPhysicalDevice left, VkPhysicalDevice right) => left.Handle == right.Handle;
		public static bool operator !=(VkPhysicalDevice left, VkPhysicalDevice right) => left.Handle != right.Handle;
		public static bool operator ==(VkPhysicalDevice left, int right) => left.Handle == right;
		public static bool operator !=(VkPhysicalDevice left, int right) => left.Handle != right;
		public bool Equals(VkPhysicalDevice h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDevice : IEquatable<VkDevice>
	{
		public readonly int Handle;
		public this(int existingHandle) { Handle = existingHandle; }
		public static VkDevice Null => VkDevice(0);
		public static implicit operator VkDevice(int handle) => VkDevice(handle);
		public static bool operator ==(VkDevice left, VkDevice right) => left.Handle == right.Handle;
		public static bool operator !=(VkDevice left, VkDevice right) => left.Handle != right.Handle;
		public static bool operator ==(VkDevice left, int right) => left.Handle == right;
		public static bool operator !=(VkDevice left, int right) => left.Handle != right;
		public bool Equals(VkDevice h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkQueue : IEquatable<VkQueue>
	{
		public readonly int Handle;
		public this(int existingHandle) { Handle = existingHandle; }
		public static VkQueue Null => VkQueue(0);
		public static implicit operator VkQueue(int handle) => VkQueue(handle);
		public static bool operator ==(VkQueue left, VkQueue right) => left.Handle == right.Handle;
		public static bool operator !=(VkQueue left, VkQueue right) => left.Handle != right.Handle;
		public static bool operator ==(VkQueue left, int right) => left.Handle == right;
		public static bool operator !=(VkQueue left, int right) => left.Handle != right;
		public bool Equals(VkQueue h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkCommandBuffer : IEquatable<VkCommandBuffer>
	{
		public readonly int Handle;
		public this(int existingHandle) { Handle = existingHandle; }
		public static VkCommandBuffer Null => VkCommandBuffer(0);
		public static implicit operator VkCommandBuffer(int handle) => VkCommandBuffer(handle);
		public static bool operator ==(VkCommandBuffer left, VkCommandBuffer right) => left.Handle == right.Handle;
		public static bool operator !=(VkCommandBuffer left, VkCommandBuffer right) => left.Handle != right.Handle;
		public static bool operator ==(VkCommandBuffer left, int right) => left.Handle == right;
		public static bool operator !=(VkCommandBuffer left, int right) => left.Handle != right;
		public bool Equals(VkCommandBuffer h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDeviceMemory : IEquatable<VkDeviceMemory>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDeviceMemory Null => VkDeviceMemory(0);
		public static implicit operator VkDeviceMemory(uint64 handle) => VkDeviceMemory(handle);
		public static bool operator ==(VkDeviceMemory left, VkDeviceMemory right) => left.Handle == right.Handle;
		public static bool operator !=(VkDeviceMemory left, VkDeviceMemory right) => left.Handle != right.Handle;
		public static bool operator ==(VkDeviceMemory left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDeviceMemory left, uint64 right) => left.Handle != right;
		public bool Equals(VkDeviceMemory h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkCommandPool : IEquatable<VkCommandPool>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkCommandPool Null => VkCommandPool(0);
		public static implicit operator VkCommandPool(uint64 handle) => VkCommandPool(handle);
		public static bool operator ==(VkCommandPool left, VkCommandPool right) => left.Handle == right.Handle;
		public static bool operator !=(VkCommandPool left, VkCommandPool right) => left.Handle != right.Handle;
		public static bool operator ==(VkCommandPool left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkCommandPool left, uint64 right) => left.Handle != right;
		public bool Equals(VkCommandPool h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkBuffer : IEquatable<VkBuffer>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkBuffer Null => VkBuffer(0);
		public static implicit operator VkBuffer(uint64 handle) => VkBuffer(handle);
		public static bool operator ==(VkBuffer left, VkBuffer right) => left.Handle == right.Handle;
		public static bool operator !=(VkBuffer left, VkBuffer right) => left.Handle != right.Handle;
		public static bool operator ==(VkBuffer left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkBuffer left, uint64 right) => left.Handle != right;
		public bool Equals(VkBuffer h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkBufferView : IEquatable<VkBufferView>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkBufferView Null => VkBufferView(0);
		public static implicit operator VkBufferView(uint64 handle) => VkBufferView(handle);
		public static bool operator ==(VkBufferView left, VkBufferView right) => left.Handle == right.Handle;
		public static bool operator !=(VkBufferView left, VkBufferView right) => left.Handle != right.Handle;
		public static bool operator ==(VkBufferView left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkBufferView left, uint64 right) => left.Handle != right;
		public bool Equals(VkBufferView h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkImage : IEquatable<VkImage>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkImage Null => VkImage(0);
		public static implicit operator VkImage(uint64 handle) => VkImage(handle);
		public static bool operator ==(VkImage left, VkImage right) => left.Handle == right.Handle;
		public static bool operator !=(VkImage left, VkImage right) => left.Handle != right.Handle;
		public static bool operator ==(VkImage left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkImage left, uint64 right) => left.Handle != right;
		public bool Equals(VkImage h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkImageView : IEquatable<VkImageView>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkImageView Null => VkImageView(0);
		public static implicit operator VkImageView(uint64 handle) => VkImageView(handle);
		public static bool operator ==(VkImageView left, VkImageView right) => left.Handle == right.Handle;
		public static bool operator !=(VkImageView left, VkImageView right) => left.Handle != right.Handle;
		public static bool operator ==(VkImageView left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkImageView left, uint64 right) => left.Handle != right;
		public bool Equals(VkImageView h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkShaderModule : IEquatable<VkShaderModule>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkShaderModule Null => VkShaderModule(0);
		public static implicit operator VkShaderModule(uint64 handle) => VkShaderModule(handle);
		public static bool operator ==(VkShaderModule left, VkShaderModule right) => left.Handle == right.Handle;
		public static bool operator !=(VkShaderModule left, VkShaderModule right) => left.Handle != right.Handle;
		public static bool operator ==(VkShaderModule left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkShaderModule left, uint64 right) => left.Handle != right;
		public bool Equals(VkShaderModule h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPipeline : IEquatable<VkPipeline>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPipeline Null => VkPipeline(0);
		public static implicit operator VkPipeline(uint64 handle) => VkPipeline(handle);
		public static bool operator ==(VkPipeline left, VkPipeline right) => left.Handle == right.Handle;
		public static bool operator !=(VkPipeline left, VkPipeline right) => left.Handle != right.Handle;
		public static bool operator ==(VkPipeline left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPipeline left, uint64 right) => left.Handle != right;
		public bool Equals(VkPipeline h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPipelineLayout : IEquatable<VkPipelineLayout>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPipelineLayout Null => VkPipelineLayout(0);
		public static implicit operator VkPipelineLayout(uint64 handle) => VkPipelineLayout(handle);
		public static bool operator ==(VkPipelineLayout left, VkPipelineLayout right) => left.Handle == right.Handle;
		public static bool operator !=(VkPipelineLayout left, VkPipelineLayout right) => left.Handle != right.Handle;
		public static bool operator ==(VkPipelineLayout left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPipelineLayout left, uint64 right) => left.Handle != right;
		public bool Equals(VkPipelineLayout h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSampler : IEquatable<VkSampler>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSampler Null => VkSampler(0);
		public static implicit operator VkSampler(uint64 handle) => VkSampler(handle);
		public static bool operator ==(VkSampler left, VkSampler right) => left.Handle == right.Handle;
		public static bool operator !=(VkSampler left, VkSampler right) => left.Handle != right.Handle;
		public static bool operator ==(VkSampler left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSampler left, uint64 right) => left.Handle != right;
		public bool Equals(VkSampler h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDescriptorSet : IEquatable<VkDescriptorSet>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDescriptorSet Null => VkDescriptorSet(0);
		public static implicit operator VkDescriptorSet(uint64 handle) => VkDescriptorSet(handle);
		public static bool operator ==(VkDescriptorSet left, VkDescriptorSet right) => left.Handle == right.Handle;
		public static bool operator !=(VkDescriptorSet left, VkDescriptorSet right) => left.Handle != right.Handle;
		public static bool operator ==(VkDescriptorSet left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDescriptorSet left, uint64 right) => left.Handle != right;
		public bool Equals(VkDescriptorSet h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDescriptorSetLayout : IEquatable<VkDescriptorSetLayout>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDescriptorSetLayout Null => VkDescriptorSetLayout(0);
		public static implicit operator VkDescriptorSetLayout(uint64 handle) => VkDescriptorSetLayout(handle);
		public static bool operator ==(VkDescriptorSetLayout left, VkDescriptorSetLayout right) => left.Handle == right.Handle;
		public static bool operator !=(VkDescriptorSetLayout left, VkDescriptorSetLayout right) => left.Handle != right.Handle;
		public static bool operator ==(VkDescriptorSetLayout left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDescriptorSetLayout left, uint64 right) => left.Handle != right;
		public bool Equals(VkDescriptorSetLayout h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDescriptorPool : IEquatable<VkDescriptorPool>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDescriptorPool Null => VkDescriptorPool(0);
		public static implicit operator VkDescriptorPool(uint64 handle) => VkDescriptorPool(handle);
		public static bool operator ==(VkDescriptorPool left, VkDescriptorPool right) => left.Handle == right.Handle;
		public static bool operator !=(VkDescriptorPool left, VkDescriptorPool right) => left.Handle != right.Handle;
		public static bool operator ==(VkDescriptorPool left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDescriptorPool left, uint64 right) => left.Handle != right;
		public bool Equals(VkDescriptorPool h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkFence : IEquatable<VkFence>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkFence Null => VkFence(0);
		public static implicit operator VkFence(uint64 handle) => VkFence(handle);
		public static bool operator ==(VkFence left, VkFence right) => left.Handle == right.Handle;
		public static bool operator !=(VkFence left, VkFence right) => left.Handle != right.Handle;
		public static bool operator ==(VkFence left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkFence left, uint64 right) => left.Handle != right;
		public bool Equals(VkFence h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSemaphore : IEquatable<VkSemaphore>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSemaphore Null => VkSemaphore(0);
		public static implicit operator VkSemaphore(uint64 handle) => VkSemaphore(handle);
		public static bool operator ==(VkSemaphore left, VkSemaphore right) => left.Handle == right.Handle;
		public static bool operator !=(VkSemaphore left, VkSemaphore right) => left.Handle != right.Handle;
		public static bool operator ==(VkSemaphore left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSemaphore left, uint64 right) => left.Handle != right;
		public bool Equals(VkSemaphore h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkEvent : IEquatable<VkEvent>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkEvent Null => VkEvent(0);
		public static implicit operator VkEvent(uint64 handle) => VkEvent(handle);
		public static bool operator ==(VkEvent left, VkEvent right) => left.Handle == right.Handle;
		public static bool operator !=(VkEvent left, VkEvent right) => left.Handle != right.Handle;
		public static bool operator ==(VkEvent left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkEvent left, uint64 right) => left.Handle != right;
		public bool Equals(VkEvent h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkQueryPool : IEquatable<VkQueryPool>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkQueryPool Null => VkQueryPool(0);
		public static implicit operator VkQueryPool(uint64 handle) => VkQueryPool(handle);
		public static bool operator ==(VkQueryPool left, VkQueryPool right) => left.Handle == right.Handle;
		public static bool operator !=(VkQueryPool left, VkQueryPool right) => left.Handle != right.Handle;
		public static bool operator ==(VkQueryPool left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkQueryPool left, uint64 right) => left.Handle != right;
		public bool Equals(VkQueryPool h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkFramebuffer : IEquatable<VkFramebuffer>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkFramebuffer Null => VkFramebuffer(0);
		public static implicit operator VkFramebuffer(uint64 handle) => VkFramebuffer(handle);
		public static bool operator ==(VkFramebuffer left, VkFramebuffer right) => left.Handle == right.Handle;
		public static bool operator !=(VkFramebuffer left, VkFramebuffer right) => left.Handle != right.Handle;
		public static bool operator ==(VkFramebuffer left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkFramebuffer left, uint64 right) => left.Handle != right;
		public bool Equals(VkFramebuffer h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkRenderPass : IEquatable<VkRenderPass>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkRenderPass Null => VkRenderPass(0);
		public static implicit operator VkRenderPass(uint64 handle) => VkRenderPass(handle);
		public static bool operator ==(VkRenderPass left, VkRenderPass right) => left.Handle == right.Handle;
		public static bool operator !=(VkRenderPass left, VkRenderPass right) => left.Handle != right.Handle;
		public static bool operator ==(VkRenderPass left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkRenderPass left, uint64 right) => left.Handle != right;
		public bool Equals(VkRenderPass h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPipelineCache : IEquatable<VkPipelineCache>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPipelineCache Null => VkPipelineCache(0);
		public static implicit operator VkPipelineCache(uint64 handle) => VkPipelineCache(handle);
		public static bool operator ==(VkPipelineCache left, VkPipelineCache right) => left.Handle == right.Handle;
		public static bool operator !=(VkPipelineCache left, VkPipelineCache right) => left.Handle != right.Handle;
		public static bool operator ==(VkPipelineCache left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPipelineCache left, uint64 right) => left.Handle != right;
		public bool Equals(VkPipelineCache h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkIndirectCommandsLayoutNV : IEquatable<VkIndirectCommandsLayoutNV>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkIndirectCommandsLayoutNV Null => VkIndirectCommandsLayoutNV(0);
		public static implicit operator VkIndirectCommandsLayoutNV(uint64 handle) => VkIndirectCommandsLayoutNV(handle);
		public static bool operator ==(VkIndirectCommandsLayoutNV left, VkIndirectCommandsLayoutNV right) => left.Handle == right.Handle;
		public static bool operator !=(VkIndirectCommandsLayoutNV left, VkIndirectCommandsLayoutNV right) => left.Handle != right.Handle;
		public static bool operator ==(VkIndirectCommandsLayoutNV left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkIndirectCommandsLayoutNV left, uint64 right) => left.Handle != right;
		public bool Equals(VkIndirectCommandsLayoutNV h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDescriptorUpdateTemplate : IEquatable<VkDescriptorUpdateTemplate>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDescriptorUpdateTemplate Null => VkDescriptorUpdateTemplate(0);
		public static implicit operator VkDescriptorUpdateTemplate(uint64 handle) => VkDescriptorUpdateTemplate(handle);
		public static bool operator ==(VkDescriptorUpdateTemplate left, VkDescriptorUpdateTemplate right) => left.Handle == right.Handle;
		public static bool operator !=(VkDescriptorUpdateTemplate left, VkDescriptorUpdateTemplate right) => left.Handle != right.Handle;
		public static bool operator ==(VkDescriptorUpdateTemplate left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDescriptorUpdateTemplate left, uint64 right) => left.Handle != right;
		public bool Equals(VkDescriptorUpdateTemplate h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDescriptorUpdateTemplateKHR : IEquatable<VkDescriptorUpdateTemplateKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDescriptorUpdateTemplateKHR Null => VkDescriptorUpdateTemplateKHR(0);
		public static implicit operator VkDescriptorUpdateTemplateKHR(uint64 handle) => VkDescriptorUpdateTemplateKHR(handle);
		public static bool operator ==(VkDescriptorUpdateTemplateKHR left, VkDescriptorUpdateTemplateKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkDescriptorUpdateTemplateKHR left, VkDescriptorUpdateTemplateKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkDescriptorUpdateTemplateKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDescriptorUpdateTemplateKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkDescriptorUpdateTemplateKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSamplerYcbcrConversion : IEquatable<VkSamplerYcbcrConversion>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSamplerYcbcrConversion Null => VkSamplerYcbcrConversion(0);
		public static implicit operator VkSamplerYcbcrConversion(uint64 handle) => VkSamplerYcbcrConversion(handle);
		public static bool operator ==(VkSamplerYcbcrConversion left, VkSamplerYcbcrConversion right) => left.Handle == right.Handle;
		public static bool operator !=(VkSamplerYcbcrConversion left, VkSamplerYcbcrConversion right) => left.Handle != right.Handle;
		public static bool operator ==(VkSamplerYcbcrConversion left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSamplerYcbcrConversion left, uint64 right) => left.Handle != right;
		public bool Equals(VkSamplerYcbcrConversion h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSamplerYcbcrConversionKHR : IEquatable<VkSamplerYcbcrConversionKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSamplerYcbcrConversionKHR Null => VkSamplerYcbcrConversionKHR(0);
		public static implicit operator VkSamplerYcbcrConversionKHR(uint64 handle) => VkSamplerYcbcrConversionKHR(handle);
		public static bool operator ==(VkSamplerYcbcrConversionKHR left, VkSamplerYcbcrConversionKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkSamplerYcbcrConversionKHR left, VkSamplerYcbcrConversionKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkSamplerYcbcrConversionKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSamplerYcbcrConversionKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkSamplerYcbcrConversionKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkValidationCacheEXT : IEquatable<VkValidationCacheEXT>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkValidationCacheEXT Null => VkValidationCacheEXT(0);
		public static implicit operator VkValidationCacheEXT(uint64 handle) => VkValidationCacheEXT(handle);
		public static bool operator ==(VkValidationCacheEXT left, VkValidationCacheEXT right) => left.Handle == right.Handle;
		public static bool operator !=(VkValidationCacheEXT left, VkValidationCacheEXT right) => left.Handle != right.Handle;
		public static bool operator ==(VkValidationCacheEXT left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkValidationCacheEXT left, uint64 right) => left.Handle != right;
		public bool Equals(VkValidationCacheEXT h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkAccelerationStructureKHR : IEquatable<VkAccelerationStructureKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkAccelerationStructureKHR Null => VkAccelerationStructureKHR(0);
		public static implicit operator VkAccelerationStructureKHR(uint64 handle) => VkAccelerationStructureKHR(handle);
		public static bool operator ==(VkAccelerationStructureKHR left, VkAccelerationStructureKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkAccelerationStructureKHR left, VkAccelerationStructureKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkAccelerationStructureKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkAccelerationStructureKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkAccelerationStructureKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkAccelerationStructureNV : IEquatable<VkAccelerationStructureNV>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkAccelerationStructureNV Null => VkAccelerationStructureNV(0);
		public static implicit operator VkAccelerationStructureNV(uint64 handle) => VkAccelerationStructureNV(handle);
		public static bool operator ==(VkAccelerationStructureNV left, VkAccelerationStructureNV right) => left.Handle == right.Handle;
		public static bool operator !=(VkAccelerationStructureNV left, VkAccelerationStructureNV right) => left.Handle != right.Handle;
		public static bool operator ==(VkAccelerationStructureNV left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkAccelerationStructureNV left, uint64 right) => left.Handle != right;
		public bool Equals(VkAccelerationStructureNV h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPerformanceConfigurationINTEL : IEquatable<VkPerformanceConfigurationINTEL>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPerformanceConfigurationINTEL Null => VkPerformanceConfigurationINTEL(0);
		public static implicit operator VkPerformanceConfigurationINTEL(uint64 handle) => VkPerformanceConfigurationINTEL(handle);
		public static bool operator ==(VkPerformanceConfigurationINTEL left, VkPerformanceConfigurationINTEL right) => left.Handle == right.Handle;
		public static bool operator !=(VkPerformanceConfigurationINTEL left, VkPerformanceConfigurationINTEL right) => left.Handle != right.Handle;
		public static bool operator ==(VkPerformanceConfigurationINTEL left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPerformanceConfigurationINTEL left, uint64 right) => left.Handle != right;
		public bool Equals(VkPerformanceConfigurationINTEL h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkBufferCollectionFUCHSIA : IEquatable<VkBufferCollectionFUCHSIA>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkBufferCollectionFUCHSIA Null => VkBufferCollectionFUCHSIA(0);
		public static implicit operator VkBufferCollectionFUCHSIA(uint64 handle) => VkBufferCollectionFUCHSIA(handle);
		public static bool operator ==(VkBufferCollectionFUCHSIA left, VkBufferCollectionFUCHSIA right) => left.Handle == right.Handle;
		public static bool operator !=(VkBufferCollectionFUCHSIA left, VkBufferCollectionFUCHSIA right) => left.Handle != right.Handle;
		public static bool operator ==(VkBufferCollectionFUCHSIA left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkBufferCollectionFUCHSIA left, uint64 right) => left.Handle != right;
		public bool Equals(VkBufferCollectionFUCHSIA h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDeferredOperationKHR : IEquatable<VkDeferredOperationKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDeferredOperationKHR Null => VkDeferredOperationKHR(0);
		public static implicit operator VkDeferredOperationKHR(uint64 handle) => VkDeferredOperationKHR(handle);
		public static bool operator ==(VkDeferredOperationKHR left, VkDeferredOperationKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkDeferredOperationKHR left, VkDeferredOperationKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkDeferredOperationKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDeferredOperationKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkDeferredOperationKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPrivateDataSlot : IEquatable<VkPrivateDataSlot>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPrivateDataSlot Null => VkPrivateDataSlot(0);
		public static implicit operator VkPrivateDataSlot(uint64 handle) => VkPrivateDataSlot(handle);
		public static bool operator ==(VkPrivateDataSlot left, VkPrivateDataSlot right) => left.Handle == right.Handle;
		public static bool operator !=(VkPrivateDataSlot left, VkPrivateDataSlot right) => left.Handle != right.Handle;
		public static bool operator ==(VkPrivateDataSlot left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPrivateDataSlot left, uint64 right) => left.Handle != right;
		public bool Equals(VkPrivateDataSlot h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkPrivateDataSlotEXT : IEquatable<VkPrivateDataSlotEXT>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkPrivateDataSlotEXT Null => VkPrivateDataSlotEXT(0);
		public static implicit operator VkPrivateDataSlotEXT(uint64 handle) => VkPrivateDataSlotEXT(handle);
		public static bool operator ==(VkPrivateDataSlotEXT left, VkPrivateDataSlotEXT right) => left.Handle == right.Handle;
		public static bool operator !=(VkPrivateDataSlotEXT left, VkPrivateDataSlotEXT right) => left.Handle != right.Handle;
		public static bool operator ==(VkPrivateDataSlotEXT left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkPrivateDataSlotEXT left, uint64 right) => left.Handle != right;
		public bool Equals(VkPrivateDataSlotEXT h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkCuModuleNVX : IEquatable<VkCuModuleNVX>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkCuModuleNVX Null => VkCuModuleNVX(0);
		public static implicit operator VkCuModuleNVX(uint64 handle) => VkCuModuleNVX(handle);
		public static bool operator ==(VkCuModuleNVX left, VkCuModuleNVX right) => left.Handle == right.Handle;
		public static bool operator !=(VkCuModuleNVX left, VkCuModuleNVX right) => left.Handle != right.Handle;
		public static bool operator ==(VkCuModuleNVX left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkCuModuleNVX left, uint64 right) => left.Handle != right;
		public bool Equals(VkCuModuleNVX h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkCuFunctionNVX : IEquatable<VkCuFunctionNVX>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkCuFunctionNVX Null => VkCuFunctionNVX(0);
		public static implicit operator VkCuFunctionNVX(uint64 handle) => VkCuFunctionNVX(handle);
		public static bool operator ==(VkCuFunctionNVX left, VkCuFunctionNVX right) => left.Handle == right.Handle;
		public static bool operator !=(VkCuFunctionNVX left, VkCuFunctionNVX right) => left.Handle != right.Handle;
		public static bool operator ==(VkCuFunctionNVX left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkCuFunctionNVX left, uint64 right) => left.Handle != right;
		public bool Equals(VkCuFunctionNVX h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDisplayKHR : IEquatable<VkDisplayKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDisplayKHR Null => VkDisplayKHR(0);
		public static implicit operator VkDisplayKHR(uint64 handle) => VkDisplayKHR(handle);
		public static bool operator ==(VkDisplayKHR left, VkDisplayKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkDisplayKHR left, VkDisplayKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkDisplayKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDisplayKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkDisplayKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDisplayModeKHR : IEquatable<VkDisplayModeKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDisplayModeKHR Null => VkDisplayModeKHR(0);
		public static implicit operator VkDisplayModeKHR(uint64 handle) => VkDisplayModeKHR(handle);
		public static bool operator ==(VkDisplayModeKHR left, VkDisplayModeKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkDisplayModeKHR left, VkDisplayModeKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkDisplayModeKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDisplayModeKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkDisplayModeKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSurfaceKHR : IEquatable<VkSurfaceKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSurfaceKHR Null => VkSurfaceKHR(0);
		public static implicit operator VkSurfaceKHR(uint64 handle) => VkSurfaceKHR(handle);
		public static bool operator ==(VkSurfaceKHR left, VkSurfaceKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkSurfaceKHR left, VkSurfaceKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkSurfaceKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSurfaceKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkSurfaceKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkSwapchainKHR : IEquatable<VkSwapchainKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkSwapchainKHR Null => VkSwapchainKHR(0);
		public static implicit operator VkSwapchainKHR(uint64 handle) => VkSwapchainKHR(handle);
		public static bool operator ==(VkSwapchainKHR left, VkSwapchainKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkSwapchainKHR left, VkSwapchainKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkSwapchainKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkSwapchainKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkSwapchainKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDebugReportCallbackEXT : IEquatable<VkDebugReportCallbackEXT>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDebugReportCallbackEXT Null => VkDebugReportCallbackEXT(0);
		public static implicit operator VkDebugReportCallbackEXT(uint64 handle) => VkDebugReportCallbackEXT(handle);
		public static bool operator ==(VkDebugReportCallbackEXT left, VkDebugReportCallbackEXT right) => left.Handle == right.Handle;
		public static bool operator !=(VkDebugReportCallbackEXT left, VkDebugReportCallbackEXT right) => left.Handle != right.Handle;
		public static bool operator ==(VkDebugReportCallbackEXT left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDebugReportCallbackEXT left, uint64 right) => left.Handle != right;
		public bool Equals(VkDebugReportCallbackEXT h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkDebugUtilsMessengerEXT : IEquatable<VkDebugUtilsMessengerEXT>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkDebugUtilsMessengerEXT Null => VkDebugUtilsMessengerEXT(0);
		public static implicit operator VkDebugUtilsMessengerEXT(uint64 handle) => VkDebugUtilsMessengerEXT(handle);
		public static bool operator ==(VkDebugUtilsMessengerEXT left, VkDebugUtilsMessengerEXT right) => left.Handle == right.Handle;
		public static bool operator !=(VkDebugUtilsMessengerEXT left, VkDebugUtilsMessengerEXT right) => left.Handle != right.Handle;
		public static bool operator ==(VkDebugUtilsMessengerEXT left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkDebugUtilsMessengerEXT left, uint64 right) => left.Handle != right;
		public bool Equals(VkDebugUtilsMessengerEXT h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkVideoSessionKHR : IEquatable<VkVideoSessionKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkVideoSessionKHR Null => VkVideoSessionKHR(0);
		public static implicit operator VkVideoSessionKHR(uint64 handle) => VkVideoSessionKHR(handle);
		public static bool operator ==(VkVideoSessionKHR left, VkVideoSessionKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkVideoSessionKHR left, VkVideoSessionKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkVideoSessionKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkVideoSessionKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkVideoSessionKHR h) => Handle == h.Handle;
	}

	[CRepr]
	public struct VkVideoSessionParametersKHR : IEquatable<VkVideoSessionParametersKHR>
	{
		public readonly uint64 Handle;
		public this(uint64 existingHandle) { Handle = existingHandle; }
		public static VkVideoSessionParametersKHR Null => VkVideoSessionParametersKHR(0);
		public static implicit operator VkVideoSessionParametersKHR(uint64 handle) => VkVideoSessionParametersKHR(handle);
		public static bool operator ==(VkVideoSessionParametersKHR left, VkVideoSessionParametersKHR right) => left.Handle == right.Handle;
		public static bool operator !=(VkVideoSessionParametersKHR left, VkVideoSessionParametersKHR right) => left.Handle != right.Handle;
		public static bool operator ==(VkVideoSessionParametersKHR left, uint64 right) => left.Handle == right;
		public static bool operator !=(VkVideoSessionParametersKHR left, uint64 right) => left.Handle != right;
		public bool Equals(VkVideoSessionParametersKHR h) => Handle == h.Handle;
	}

}
