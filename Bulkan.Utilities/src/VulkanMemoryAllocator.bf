//
// Copyright (c) 2017-2025 Advanced Micro Devices, Inc. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

/** \mainpage Vulkan Memory Allocator

<b>Version 3.2.1</b>

Copyright (c) 2017-2025 Advanced Micro Devices, Inc. All rights reserved. \n
License: MIT \n
See also: [product page on GPUOpen](https://gpuopen.com/gaming-product/vulkan-memory-allocator/),
[repository on GitHub](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator)


<b>API documentation divided into groups:</b> [Topics](topics.html)

<b>General documentation chapters:</b>

- <b>User guide</b>
  - \subpage quick_start
    - [Project setup](@ref quick_start_project_setup)
    - [Initialization](@ref quick_start_initialization)
    - [Resource allocation](@ref quick_start_resource_allocation)
  - \subpage choosing_memory_type
    - [Usage](@ref choosing_memory_type_usage)
    - [Required and preferred flags](@ref choosing_memory_type_required_preferred_flags)
    - [Explicit memory types](@ref choosing_memory_type_explicit_memory_types)
    - [Custom memory pools](@ref choosing_memory_type_custom_memory_pools)
    - [Dedicated allocations](@ref choosing_memory_type_dedicated_allocations)
  - \subpage memory_mapping
    - [Copy functions](@ref memory_mapping_copy_functions)
    - [Mapping functions](@ref memory_mapping_mapping_functions)
    - [Persistently mapped memory](@ref memory_mapping_persistently_mapped_memory)
    - [Cache flush and invalidate](@ref memory_mapping_cache_control)
  - \subpage staying_within_budget
    - [Querying for budget](@ref staying_within_budget_querying_for_budget)
    - [Controlling memory usage](@ref staying_within_budget_controlling_memory_usage)
  - \subpage resource_aliasing
  - \subpage custom_memory_pools
    - [Choosing memory type index](@ref custom_memory_pools_MemTypeIndex)
    - [When not to use custom pools](@ref custom_memory_pools_when_not_use)
    - [Linear allocation algorithm](@ref linear_algorithm)
      - [Free-at-once](@ref linear_algorithm_free_at_once)
      - [Stack](@ref linear_algorithm_stack)
      - [Double stack](@ref linear_algorithm_double_stack)
      - [Ring buffer](@ref linear_algorithm_ring_buffer)
  - \subpage defragmentation
  - \subpage statistics
    - [Numeric statistics](@ref statistics_numeric_statistics)
    - [JSON dump](@ref statistics_json_dump)
  - \subpage allocation_annotation
    - [Allocation user data](@ref allocation_user_data)
    - [Allocation names](@ref allocation_names)
  - \subpage virtual_allocator
  - \subpage debugging_memory_usage
    - [Memory initialization](@ref debugging_memory_usage_initialization)
    - [Margins](@ref debugging_memory_usage_margins)
    - [Corruption detection](@ref debugging_memory_usage_corruption_detection)
    - [Leak detection features](@ref debugging_memory_usage_leak_detection)
  - \subpage other_api_interop
- \subpage usage_patterns
    - [GPU-only resource](@ref usage_patterns_gpu_only)
    - [Staging copy for upload](@ref usage_patterns_staging_copy_upload)
    - [Readback](@ref usage_patterns_readback)
    - [Advanced data uploading](@ref usage_patterns_advanced_data_uploading)
    - [Other use cases](@ref usage_patterns_other_use_cases)
- \subpage configuration
  - [Pointers to Vulkan functions](@ref config_Vulkan_functions)
  - [Custom host memory allocator](@ref custom_memory_allocator)
  - [Device memory allocation callbacks](@ref allocation_callbacks)
  - [Device heap memory limit](@ref heap_memory_limit)
- <b>Extension support</b>
    - \subpage vk_khr_dedicated_allocation
    - \subpage enabling_buffer_device_address
    - \subpage vk_ext_memory_priority
    - \subpage vk_amd_device_coherent_memory
    - \subpage vk_khr_external_memory_win32
- \subpage general_considerations
  - [Thread safety](@ref general_considerations_thread_safety)
  - [Versioning and compatibility](@ref general_considerations_versioning_and_compatibility)
  - [Validation layer warnings](@ref general_considerations_validation_layer_warnings)
  - [Allocation algorithm](@ref general_considerations_allocation_algorithm)
  - [Features not supported](@ref general_considerations_features_not_supported)

\defgroup group_init Library initialization

\brief API elements related to the initialization and management of the entire library, especially #VmaAllocator object.

\defgroup group_alloc Memory allocation

\brief API elements related to the allocation, deallocation, and management of Vulkan memory, buffers, images.
Most basic ones being: vmaCreateBuffer(), vmaCreateImage().

\defgroup group_virtual Virtual allocator

\brief API elements related to the mechanism of \ref virtual_allocator - using the core allocation algorithm
for user-defined purpose without allocating any real GPU memory.

\defgroup group_stats Statistics

\brief API elements that query current status of the allocator, from memory usage, budget, to full dump of the internal state in JSON format.
See documentation chapter: \ref statistics.
*/

using System;
namespace Bulkan.Utilities;

// Ported from https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/blob/89d3a6a5ea35d140fe865ed493c89bde777c6a07/include/vk_mem_alloc.h


/// Flags for created #VmaAllocator.
[CRepr]
enum VmaAllocatorCreateFlagBits : int32
{
	/** \brief Allocator and all objects created from it will not be synchronized internally, so you must guarantee they are used from only one thread at a time or synchronized externally by you.

	Using this flag may increase performance because internal mutexes are not used.
	*/
	VMA_ALLOCATOR_CREATE_EXTERNALLY_SYNCHRONIZED_BIT = 0x00000001,
	/** \brief Enables usage of VK_KHR_dedicated_allocation extension.

	The flag works only if VmaAllocatorCreateInfo::vulkanApiVersion `== VK_API_VERSION_1_0`.
	When it is `VK_API_VERSION_1_1`, the flag is ignored because the extension has been promoted to Vulkan 1.1.

	Using this extension will automatically allocate dedicated blocks of memory for
	some buffers and images instead of suballocating place for them out of bigger
	memory blocks (as if you explicitly used #VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT
	flag) when it is recommended by the driver. It may improve performance on some
	GPUs.

	You may set this flag only if you found out that following device extensions are
	supported, you enabled them while creating Vulkan device passed as
	VmaAllocatorCreateInfo::device, and you want them to be used internally by this
	library:

	- VK_KHR_get_memory_requirements2 (device extension)
	- VK_KHR_dedicated_allocation (device extension)

	When this flag is set, you can experience following warnings reported by Vulkan
	validation layer. You can ignore them.

	> vkBindBufferMemory(): Binding memory to buffer 0x2d but vkGetBufferMemoryRequirements() has not been called on that buffer.
	*/
	VMA_ALLOCATOR_CREATE_KHR_DEDICATED_ALLOCATION_BIT = 0x00000002,
	/**
	Enables usage of VK_KHR_bind_memory2 extension.

	The flag works only if VmaAllocatorCreateInfo::vulkanApiVersion `== VK_API_VERSION_1_0`.
	When it is `VK_API_VERSION_1_1`, the flag is ignored because the extension has been promoted to Vulkan 1.1.

	You may set this flag only if you found out that this device extension is supported,
	you enabled it while creating Vulkan device passed as VmaAllocatorCreateInfo::device,
	and you want it to be used internally by this library.

	The extension provides functions `vkBindBufferMemory2KHR` and `vkBindImageMemory2KHR`,
	which allow to pass a chain of `pNext` structures while binding.
	This flag is required if you use `pNext` parameter in vmaBindBufferMemory2() or vmaBindImageMemory2().
	*/
	VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT = 0x00000004,
	/**
	Enables usage of VK_EXT_memory_budget extension.

	You may set this flag only if you found out that this device extension is supported,
	you enabled it while creating Vulkan device passed as VmaAllocatorCreateInfo::device,
	and you want it to be used internally by this library, along with another instance extension
	VK_KHR_get_physical_device_properties2, which is required by it (or Vulkan 1.1, where this extension is promoted).

	The extension provides query for current memory usage and budget, which will probably
	be more accurate than an estimation used by the library otherwise.
	*/
	VMA_ALLOCATOR_CREATE_EXT_MEMORY_BUDGET_BIT = 0x00000008,
	/**
	Enables usage of VK_AMD_device_coherent_memory extension.

	You may set this flag only if you:

	- found out that this device extension is supported and enabled it while creating Vulkan device passed as VmaAllocatorCreateInfo::device,
	- checked that `VkPhysicalDeviceCoherentMemoryFeaturesAMD::deviceCoherentMemory` is true and set it while creating the Vulkan device,
	- want it to be used internally by this library.

	The extension and accompanying device feature provide access to memory types with
	`VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD` and `VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD` flags.
	They are useful mostly for writing breadcrumb markers - a common method for debugging GPU crash/hang/TDR.

	When the extension is not enabled, such memory types are still enumerated, but their usage is illegal.
	To protect from this error, if you don't create the allocator with this flag, it will refuse to allocate any memory or create a custom pool in such memory type,
	returning `VK_ERROR_FEATURE_NOT_PRESENT`.
	*/
	VMA_ALLOCATOR_CREATE_AMD_DEVICE_COHERENT_MEMORY_BIT = 0x00000010,
	/**
	Enables usage of "buffer device address" feature, which allows you to use function
	`vkGetBufferDeviceAddress*` to get raw GPU pointer to a buffer and pass it for usage inside a shader.

	You may set this flag only if you:

	1. (For Vulkan version < 1.2) Found as available and enabled device extension
	VK_KHR_buffer_device_address.
	This extension is promoted to core Vulkan 1.2.
	2. Found as available and enabled device feature `VkPhysicalDeviceBufferDeviceAddressFeatures::bufferDeviceAddress`.

	When this flag is set, you can create buffers with `VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT` using VMA.
	The library automatically adds `VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT` to
	allocated memory blocks wherever it might be needed.

	For more information, see documentation chapter \ref enabling_buffer_device_address.
	*/
	VMA_ALLOCATOR_CREATE_BUFFER_DEVICE_ADDRESS_BIT = 0x00000020,
	/**
	Enables usage of VK_EXT_memory_priority extension in the library.

	You may set this flag only if you found available and enabled this device extension,
	along with `VkPhysicalDeviceMemoryPriorityFeaturesEXT::memoryPriority == VK_TRUE`,
	while creating Vulkan device passed as VmaAllocatorCreateInfo::device.

	When this flag is used, VmaAllocationCreateInfo::priority and VmaPoolCreateInfo::priority
	are used to set priorities of allocated Vulkan memory. Without it, these variables are ignored.

	A priority must be a floating-point value between 0 and 1, indicating the priority of the allocation relative to other memory allocations.
	Larger values are higher priority. The granularity of the priorities is implementation-dependent.
	It is automatically passed to every call to `vkAllocateMemory` done by the library using structure `VkMemoryPriorityAllocateInfoEXT`.
	The value to be used for default priority is 0.5.
	For more details, see the documentation of the VK_EXT_memory_priority extension.
	*/
	VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT = 0x00000040,
	/**
	Enables usage of VK_KHR_maintenance4 extension in the library.

	You may set this flag only if you found available and enabled this device extension,
	while creating Vulkan device passed as VmaAllocatorCreateInfo::device.
	*/
	VMA_ALLOCATOR_CREATE_KHR_MAINTENANCE4_BIT = 0x00000080,
	/**
	Enables usage of VK_KHR_maintenance5 extension in the library.

	You should set this flag if you found available and enabled this device extension,
	while creating Vulkan device passed as VmaAllocatorCreateInfo::device.
	*/
	VMA_ALLOCATOR_CREATE_KHR_MAINTENANCE5_BIT = 0x00000100,

	/**
	Enables usage of VK_KHR_external_memory_win32 extension in the library.

	You should set this flag if you found available and enabled this device extension,
	while creating Vulkan device passed as VmaAllocatorCreateInfo::device.
	For more information, see \ref vk_khr_external_memory_win32.
	*/
	VMA_ALLOCATOR_CREATE_KHR_EXTERNAL_MEMORY_WIN32_BIT = 0x00000200,

	VMA_ALLOCATOR_CREATE_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// See #VmaAllocatorCreateFlagBits.
//typedef VkFlags VmaAllocatorCreateFlags;

/** @} */

/**
\addtogroup group_alloc
@{
*/

/// \brief Intended usage of the allocated memory.
[CRepr]
enum VmaMemoryUsage : int32
{
	/** No intended memory usage specified.
	Use other members of VmaAllocationCreateInfo to specify your requirements.
	*/
	VMA_MEMORY_USAGE_UNKNOWN = 0,
	/**
	\deprecated Obsolete, preserved for backward compatibility.
	Prefers `VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT`.
	*/
	VMA_MEMORY_USAGE_GPU_ONLY = 1,
	/**
	\deprecated Obsolete, preserved for backward compatibility.
	Guarantees `VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT` and `VK_MEMORY_PROPERTY_HOST_COHERENT_BIT`.
	*/
	VMA_MEMORY_USAGE_CPU_ONLY = 2,
	/**
	\deprecated Obsolete, preserved for backward compatibility.
	Guarantees `VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT`, prefers `VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT`.
	*/
	VMA_MEMORY_USAGE_CPU_TO_GPU = 3,
	/**
	\deprecated Obsolete, preserved for backward compatibility.
	Guarantees `VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT`, prefers `VK_MEMORY_PROPERTY_HOST_CACHED_BIT`.
	*/
	VMA_MEMORY_USAGE_GPU_TO_CPU = 4,
	/**
	\deprecated Obsolete, preserved for backward compatibility.
	Prefers not `VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT`.
	*/
	VMA_MEMORY_USAGE_CPU_COPY = 5,
	/**
	Lazily allocated GPU memory having `VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT`.
	Exists mostly on mobile platforms. Using it on desktop PC or other GPUs with no such memory type present will fail the allocation.

	Usage: Memory for transient attachment images (color attachments, depth attachments etc.), created with `VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT`.

	Allocations with this usage are always created as dedicated - it implies #VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT.
	*/
	VMA_MEMORY_USAGE_GPU_LAZILY_ALLOCATED = 6,
	/**
	Selects best memory type automatically.
	This flag is recommended for most common use cases.

	When using this flag, if you want to map the allocation (using vmaMapMemory() or #VMA_ALLOCATION_CREATE_MAPPED_BIT),
	you must pass one of the flags: #VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT or #VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT
	in VmaAllocationCreateInfo::flags.

	It can be used only with functions that let the library know `VkBufferCreateInfo` or `VkImageCreateInfo`, e.g.
	vmaCreateBuffer(), vmaCreateImage(), vmaFindMemoryTypeIndexForBufferInfo(), vmaFindMemoryTypeIndexForImageInfo()
	and not with generic memory allocation functions.
	*/
	VMA_MEMORY_USAGE_AUTO = 7,
	/**
	Selects best memory type automatically with preference for GPU (device) memory.

	When using this flag, if you want to map the allocation (using vmaMapMemory() or #VMA_ALLOCATION_CREATE_MAPPED_BIT),
	you must pass one of the flags: #VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT or #VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT
	in VmaAllocationCreateInfo::flags.

	It can be used only with functions that let the library know `VkBufferCreateInfo` or `VkImageCreateInfo`, e.g.
	vmaCreateBuffer(), vmaCreateImage(), vmaFindMemoryTypeIndexForBufferInfo(), vmaFindMemoryTypeIndexForImageInfo()
	and not with generic memory allocation functions.
	*/
	VMA_MEMORY_USAGE_AUTO_PREFER_DEVICE = 8,
	/**
	Selects best memory type automatically with preference for CPU (host) memory.

	When using this flag, if you want to map the allocation (using vmaMapMemory() or #VMA_ALLOCATION_CREATE_MAPPED_BIT),
	you must pass one of the flags: #VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT or #VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT
	in VmaAllocationCreateInfo::flags.

	It can be used only with functions that let the library know `VkBufferCreateInfo` or `VkImageCreateInfo`, e.g.
	vmaCreateBuffer(), vmaCreateImage(), vmaFindMemoryTypeIndexForBufferInfo(), vmaFindMemoryTypeIndexForImageInfo()
	and not with generic memory allocation functions.
	*/
	VMA_MEMORY_USAGE_AUTO_PREFER_HOST = 9,

	VMA_MEMORY_USAGE_MAX_ENUM = 0x7FFFFFFF
}

/// Flags to be passed as VmaAllocationCreateInfo::flags.
[CRepr, AllowDuplicates]
enum VmaAllocationCreateFlagBits : int32
{
	/** \brief Set this flag if the allocation should have its own memory block.

	Use it for special, big resources, like fullscreen images used as attachments.

	If you use this flag while creating a buffer or an image, `VkMemoryDedicatedAllocateInfo`
	structure is applied if possible.
	*/
	VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT = 0x00000001,

	/** \brief Set this flag to only try to allocate from existing `VkDeviceMemory` blocks and never create new such block.

	If new allocation cannot be placed in any of the existing blocks, allocation
	fails with `VK_ERROR_OUT_OF_DEVICE_MEMORY` error.

	You should not use #VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT and
	#VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT at the same time. It makes no sense.
	*/
	VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT = 0x00000002,
	/** \brief Set this flag to use a memory that will be persistently mapped and retrieve pointer to it.

	Pointer to mapped memory will be returned through VmaAllocationInfo::pMappedData.

	It is valid to use this flag for allocation made from memory type that is not
	`HOST_VISIBLE`. This flag is then ignored and memory is not mapped. This is
	useful if you need an allocation that is efficient to use on GPU
	(`DEVICE_LOCAL`) and still want to map it directly if possible on platforms that
	support it (e.g. Intel GPU).
	*/
	VMA_ALLOCATION_CREATE_MAPPED_BIT = 0x00000004,
	/** \deprecated Preserved for backward compatibility. Consider using vmaSetAllocationName() instead.

	Set this flag to treat VmaAllocationCreateInfo::pUserData as pointer to a
	null-terminated string. Instead of copying pointer value, a local copy of the
	string is made and stored in allocation's `pName`. The string is automatically
	freed together with the allocation. It is also used in vmaBuildStatsString().
	*/
	VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT = 0x00000020,
	/** Allocation will be created from upper stack in a double stack pool.

	This flag is only allowed for custom pools created with #VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT flag.
	*/
	VMA_ALLOCATION_CREATE_UPPER_ADDRESS_BIT = 0x00000040,
	/** Create both buffer/image and allocation, but don't bind them together.
	It is useful when you want to bind yourself to do some more advanced binding, e.g. using some extensions.
	The flag is meaningful only with functions that bind by default: vmaCreateBuffer(), vmaCreateImage().
	Otherwise it is ignored.

	If you want to make sure the new buffer/image is not tied to the new memory allocation
	through `VkMemoryDedicatedAllocateInfoKHR` structure in case the allocation ends up in its own memory block,
	use also flag #VMA_ALLOCATION_CREATE_CAN_ALIAS_BIT.
	*/
	VMA_ALLOCATION_CREATE_DONT_BIND_BIT = 0x00000080,
	/** Create allocation only if additional device memory required for it, if any, won't exceed
	memory budget. Otherwise return `VK_ERROR_OUT_OF_DEVICE_MEMORY`.
	*/
	VMA_ALLOCATION_CREATE_WITHIN_BUDGET_BIT = 0x00000100,
	/** \brief Set this flag if the allocated memory will have aliasing resources.

	Usage of this flag prevents supplying `VkMemoryDedicatedAllocateInfoKHR` when #VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT is specified.
	Otherwise created dedicated memory will not be suitable for aliasing resources, resulting in Vulkan Validation Layer errors.
	*/
	VMA_ALLOCATION_CREATE_CAN_ALIAS_BIT = 0x00000200,
	/**
	Requests possibility to map the allocation (using vmaMapMemory() or #VMA_ALLOCATION_CREATE_MAPPED_BIT).

	- If you use #VMA_MEMORY_USAGE_AUTO or other `VMA_MEMORY_USAGE_AUTO*` value,
	  you must use this flag to be able to map the allocation. Otherwise, mapping is incorrect.
	- If you use other value of #VmaMemoryUsage, this flag is ignored and mapping is always possible in memory types that are `HOST_VISIBLE`.
	  This includes allocations created in \ref custom_memory_pools.

	Declares that mapped memory will only be written sequentially, e.g. using `memcpy()` or a loop writing number-by-number,
	never read or accessed randomly, so a memory type can be selected that is uncached and write-combined.

	\warning Violating this declaration may work correctly, but will likely be very slow.
	Watch out for implicit reads introduced by doing e.g. `pMappedData[i] += x;`
	Better prepare your data in a local variable and `memcpy()` it to the mapped pointer all at once.
	*/
	VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT = 0x00000400,
	/**
	Requests possibility to map the allocation (using vmaMapMemory() or #VMA_ALLOCATION_CREATE_MAPPED_BIT).

	- If you use #VMA_MEMORY_USAGE_AUTO or other `VMA_MEMORY_USAGE_AUTO*` value,
	  you must use this flag to be able to map the allocation. Otherwise, mapping is incorrect.
	- If you use other value of #VmaMemoryUsage, this flag is ignored and mapping is always possible in memory types that are `HOST_VISIBLE`.
	  This includes allocations created in \ref custom_memory_pools.

	Declares that mapped memory can be read, written, and accessed in random order,
	so a `HOST_CACHED` memory type is preferred.
	*/
	VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT = 0x00000800,
	/**
	Together with #VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT or #VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT,
	it says that despite request for host access, a not-`HOST_VISIBLE` memory type can be selected
	if it may improve performance.

	By using this flag, you declare that you will check if the allocation ended up in a `HOST_VISIBLE` memory type
	(e.g. using vmaGetAllocationMemoryProperties()) and if not, you will create some "staging" buffer and
	issue an explicit transfer to write/read your data.
	To prepare for this possibility, don't forget to add appropriate flags like
	`VK_BUFFER_USAGE_TRANSFER_DST_BIT`, `VK_BUFFER_USAGE_TRANSFER_SRC_BIT` to the parameters of created buffer or image.
	*/
	VMA_ALLOCATION_CREATE_HOST_ACCESS_ALLOW_TRANSFER_INSTEAD_BIT = 0x00001000,
	/** Allocation strategy that chooses smallest possible free range for the allocation
	to minimize memory usage and fragmentation, possibly at the expense of allocation time.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT = 0x00010000,
	/** Allocation strategy that chooses first suitable free range for the allocation -
	not necessarily in terms of the smallest offset but the one that is easiest and fastest to find
	to minimize allocation time, possibly at the expense of allocation quality.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT = 0x00020000,
	/** Allocation strategy that chooses always the lowest offset in available space.
	This is not the most efficient strategy but achieves highly packed data.
	Used internally by defragmentation, not recommended in typical usage.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT  = 0x00040000,
	/** Alias to #VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_BEST_FIT_BIT = VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT,
	/** Alias to #VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_FIRST_FIT_BIT = VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT,
	/** A bit mask to extract only `STRATEGY` bits from entire set of flags.
	*/
	VMA_ALLOCATION_CREATE_STRATEGY_MASK =
		VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT |
		VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT |
		VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT,

	VMA_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// See #VmaAllocationCreateFlagBits.
//typedef VkFlags VmaAllocationCreateFlags;

/// Flags to be passed as VmaPoolCreateInfo::flags.
[CRepr, AllowDuplicates]
enum VmaPoolCreateFlagBits : int32
{
	/** \brief Use this flag if you always allocate only buffers and linear images or only optimal images out of this pool and so Buffer-Image Granularity can be ignored.

	This is an optional optimization flag.

	If you always allocate using vmaCreateBuffer(), vmaCreateImage(),
	vmaAllocateMemoryForBuffer(), then you don't need to use it because allocator
	knows exact type of your allocations so it can handle Buffer-Image Granularity
	in the optimal way.

	If you also allocate using vmaAllocateMemoryForImage() or vmaAllocateMemory(),
	exact type of such allocations is not known, so allocator must be conservative
	in handling Buffer-Image Granularity, which can lead to suboptimal allocation
	(wasted memory). In that case, if you can make sure you always allocate only
	buffers and linear images or only optimal images out of this pool, use this flag
	to make allocator disregard Buffer-Image Granularity and so make allocations
	faster and more optimal.
	*/
	VMA_POOL_CREATE_IGNORE_BUFFER_IMAGE_GRANULARITY_BIT = 0x00000002,

	/** \brief Enables alternative, linear allocation algorithm in this pool.

	Specify this flag to enable linear allocation algorithm, which always creates
	new allocations after last one and doesn't reuse space from allocations freed in
	between. It trades memory consumption for simplified algorithm and data
	structure, which has better performance and uses less memory for metadata.

	By using this flag, you can achieve behavior of free-at-once, stack,
	ring buffer, and double stack.
	For details, see documentation chapter \ref linear_algorithm.
	*/
	VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT = 0x00000004,

	/** Bit mask to extract only `ALGORITHM` bits from entire set of flags.
	*/
	VMA_POOL_CREATE_ALGORITHM_MASK =
		VMA_POOL_CREATE_LINEAR_ALGORITHM_BIT,

	VMA_POOL_CREATE_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// Flags to be passed as VmaPoolCreateInfo::flags. See #VmaPoolCreateFlagBits.
//typedef VkFlags VmaPoolCreateFlags;

/// Flags to be passed as VmaDefragmentationInfo::flags.
[CRepr]
enum VmaDefragmentationFlagBits : int32
{
	/* \brief Use simple but fast algorithm for defragmentation.
	May not achieve best results but will require least time to compute and least allocations to copy.
	*/
	VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FAST_BIT = 0x1,
	/* \brief Default defragmentation algorithm, applied also when no `ALGORITHM` flag is specified.
	Offers a balance between defragmentation quality and the amount of allocations and bytes that need to be moved.
	*/
	VMA_DEFRAGMENTATION_FLAG_ALGORITHM_BALANCED_BIT = 0x2,
	/* \brief Perform full defragmentation of memory.
	Can result in notably more time to compute and allocations to copy, but will achieve best memory packing.
	*/
	VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT = 0x4,
	/** \brief Use the most roboust algorithm at the cost of time to compute and number of copies to make.
	Only available when bufferImageGranularity is greater than 1, since it aims to reduce
	alignment issues between different types of resources.
	Otherwise falls back to same behavior as #VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT.
	*/
	VMA_DEFRAGMENTATION_FLAG_ALGORITHM_EXTENSIVE_BIT = 0x8,

	/// A bit mask to extract only `ALGORITHM` bits from entire set of flags.
	VMA_DEFRAGMENTATION_FLAG_ALGORITHM_MASK =
		VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FAST_BIT |
		VMA_DEFRAGMENTATION_FLAG_ALGORITHM_BALANCED_BIT |
		VMA_DEFRAGMENTATION_FLAG_ALGORITHM_FULL_BIT |
		VMA_DEFRAGMENTATION_FLAG_ALGORITHM_EXTENSIVE_BIT,

	VMA_DEFRAGMENTATION_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// See #VmaDefragmentationFlagBits.
//typedef VkFlags VmaDefragmentationFlags;

/// Operation performed on single defragmentation move. See structure #VmaDefragmentationMove.
[CRepr]
enum VmaDefragmentationMoveOperation : int32
{
	/// Buffer/image has been recreated at `dstTmpAllocation`, data has been copied, old buffer/image has been destroyed. `srcAllocation` should be changed to point to the new place. This is the default value set by vmaBeginDefragmentationPass().
	VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY = 0,
	/// Set this value if you cannot move the allocation. New place reserved at `dstTmpAllocation` will be freed. `srcAllocation` will remain unchanged.
	VMA_DEFRAGMENTATION_MOVE_OPERATION_IGNORE = 1,
	/// Set this value if you decide to abandon the allocation and you destroyed the buffer/image. New place reserved at `dstTmpAllocation` will be freed, along with `srcAllocation`, which will be destroyed.
	VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY = 2,
}

/** @} */

/**
\addtogroup group_virtual
@{
*/

/// Flags to be passed as VmaVirtualBlockCreateInfo::flags.
[CRepr, AllowDuplicates]
enum VmaVirtualBlockCreateFlagBits : int32
{
	/** \brief Enables alternative, linear allocation algorithm in this virtual block.

	Specify this flag to enable linear allocation algorithm, which always creates
	new allocations after last one and doesn't reuse space from allocations freed in
	between. It trades memory consumption for simplified algorithm and data
	structure, which has better performance and uses less memory for metadata.

	By using this flag, you can achieve behavior of free-at-once, stack,
	ring buffer, and double stack.
	For details, see documentation chapter \ref linear_algorithm.
	*/
	VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT = 0x00000001,

	/** \brief Bit mask to extract only `ALGORITHM` bits from entire set of flags.
	*/
	VMA_VIRTUAL_BLOCK_CREATE_ALGORITHM_MASK =
		VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT,

	VMA_VIRTUAL_BLOCK_CREATE_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// Flags to be passed as VmaVirtualBlockCreateInfo::flags. See #VmaVirtualBlockCreateFlagBits.
//typedef VkFlags VmaVirtualBlockCreateFlags;

/// Flags to be passed as VmaVirtualAllocationCreateInfo::flags.
[CRepr, AllowDuplicates]
enum VmaVirtualAllocationCreateFlagBits : int32
{
	/** \brief Allocation will be created from upper stack in a double stack pool.

	This flag is only allowed for virtual blocks created with #VMA_VIRTUAL_BLOCK_CREATE_LINEAR_ALGORITHM_BIT flag.
	*/
	VMA_VIRTUAL_ALLOCATION_CREATE_UPPER_ADDRESS_BIT = (.)VmaAllocationCreateFlagBits.VMA_ALLOCATION_CREATE_UPPER_ADDRESS_BIT,
	/** \brief Allocation strategy that tries to minimize memory usage.
	*/
	VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT = (.)VmaAllocationCreateFlagBits.VMA_ALLOCATION_CREATE_STRATEGY_MIN_MEMORY_BIT,
	/** \brief Allocation strategy that tries to minimize allocation time.
	*/
	VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT = (.)VmaAllocationCreateFlagBits.VMA_ALLOCATION_CREATE_STRATEGY_MIN_TIME_BIT,
	/** Allocation strategy that chooses always the lowest offset in available space.
	This is not the most efficient strategy but achieves highly packed data.
	*/
	VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT = (.)VmaAllocationCreateFlagBits.VMA_ALLOCATION_CREATE_STRATEGY_MIN_OFFSET_BIT,
	/** \brief A bit mask to extract only `STRATEGY` bits from entire set of flags.

	These strategy flags are binary compatible with equivalent flags in #VmaAllocationCreateFlagBits.
	*/
	VMA_VIRTUAL_ALLOCATION_CREATE_STRATEGY_MASK = (.)VmaAllocationCreateFlagBits.VMA_ALLOCATION_CREATE_STRATEGY_MASK,

	VMA_VIRTUAL_ALLOCATION_CREATE_FLAG_BITS_MAX_ENUM = 0x7FFFFFFF
}
/// Flags to be passed as VmaVirtualAllocationCreateInfo::flags. See #VmaVirtualAllocationCreateFlagBits.
//typedef VkFlags VmaVirtualAllocationCreateFlags;

/** @} */

/**
\addtogroup group_init
@{ */

/** \struct VmaAllocator
\brief Represents main object of this library initialized.

Fill structure #VmaAllocatorCreateInfo and call function vmaCreateAllocator() to create it.
Call function vmaDestroyAllocator() to destroy it.

It is recommended to create just one object of this type per `VkDevice` object,
right after Vulkan is initialized and keep it alive until before Vulkan device is destroyed.
*/
[CRepr] struct VmaAllocator : uint { }

/** @} */

/**
\addtogroup group_alloc
@{
*/

/** \struct VmaPool
\brief Represents custom memory pool

Fill structure VmaPoolCreateInfo and call function vmaCreatePool() to create it.
Call function vmaDestroyPool() to destroy it.

For more information see [Custom memory pools](@ref choosing_memory_type_custom_memory_pools).
*/
[CRepr] struct VmaPool : uint { }

/** \struct VmaAllocation
\brief Represents single memory allocation.

It may be either dedicated block of `VkDeviceMemory` or a specific region of a bigger block of this type
plus unique offset.

There are multiple ways to create such object.
You need to fill structure VmaAllocationCreateInfo.
For more information see [Choosing memory type](@ref choosing_memory_type).

Although the library provides convenience functions that create Vulkan buffer or image,
allocate memory for it and bind them together,
binding of the allocation to a buffer or an image is out of scope of the allocation itself.
Allocation object can exist without buffer/image bound,
binding can be done manually by the user, and destruction of it can be done
independently of destruction of the allocation.

The object also remembers its size and some other information.
To retrieve this information, use function vmaGetAllocationInfo() and inspect
returned structure VmaAllocationInfo.
*/
[CRepr] struct VmaAllocation : uint { }

/** \struct VmaDefragmentationContext
\brief An opaque object that represents started defragmentation process.

Fill structure #VmaDefragmentationInfo and call function vmaBeginDefragmentation() to create it.
Call function vmaEndDefragmentation() to destroy it.
*/
[CRepr] struct VmaDefragmentationContext : uint { }

/** @} */

/**
\addtogroup group_virtual
@{
*/

/** \struct VmaVirtualAllocation
\brief Represents single memory allocation done inside VmaVirtualBlock.

Use it as a unique identifier to virtual allocation within the single block.

Use value `VK_NULL_HANDLE` to represent a null/invalid allocation.
*/
[CRepr] struct VmaVirtualAllocation : uint { }

/** @} */

/**
\addtogroup group_virtual
@{
*/

/** \struct VmaVirtualBlock
\brief Handle to a virtual block object that allows to use core allocation algorithm without allocating any real GPU memory.

Fill in #VmaVirtualBlockCreateInfo structure and use vmaCreateVirtualBlock() to create it. Use vmaDestroyVirtualBlock() to destroy it.
For more information, see documentation chapter \ref virtual_allocator.

This object is not thread-safe - should not be used from multiple threads simultaneously, must be synchronized externally.
*/
[CRepr] struct VmaVirtualBlock : uint { }

/** @} */

/**
\addtogroup group_init
@{
*/

/// Callback function called after successful vkAllocateMemory.
typealias PFN_vmaAllocateDeviceMemoryFunction = function void(
	VmaAllocator                     allocator,
	uint32                                     memoryType,
	VkDeviceMemory memory,
	VkDeviceSize                                 size,
	void*                           pUserData);

/// Callback function called before vkFreeMemory.
typealias PFN_vmaFreeDeviceMemoryFunction = function void(
	VmaAllocator                    allocator,
	uint32                                     memoryType,
	VkDeviceMemory memory,
	VkDeviceSize                                 size,
	void*                           pUserData);

/** \brief Set of callbacks that the library will call for `vkAllocateMemory` and `vkFreeMemory`.

Provided for informative purpose, e.g. to gather statistics about number of
allocations or total amount of memory allocated in Vulkan.

Used in VmaAllocatorCreateInfo::pDeviceMemoryCallbacks.
*/
[CRepr]
struct VmaDeviceMemoryCallbacks
{
	/// Optional, can be null.
	public PFN_vmaAllocateDeviceMemoryFunction pfnAllocate;
	/// Optional, can be null.
	public PFN_vmaFreeDeviceMemoryFunction pfnFree;
	/// Optional, can be null.
	public void* pUserData;
}

/** \brief Pointers to some Vulkan functions - a subset used by the library.

Used in VmaAllocatorCreateInfo::pVulkanFunctions.
*/
[CRepr]
struct VmaVulkanFunctions
{
	/// Required when using VMA_DYNAMIC_VULKAN_FUNCTIONS.
	public VulkanNative.vkGetInstanceProcAddrFunction vkGetInstanceProcAddr;
	/// Required when using VMA_DYNAMIC_VULKAN_FUNCTIONS.
	public VulkanNative.vkGetDeviceProcAddrFunction vkGetDeviceProcAddr;
	public VulkanNative.vkGetPhysicalDevicePropertiesFunction vkGetPhysicalDeviceProperties;
	public VulkanNative.vkGetPhysicalDeviceMemoryPropertiesFunction vkGetPhysicalDeviceMemoryProperties;
	public VulkanNative.vkAllocateMemoryFunction vkAllocateMemory;
	public VulkanNative.vkFreeMemoryFunction vkFreeMemory;
	public VulkanNative.vkMapMemoryFunction vkMapMemory;
	public VulkanNative.vkUnmapMemoryFunction vkUnmapMemory;
	public VulkanNative.vkFlushMappedMemoryRangesFunction vkFlushMappedMemoryRanges;
	public VulkanNative.vkInvalidateMappedMemoryRangesFunction vkInvalidateMappedMemoryRanges;
	public VulkanNative.vkBindBufferMemoryFunction vkBindBufferMemory;
	public VulkanNative.vkBindImageMemoryFunction vkBindImageMemory;
	public VulkanNative.vkGetBufferMemoryRequirementsFunction vkGetBufferMemoryRequirements;
	public VulkanNative.vkGetImageMemoryRequirementsFunction vkGetImageMemoryRequirements;
	public VulkanNative.vkCreateBufferFunction vkCreateBuffer;
	public VulkanNative.vkDestroyBufferFunction vkDestroyBuffer;
	public VulkanNative.vkCreateImageFunction vkCreateImage;
	public VulkanNative.vkDestroyImageFunction vkDestroyImage;
	public VulkanNative.vkCmdCopyBufferFunction vkCmdCopyBuffer;
	/// Fetch "vkGetBufferMemoryRequirements2" on Vulkan >= 1.1, fetch "vkGetBufferMemoryRequirements2KHR" when using VK_KHR_dedicated_allocation extension.
	public VulkanNative.vkGetBufferMemoryRequirements2Function vkGetBufferMemoryRequirements2KHR;
	/// Fetch "vkGetImageMemoryRequirements2" on Vulkan >= 1.1, fetch "vkGetImageMemoryRequirements2KHR" when using VK_KHR_dedicated_allocation extension.
	public VulkanNative.vkGetImageMemoryRequirements2Function vkGetImageMemoryRequirements2KHR;
	/// Fetch "vkBindBufferMemory2" on Vulkan >= 1.1, fetch "vkBindBufferMemory2KHR" when using VK_KHR_bind_memory2 extension.
	public VulkanNative.vkBindBufferMemory2Function vkBindBufferMemory2KHR;
	/// Fetch "vkBindImageMemory2" on Vulkan >= 1.1, fetch "vkBindImageMemory2KHR" when using VK_KHR_bind_memory2 extension.
	public VulkanNative.vkBindImageMemory2Function vkBindImageMemory2KHR;
	/// Fetch from "vkGetPhysicalDeviceMemoryProperties2" on Vulkan >= 1.1, but you can also fetch it from "vkGetPhysicalDeviceMemoryProperties2KHR" if you enabled extension VK_KHR_get_physical_device_properties2.
	public VulkanNative.vkGetPhysicalDeviceMemoryProperties2Function vkGetPhysicalDeviceMemoryProperties2KHR;
	/// Fetch from "vkGetDeviceBufferMemoryRequirements" on Vulkan >= 1.3, but you can also fetch it from "vkGetDeviceBufferMemoryRequirementsKHR" if you enabled extension VK_KHR_maintenance4.
	public VulkanNative.vkGetDeviceBufferMemoryRequirementsFunction vkGetDeviceBufferMemoryRequirements;
	/// Fetch from "vkGetDeviceImageMemoryRequirements" on Vulkan >= 1.3, but you can also fetch it from "vkGetDeviceImageMemoryRequirementsKHR" if you enabled extension VK_KHR_maintenance4.
	public VulkanNative.vkGetDeviceImageMemoryRequirementsFunction vkGetDeviceImageMemoryRequirements;
	public void* vkGetMemoryWin32HandleKHR;
}

/// Description of a Allocator to be created.
[CRepr]
struct VmaAllocatorCreateInfo
{
	/// Flags for created allocator. Use #VmaAllocatorCreateFlagBits enum.
	public VmaAllocatorCreateFlagBits flags;
	/// Vulkan physical device.
	/** It must be valid throughout whole lifetime of created allocator. */
	public VkPhysicalDevice physicalDevice;
	/// Vulkan device.
	/** It must be valid throughout whole lifetime of created allocator. */
	public VkDevice device;
	/// Preferred size of a single `VkDeviceMemory` block to be allocated from large heaps > 1 GiB. Optional.
	/** Set to 0 to use default, which is currently 256 MiB. */
	public VkDeviceSize preferredLargeHeapBlockSize;
	/// Custom CPU memory allocation callbacks. Optional.
	/** Optional, can be null. When specified, will also be used for all CPU-side memory allocations. */
	public VkAllocationCallbacks* pAllocationCallbacks;
	/// Informative callbacks for `vkAllocateMemory`, `vkFreeMemory`. Optional.
	/** Optional, can be null. */
	public VmaDeviceMemoryCallbacks* pDeviceMemoryCallbacks;
	/** \brief Either null or a pointer to an array of limits on maximum number of bytes that can be allocated out of particular Vulkan memory heap.

	If not NULL, it must be a pointer to an array of
	`VkPhysicalDeviceMemoryProperties::memoryHeapCount` elements, defining limit on
	maximum number of bytes that can be allocated out of particular Vulkan memory
	heap.

	Any of the elements may be equal to `VK_WHOLE_SIZE`, which means no limit on that
	heap. This is also the default in case of `pHeapSizeLimit` = NULL.

	If there is a limit defined for a heap:

	- If user tries to allocate more memory from that heap using this allocator,
	  the allocation fails with `VK_ERROR_OUT_OF_DEVICE_MEMORY`.
	- If the limit is smaller than heap size reported in `VkMemoryHeap::size`, the
	  value of this limit will be reported instead when using vmaGetMemoryProperties().

	Warning! Using this feature may not be equivalent to installing a GPU with
	smaller amount of memory, because graphics driver doesn't necessary fail new
	allocations with `VK_ERROR_OUT_OF_DEVICE_MEMORY` result when memory capacity is
	exceeded. It may return success and just silently migrate some device memory
	blocks to system RAM. This driver behavior can also be controlled using
	VK_AMD_memory_overallocation_behavior extension.
	*/
	public VkDeviceSize* pHeapSizeLimit;

	/** \brief Pointers to Vulkan functions. Can be null.

	For details see [Pointers to Vulkan functions](@ref config_Vulkan_functions).
	*/
	public VmaVulkanFunctions* pVulkanFunctions;
	/** \brief Handle to Vulkan instance object.

	Starting from version 3.0.0 this member is no longer optional, it must be set!
	*/
	public VkInstance instance;
	/** \brief Optional. Vulkan version that the application uses.

	It must be a value in the format as created by macro `VK_MAKE_VERSION` or a constant like: `VK_API_VERSION_1_1`, `VK_API_VERSION_1_0`.
	The patch version number specified is ignored. Only the major and minor versions are considered.
	Only versions 1.0...1.4 are supported by the current implementation.
	Leaving it initialized to zero is equivalent to `VK_API_VERSION_1_0`.
	It must match the Vulkan version used by the application and supported on the selected physical device,
	so it must be no higher than `VkApplicationInfo::apiVersion` passed to `vkCreateInstance`
	and no higher than `VkPhysicalDeviceProperties::apiVersion` found on the physical device used.
	*/
	public uint32 vulkanApiVersion;
#if VMA_EXTERNAL_MEMORY
	/** \brief Either null or a pointer to an array of external memory handle types for each Vulkan memory type.

	If not NULL, it must be a pointer to an array of `VkPhysicalDeviceMemoryProperties::memoryTypeCount`
	elements, defining external memory handle types of particular Vulkan memory type,
	to be passed using `VkExportMemoryAllocateInfoKHR`.

	Any of the elements may be equal to 0, which means not to use `VkExportMemoryAllocateInfoKHR` on this memory type.
	This is also the default in case of `pTypeExternalMemoryHandleTypes` = NULL.
	*/
	public VkExternalMemoryHandleTypeFlagsKHR* pTypeExternalMemoryHandleTypes;
#endif // #if VMA_EXTERNAL_MEMORY
}

/// Information about existing #VmaAllocator object.
[CRepr]
struct VmaAllocatorInfo
{
	/** \brief Handle to Vulkan instance object.

	This is the same value as has been passed through VmaAllocatorCreateInfo::instance.
	*/
	public VkInstance instance;
	/** \brief Handle to Vulkan physical device object.

	This is the same value as has been passed through VmaAllocatorCreateInfo::physicalDevice.
	*/
	public VkPhysicalDevice physicalDevice;
	/** \brief Handle to Vulkan device object.

	This is the same value as has been passed through VmaAllocatorCreateInfo::device.
	*/
	public VkDevice device;
}

/** @} */

/**
\addtogroup group_stats
@{
*/

/** \brief Calculated statistics of memory usage e.g. in a specific memory type, heap, custom pool, or total.

These are fast to calculate.
See functions: vmaGetHeapBudgets(), vmaGetPoolStatistics().
*/
[CRepr]
struct VmaStatistics
{
	/** \brief Number of `VkDeviceMemory` objects - Vulkan memory blocks allocated.
	*/
	public uint32 blockCount;
	/** \brief Number of #VmaAllocation objects allocated.

	Dedicated allocations have their own blocks, so each one adds 1 to `allocationCount` as well as `blockCount`.
	*/
	public uint32 allocationCount;
	/** \brief Number of bytes allocated in `VkDeviceMemory` blocks.

	\note To avoid confusion, please be aware that what Vulkan calls an "allocation" - a whole `VkDeviceMemory` object
	(e.g. as in `VkPhysicalDeviceLimits::maxMemoryAllocationCount`) is called a "block" in VMA, while VMA calls
	"allocation" a #VmaAllocation object that represents a memory region sub-allocated from such block, usually for a single buffer or image.
	*/
	public VkDeviceSize blockBytes;
	/** \brief Total number of bytes occupied by all #VmaAllocation objects.

	Always less or equal than `blockBytes`.
	Difference `(blockBytes - allocationBytes)` is the amount of memory allocated from Vulkan
	but unused by any #VmaAllocation.
	*/
	public VkDeviceSize allocationBytes;
}

/** \brief More detailed statistics than #VmaStatistics.

These are slower to calculate. Use for debugging purposes.
See functions: vmaCalculateStatistics(), vmaCalculatePoolStatistics().

Previous version of the statistics API provided averages, but they have been removed
because they can be easily calculated as:

\code
VkDeviceSize allocationSizeAvg = detailedStats.statistics.allocationBytes / detailedStats.statistics.allocationCount;
VkDeviceSize unusedBytes = detailedStats.statistics.blockBytes - detailedStats.statistics.allocationBytes;
VkDeviceSize unusedRangeSizeAvg = unusedBytes / detailedStats.unusedRangeCount;
\endcode
*/
[CRepr]
struct VmaDetailedStatistics
{
	/// Basic statistics.
	public VmaStatistics statistics;
	/// Number of free ranges of memory between allocations.
	public uint32 unusedRangeCount;
	/// Smallest allocation size. `VK_WHOLE_SIZE` if there are 0 allocations.
	public VkDeviceSize allocationSizeMin;
	/// Largest allocation size. 0 if there are 0 allocations.
	public VkDeviceSize allocationSizeMax;
	/// Smallest empty range size. `VK_WHOLE_SIZE` if there are 0 empty ranges.
	public VkDeviceSize unusedRangeSizeMin;
	/// Largest empty range size. 0 if there are 0 empty ranges.
	public VkDeviceSize unusedRangeSizeMax;
}

/** \brief  General statistics from current state of the Allocator -
total memory usage across all memory heaps and types.

These are slower to calculate. Use for debugging purposes.
See function vmaCalculateStatistics().
*/
[CRepr]
struct VmaTotalStatistics
{
	public VmaDetailedStatistics[VulkanNative.VK_MAX_MEMORY_TYPES] memoryType;
	public VmaDetailedStatistics[VulkanNative.VK_MAX_MEMORY_HEAPS] memoryHeap;
	public VmaDetailedStatistics total;
}

/** \brief Statistics of current memory usage and available budget for a specific memory heap.

These are fast to calculate.
See function vmaGetHeapBudgets().
*/
[CRepr]
struct VmaBudget
{
	/** \brief Statistics fetched from the library.
	*/
	public VmaStatistics statistics;
	/** \brief Estimated current memory usage of the program, in bytes.

	Fetched from system using VK_EXT_memory_budget extension if enabled.

	It might be different than `statistics.blockBytes` (usually higher) due to additional implicit objects
	also occupying the memory, like swapchain, pipelines, descriptor heaps, command buffers, or
	`VkDeviceMemory` blocks allocated outside of this library, if any.
	*/
	public VkDeviceSize usage;
	/** \brief Estimated amount of memory available to the program, in bytes.

	Fetched from system using VK_EXT_memory_budget extension if enabled.

	It might be different (most probably smaller) than `VkMemoryHeap::size[heapIndex]` due to factors
	external to the program, decided by the operating system.
	Difference `budget - usage` is the amount of additional memory that can probably
	be allocated without problems. Exceeding the budget may result in various problems.
	*/
	public VkDeviceSize budget;
}

/** @} */

/**
\addtogroup group_alloc
@{
*/

/** \brief Parameters of new #VmaAllocation.

To be used with functions like vmaCreateBuffer(), vmaCreateImage(), and many others.
*/
[CRepr]
struct VmaAllocationCreateInfo
{
	/// Use #VmaAllocationCreateFlagBits enum.
	public VmaAllocationCreateFlagBits flags;
	/** \brief Intended usage of memory.

	You can leave #VMA_MEMORY_USAGE_UNKNOWN if you specify memory requirements in other way. \n
	If `pool` is not null, this member is ignored.
	*/
	public VmaMemoryUsage usage;
	/** \brief Flags that must be set in a Memory Type chosen for an allocation.

	Leave 0 if you specify memory requirements in other way. \n
	If `pool` is not null, this member is ignored.*/
	public VkMemoryPropertyFlags requiredFlags;
	/** \brief Flags that preferably should be set in a memory type chosen for an allocation.

	Set to 0 if no additional flags are preferred. \n
	If `pool` is not null, this member is ignored. */
	public VkMemoryPropertyFlags preferredFlags;
	/** \brief Bitmask containing one bit set for every memory type acceptable for this allocation.

	Value 0 is equivalent to `UINT32_MAX` - it means any memory type is accepted if
	it meets other requirements specified by this structure, with no further
	restrictions on memory type index. \n
	If `pool` is not null, this member is ignored.
	*/
	public uint32 memoryTypeBits;
	/** \brief Pool that this allocation should be created in.

	Leave `VK_NULL_HANDLE` to allocate from default pool. If not null, members:
	`usage`, `requiredFlags`, `preferredFlags`, `memoryTypeBits` are ignored.
	*/
	public VmaPool pool;
	/** \brief Custom general-purpose pointer that will be stored in #VmaAllocation, can be read as VmaAllocationInfo::pUserData and changed using vmaSetAllocationUserData().

	If #VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT is used, it must be either
	null or pointer to a null-terminated string. The string will be then copied to
	internal buffer, so it doesn't need to be valid after allocation call.
	*/
	public void* pUserData;
	/** \brief A floating-point value between 0 and 1, indicating the priority of the allocation relative to other memory allocations.

	It is used only when #VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT flag was used during creation of the #VmaAllocator object
	and this allocation ends up as dedicated or is explicitly forced as dedicated using #VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT.
	Otherwise, it has the priority of a memory block where it is placed and this variable is ignored.
	*/
	public float priority;
}

/// Describes parameter of created #VmaPool.
[CRepr]
struct VmaPoolCreateInfo
{
	/** \brief Vulkan memory type index to allocate this pool from.
	*/
	public uint32 memoryTypeIndex;
	/** \brief Use combination of #VmaPoolCreateFlagBits.
	*/
	public VmaPoolCreateFlagBits flags;
	/** \brief Size of a single `VkDeviceMemory` block to be allocated as part of this pool, in bytes. Optional.

	Specify nonzero to set explicit, constant size of memory blocks used by this
	pool.

	Leave 0 to use default and let the library manage block sizes automatically.
	Sizes of particular blocks may vary.
	In this case, the pool will also support dedicated allocations.
	*/
	public VkDeviceSize blockSize;
	/** \brief Minimum number of blocks to be always allocated in this pool, even if they stay empty.

	Set to 0 to have no preallocated blocks and allow the pool be completely empty.
	*/
	public uint minBlockCount;
	/** \brief Maximum number of blocks that can be allocated in this pool. Optional.

	Set to 0 to use default, which is `SIZE_MAX`, which means no limit.

	Set to same value as VmaPoolCreateInfo::minBlockCount to have fixed amount of memory allocated
	throughout whole lifetime of this pool.
	*/
	public uint maxBlockCount;
	/** \brief A floating-point value between 0 and 1, indicating the priority of the allocations in this pool relative to other memory allocations.

	It is used only when #VMA_ALLOCATOR_CREATE_EXT_MEMORY_PRIORITY_BIT flag was used during creation of the #VmaAllocator object.
	Otherwise, this variable is ignored.
	*/
	public float priority;
	/** \brief Additional minimum alignment to be used for all allocations created from this pool. Can be 0.

	Leave 0 (default) not to impose any additional alignment. If not 0, it must be a power of two.
	It can be useful in cases where alignment returned by Vulkan by functions like `vkGetBufferMemoryRequirements` is not enough,
	e.g. when doing interop with OpenGL.
	*/
	public VkDeviceSize minAllocationAlignment;
	/** \brief Additional `pNext` chain to be attached to `VkMemoryAllocateInfo` used for every allocation made by this pool. Optional.

	Optional, can be null. If not null, it must point to a `pNext` chain of structures that can be attached to `VkMemoryAllocateInfo`.
	It can be useful for special needs such as adding `VkExportMemoryAllocateInfoKHR`.
	Structures pointed by this member must remain alive and unchanged for the whole lifetime of the custom pool.

	Please note that some structures, e.g. `VkMemoryPriorityAllocateInfoEXT`, `VkMemoryDedicatedAllocateInfoKHR`,
	can be attached automatically by this library when using other, more convenient of its features.
	*/
	public void* pMemoryAllocateNext;
}

/** @} */

/**
\addtogroup group_alloc
@{
*/

/**
Parameters of #VmaAllocation objects, that can be retrieved using function vmaGetAllocationInfo().

There is also an extended version of this structure that carries additional parameters: #VmaAllocationInfo2.
*/
[CRepr]
struct VmaAllocationInfo
{
	/** \brief Memory type index that this allocation was allocated from.

	It never changes.
	*/
	public uint32 memoryType;
	/** \brief Handle to Vulkan memory object.

	Same memory object can be shared by multiple allocations.

	It can change after the allocation is moved during \ref defragmentation.
	*/
	public VkDeviceMemory deviceMemory;
	/** \brief Offset in `VkDeviceMemory` object to the beginning of this allocation, in bytes. `(deviceMemory, offset)` pair is unique to this allocation.

	You usually don't need to use this offset. If you create a buffer or an image together with the allocation using e.g. function
	vmaCreateBuffer(), vmaCreateImage(), functions that operate on these resources refer to the beginning of the buffer or image,
	not entire device memory block. Functions like vmaMapMemory(), vmaBindBufferMemory() also refer to the beginning of the allocation
	and apply this offset automatically.

	It can change after the allocation is moved during \ref defragmentation.
	*/
	public VkDeviceSize offset;
	/** \brief Size of this allocation, in bytes.

	It never changes.

	\note Allocation size returned in this variable may be greater than the size
	requested for the resource e.g. as `VkBufferCreateInfo::size`. Whole size of the
	allocation is accessible for operations on memory e.g. using a pointer after
	mapping with vmaMapMemory(), but operations on the resource e.g. using
	`vkCmdCopyBuffer` must be limited to the size of the resource.
	*/
	public VkDeviceSize size;
	/** \brief Pointer to the beginning of this allocation as mapped data.

	If the allocation hasn't been mapped using vmaMapMemory() and hasn't been
	created with #VMA_ALLOCATION_CREATE_MAPPED_BIT flag, this value is null.

	It can change after call to vmaMapMemory(), vmaUnmapMemory().
	It can also change after the allocation is moved during \ref defragmentation.
	*/
	public void* pMappedData;
	/** \brief Custom general-purpose pointer that was passed as VmaAllocationCreateInfo::pUserData or set using vmaSetAllocationUserData().

	It can change after call to vmaSetAllocationUserData() for this allocation.
	*/
	public void* pUserData;
	/** \brief Custom allocation name that was set with vmaSetAllocationName().

	It can change after call to vmaSetAllocationName() for this allocation.

	Another way to set custom name is to pass it in VmaAllocationCreateInfo::pUserData with
	additional flag #VMA_ALLOCATION_CREATE_USER_DATA_COPY_STRING_BIT set [DEPRECATED].
	*/
	public char8* pName;
}

/// Extended parameters of a #VmaAllocation object that can be retrieved using function vmaGetAllocationInfo2().
[CRepr]
struct VmaAllocationInfo2
{
	/** \brief Basic parameters of the allocation.
	
	If you need only these, you can use function vmaGetAllocationInfo() and structure #VmaAllocationInfo instead.
	*/
	public VmaAllocationInfo allocationInfo;
	/** \brief Size of the `VkDeviceMemory` block that the allocation belongs to.
	
	In case of an allocation with dedicated memory, it will be equal to `allocationInfo.size`.
	*/
	public VkDeviceSize blockSize;
	/** \brief `VK_TRUE` if the allocation has dedicated memory, `VK_FALSE` if it was placed as part of a larger memory block.
	
	When `VK_TRUE`, it also means `VkMemoryDedicatedAllocateInfo` was used when creating the allocation
	(if VK_KHR_dedicated_allocation extension or Vulkan version >= 1.1 is enabled).
	*/
	public VkBool32 dedicatedMemory;
}

/** Callback function called during vmaBeginDefragmentation() to check custom criterion about ending current defragmentation pass.

Should return true if the defragmentation needs to stop current pass.
*/
typealias PFN_vmaCheckDefragmentationBreakFunction = function VkBool32(void* pUserData);

/** \brief Parameters for defragmentation.

To be used with function vmaBeginDefragmentation().
*/
[CRepr]
struct VmaDefragmentationInfo
{
	/// \brief Use combination of #VmaDefragmentationFlagBits.
	public VmaDefragmentationFlagBits flags;
	/** \brief Custom pool to be defragmented.

	If null then default pools will undergo defragmentation process.
	*/
	public VmaPool pool;
	/** \brief Maximum numbers of bytes that can be copied during single pass, while moving allocations to different places.

	`0` means no limit.
	*/
	public VkDeviceSize maxBytesPerPass;
	/** \brief Maximum number of allocations that can be moved during single pass to a different place.

	`0` means no limit.
	*/
	public uint32 maxAllocationsPerPass;
	/** \brief Optional custom callback for stopping vmaBeginDefragmentation().

	Have to return true for breaking current defragmentation pass.
	*/
	public PFN_vmaCheckDefragmentationBreakFunction pfnBreakCallback;
	/// \brief Optional data to pass to custom callback for stopping pass of defragmentation.
	public void* pBreakCallbackUserData;
}

/// Single move of an allocation to be done for defragmentation.
[CRepr]
struct VmaDefragmentationMove
{
	/// Operation to be performed on the allocation by vmaEndDefragmentationPass(). Default value is #VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY. You can modify it.
	public VmaDefragmentationMoveOperation operation;
	/// Allocation that should be moved.
	public VmaAllocation srcAllocation;
	/** \brief Temporary allocation pointing to destination memory that will replace `srcAllocation`.

	\warning Do not store this allocation in your data structures! It exists only temporarily, for the duration of the defragmentation pass,
	to be used for binding new buffer/image to the destination memory using e.g. vmaBindBufferMemory().
	vmaEndDefragmentationPass() will destroy it and make `srcAllocation` point to this memory.
	*/
	public VmaAllocation dstTmpAllocation;
}

/** \brief Parameters for incremental defragmentation steps.

To be used with function vmaBeginDefragmentationPass().
*/
[CRepr]
struct VmaDefragmentationPassMoveInfo
{
	/// Number of elements in the `pMoves` array.
	public uint32 moveCount;
	/** \brief Array of moves to be performed by the user in the current defragmentation pass.

	Pointer to an array of `moveCount` elements, owned by VMA, created in vmaBeginDefragmentationPass(), destroyed in vmaEndDefragmentationPass().

	For each element, you should:

	1. Create a new buffer/image in the place pointed by VmaDefragmentationMove::dstMemory + VmaDefragmentationMove::dstOffset.
	2. Copy data from the VmaDefragmentationMove::srcAllocation e.g. using `vkCmdCopyBuffer`, `vkCmdCopyImage`.
	3. Make sure these commands finished executing on the GPU.
	4. Destroy the old buffer/image.

	Only then you can finish defragmentation pass by calling vmaEndDefragmentationPass().
	After this call, the allocation will point to the new place in memory.

	Alternatively, if you cannot move specific allocation, you can set VmaDefragmentationMove::operation to #VMA_DEFRAGMENTATION_MOVE_OPERATION_IGNORE.

	Alternatively, if you decide you want to completely remove the allocation:

	1. Destroy its buffer/image.
	2. Set VmaDefragmentationMove::operation to #VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY.

	Then, after vmaEndDefragmentationPass() the allocation will be freed.
	*/
	public VmaDefragmentationMove* pMoves;
}

/// Statistics returned for defragmentation process in function vmaEndDefragmentation().
[CRepr]
struct VmaDefragmentationStats
{
	/// Total number of bytes that have been copied while moving allocations to different places.
	public VkDeviceSize bytesMoved;
	/// Total number of bytes that have been released to the system by freeing empty `VkDeviceMemory` objects.
	public VkDeviceSize bytesFreed;
	/// Number of allocations that have been moved to different places.
	public uint32 allocationsMoved;
	/// Number of empty `VkDeviceMemory` objects that have been released to the system.
	public uint32 deviceMemoryBlocksFreed;
}

/** @} */

/**
\addtogroup group_virtual
@{
*/

/// Parameters of created #VmaVirtualBlock object to be passed to vmaCreateVirtualBlock().
[CRepr]
struct VmaVirtualBlockCreateInfo
{
	/** \brief Total size of the virtual block.

	Sizes can be expressed in bytes or any units you want as long as you are consistent in using them.
	For example, if you allocate from some array of structures, 1 can mean single instance of entire structure.
	*/
	public VkDeviceSize size;

	/** \brief Use combination of #VmaVirtualBlockCreateFlagBits.
	*/
	public VmaVirtualBlockCreateFlagBits flags;

	/** \brief Custom CPU memory allocation callbacks. Optional.

	Optional, can be null. When specified, they will be used for all CPU-side memory allocations.
	*/
	public VkAllocationCallbacks* pAllocationCallbacks;
}

/// Parameters of created virtual allocation to be passed to vmaVirtualAllocate().
[CRepr]
struct VmaVirtualAllocationCreateInfo
{
	/** \brief Size of the allocation.

	Cannot be zero.
	*/
	public VkDeviceSize size;
	/** \brief Required alignment of the allocation. Optional.

	Must be power of two. Special value 0 has the same meaning as 1 - means no special alignment is required, so allocation can start at any offset.
	*/
	public VkDeviceSize alignment;
	/** \brief Use combination of #VmaVirtualAllocationCreateFlagBits.
	*/
	public VmaVirtualAllocationCreateFlagBits flags;
	/** \brief Custom pointer to be associated with the allocation. Optional.

	It can be any value and can be used for user-defined purposes. It can be fetched or changed later.
	*/
	public void* pUserData;
}

/// Parameters of an existing virtual allocation, returned by vmaGetVirtualAllocationInfo().
[CRepr]
struct VmaVirtualAllocationInfo
{
	/** \brief Offset of the allocation.

	Offset at which the allocation was made.
	*/
	public VkDeviceSize offset;
	/** \brief Size of the allocation.

	Same value as passed in VmaVirtualAllocationCreateInfo::size.
	*/
	public VkDeviceSize size;
	/** \brief Custom pointer associated with the allocation.

	Same value as passed in VmaVirtualAllocationCreateInfo::pUserData or to vmaSetVirtualAllocationUserData().
	*/
	public void* pUserData;
}

/** @} */


/**
\addtogroup group_init
@{
*/

static
{
/// Creates #VmaAllocator object.
	[CLink] public static extern VkResult vmaCreateAllocator(
		VmaAllocatorCreateInfo* pCreateInfo,
		VmaAllocator* pAllocator);

/// Destroys allocator object.
	[CLink] public static extern void vmaDestroyAllocator(
		VmaAllocator allocator);

/** \brief Returns information about existing #VmaAllocator object - handle to Vulkan device etc.

It might be useful if you want to keep just the #VmaAllocator handle and fetch other required handles to
`VkPhysicalDevice`, `VkDevice` etc. every time using this function.
*/
	[CLink] public static extern void vmaGetAllocatorInfo(
		VmaAllocator allocator,
		VmaAllocatorInfo* pAllocatorInfo);

/**
PhysicalDeviceProperties are fetched from physicalDevice by the allocator.
You can access it here, without fetching it again on your own.
*/
	[CLink] public static extern void vmaGetPhysicalDeviceProperties(
		VmaAllocator allocator,
		VkPhysicalDeviceProperties** ppPhysicalDeviceProperties);

/**
PhysicalDeviceMemoryProperties are fetched from physicalDevice by the allocator.
You can access it here, without fetching it again on your own.
*/
	[CLink] public static extern void vmaGetMemoryProperties(
		VmaAllocator allocator,
		VkPhysicalDeviceMemoryProperties** ppPhysicalDeviceMemoryProperties);

/**
\brief Given Memory Type Index, returns Property Flags of this memory type.

This is just a convenience function. Same information can be obtained using
vmaGetMemoryProperties().
*/
	[CLink] public static extern void vmaGetMemoryTypeProperties(
		VmaAllocator allocator,
		uint32 memoryTypeIndex,
		VkMemoryPropertyFlags* pFlags);

/** \brief Sets index of the current frame.
*/
	[CLink] public static extern void vmaSetCurrentFrameIndex(
		VmaAllocator allocator,
		uint32 frameIndex);

/** @} */

/**
\addtogroup group_stats
@{
*/

/** \brief Retrieves statistics from current state of the Allocator.

This function is called "calculate" not "get" because it has to traverse all
internal data structures, so it may be quite slow. Use it for debugging purposes.
For faster but more brief statistics suitable to be called every frame or every allocation,
use vmaGetHeapBudgets().

Note that when using allocator from multiple threads, returned information may immediately
become outdated.
*/
	[CLink] public static extern void vmaCalculateStatistics(
		VmaAllocator allocator,
		VmaTotalStatistics* pStats);

/** \brief Retrieves information about current memory usage and budget for all memory heaps.

\param allocator
\param[out] pBudgets Must point to array with number of elements at least equal to number of memory heaps in physical device used.

This function is called "get" not "calculate" because it is very fast, suitable to be called
every frame or every allocation. For more detailed statistics use vmaCalculateStatistics().

Note that when using allocator from multiple threads, returned information may immediately
become outdated.
*/
	[CLink] public static extern void vmaGetHeapBudgets(
		VmaAllocator allocator,
		VmaBudget*  pBudgets);

/** @} */

/**
\addtogroup group_alloc
@{
*/

/**
\brief Helps to find memoryTypeIndex, given memoryTypeBits and VmaAllocationCreateInfo.

This algorithm tries to find a memory type that:

- Is allowed by memoryTypeBits.
- Contains all the flags from pAllocationCreateInfo->requiredFlags.
- Matches intended usage.
- Has as many flags from pAllocationCreateInfo->preferredFlags as possible.

\return Returns VK_ERROR_FEATURE_NOT_PRESENT if not found. Receiving such result
from this function or any other allocating function probably means that your
device doesn't support any memory type with requested features for the specific
type of resource you want to use it for. Please check parameters of your
resource, like image layout (OPTIMAL versus LINEAR) or mip level count.
*/
	[CLink] public static extern VkResult vmaFindMemoryTypeIndex(
		VmaAllocator allocator,
		uint32 memoryTypeBits,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		uint32* pMemoryTypeIndex);

/**
\brief Helps to find memoryTypeIndex, given VkBufferCreateInfo and VmaAllocationCreateInfo.

It can be useful e.g. to determine value to be used as VmaPoolCreateInfo::memoryTypeIndex.
It internally creates a temporary, dummy buffer that never has memory bound.
*/
	[CLink] public static extern VkResult vmaFindMemoryTypeIndexForBufferInfo(
		VmaAllocator allocator,
		VkBufferCreateInfo* pBufferCreateInfo,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		uint32* pMemoryTypeIndex);

/**
\brief Helps to find memoryTypeIndex, given VkImageCreateInfo and VmaAllocationCreateInfo.

It can be useful e.g. to determine value to be used as VmaPoolCreateInfo::memoryTypeIndex.
It internally creates a temporary, dummy image that never has memory bound.
*/
	[CLink] public static extern VkResult vmaFindMemoryTypeIndexForImageInfo(
		VmaAllocator allocator,
		VkImageCreateInfo* pImageCreateInfo,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		uint32* pMemoryTypeIndex);

/** \brief Allocates Vulkan device memory and creates #VmaPool object.

\param allocator Allocator object.
\param pCreateInfo Parameters of pool to create.
\param[out] pPool Handle to created pool.
*/
	[CLink] public static extern VkResult vmaCreatePool(
		VmaAllocator allocator,
		VmaPoolCreateInfo* pCreateInfo,
		VmaPool* pPool);

/** \brief Destroys #VmaPool object and frees Vulkan device memory.
*/
	[CLink] public static extern void vmaDestroyPool(
		VmaAllocator allocator,
		VmaPool pool);

/** @} */

/**
\addtogroup group_stats
@{
*/

/** \brief Retrieves statistics of existing #VmaPool object.

\param allocator Allocator object.
\param pool Pool object.
\param[out] pPoolStats Statistics of specified pool.

Note that when using the pool from multiple threads, returned information may immediately
become outdated.
*/
	[CLink] public static extern void vmaGetPoolStatistics(
		VmaAllocator allocator,
		VmaPool pool,
		VmaStatistics* pPoolStats);

/** \brief Retrieves detailed statistics of existing #VmaPool object.

\param allocator Allocator object.
\param pool Pool object.
\param[out] pPoolStats Statistics of specified pool.
*/
	[CLink] public static extern void vmaCalculatePoolStatistics(
		VmaAllocator allocator,
		VmaPool pool,
		VmaDetailedStatistics* pPoolStats);

/** @} */

/**
\addtogroup group_alloc
@{
*/

/** \brief Checks magic number in margins around all allocations in given memory pool in search for corruptions.

Corruption detection is enabled only when `VMA_DEBUG_DETECT_CORRUPTION` macro is defined to nonzero,
`VMA_DEBUG_MARGIN` is defined to nonzero and the pool is created in memory type that is
`HOST_VISIBLE` and `HOST_COHERENT`. For more information, see [Corruption detection](@ref debugging_memory_usage_corruption_detection).

Possible return values:

- `VK_ERROR_FEATURE_NOT_PRESENT` - corruption detection is not enabled for specified pool.
- `VK_SUCCESS` - corruption detection has been performed and succeeded.
- `VK_ERROR_UNKNOWN` - corruption detection has been performed and found memory corruptions around one of the allocations.
  `VMA_ASSERT` is also fired in that case.
- Other value: Error returned by Vulkan, e.g. memory mapping failure.
*/
	[CLink] public static extern VkResult vmaCheckPoolCorruption(
		VmaAllocator allocator,
		VmaPool pool);

/** \brief Retrieves name of a custom pool.

After the call `ppName` is either null or points to an internally-owned null-terminated string
containing name of the pool that was previously set. The pointer becomes invalid when the pool is
destroyed or its name is changed using vmaSetPoolName().
*/
	[CLink] public static extern void vmaGetPoolName(
		VmaAllocator allocator,
		VmaPool pool,
		char8** ppName);

/** \brief Sets name of a custom pool.

`pName` can be either null or pointer to a null-terminated string with new name for the pool.
Function makes internal copy of the string, so it can be changed or freed immediately after this call.
*/
	[CLink] public static extern void vmaSetPoolName(
		VmaAllocator allocator,
		VmaPool pool,
		char8* pName);

/** \brief General purpose memory allocation.

\param allocator
\param pVkMemoryRequirements
\param pCreateInfo
\param[out] pAllocation Handle to allocated memory.
\param[out] pAllocationInfo Optional. Information about allocated memory. It can be later fetched using function vmaGetAllocationInfo().

You should free the memory using vmaFreeMemory() or vmaFreeMemoryPages().

It is recommended to use vmaAllocateMemoryForBuffer(), vmaAllocateMemoryForImage(),
vmaCreateBuffer(), vmaCreateImage() instead whenever possible.
*/
	[CLink] public static extern VkResult vmaAllocateMemory(
		VmaAllocator allocator,
		VkMemoryRequirements* pVkMemoryRequirements,
		VmaAllocationCreateInfo* pCreateInfo,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief General purpose memory allocation for multiple allocation objects at once.

\param allocator Allocator object.
\param pVkMemoryRequirements Memory requirements for each allocation.
\param pCreateInfo Creation parameters for each allocation.
\param allocationCount Number of allocations to make.
\param[out] pAllocations Pointer to array that will be filled with handles to created allocations.
\param[out] pAllocationInfo Optional. Pointer to array that will be filled with parameters of created allocations.

You should free the memory using vmaFreeMemory() or vmaFreeMemoryPages().

Word "pages" is just a suggestion to use this function to allocate pieces of memory needed for sparse binding.
It is just a general purpose allocation function able to make multiple allocations at once.
It may be internally optimized to be more efficient than calling vmaAllocateMemory() `allocationCount` times.

All allocations are made using same parameters. All of them are created out of the same memory pool and type.
If any allocation fails, all allocations already made within this function call are also freed, so that when
returned result is not `VK_SUCCESS`, `pAllocation` array is always entirely filled with `VK_NULL_HANDLE`.
*/
	[CLink] public static extern VkResult vmaAllocateMemoryPages(
		VmaAllocator allocator,
		VkMemoryRequirements*  pVkMemoryRequirements,
		VmaAllocationCreateInfo* pCreateInfo,
		uint allocationCount,
		VmaAllocation*  pAllocations,
		VmaAllocationInfo*  pAllocationInfo);

/** \brief Allocates memory suitable for given `VkBuffer`.

\param allocator
\param buffer
\param pCreateInfo
\param[out] pAllocation Handle to allocated memory.
\param[out] pAllocationInfo Optional. Information about allocated memory. It can be later fetched using function vmaGetAllocationInfo().

It only creates #VmaAllocation. To bind the memory to the buffer, use vmaBindBufferMemory().

This is a special-purpose function. In most cases you should use vmaCreateBuffer().

You must free the allocation using vmaFreeMemory() when no longer needed.
*/
	[CLink] public static extern VkResult vmaAllocateMemoryForBuffer(
		VmaAllocator allocator,
		VkBuffer  buffer,
		VmaAllocationCreateInfo* pCreateInfo,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief Allocates memory suitable for given `VkImage`.

\param allocator
\param image
\param pCreateInfo
\param[out] pAllocation Handle to allocated memory.
\param[out] pAllocationInfo Optional. Information about allocated memory. It can be later fetched using function vmaGetAllocationInfo().

It only creates #VmaAllocation. To bind the memory to the buffer, use vmaBindImageMemory().

This is a special-purpose function. In most cases you should use vmaCreateImage().

You must free the allocation using vmaFreeMemory() when no longer needed.
*/
	[CLink] public static extern VkResult vmaAllocateMemoryForImage(
		VmaAllocator allocator,
		VkImage  image,
		VmaAllocationCreateInfo* pCreateInfo,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief Frees memory previously allocated using vmaAllocateMemory(), vmaAllocateMemoryForBuffer(), or vmaAllocateMemoryForImage().

Passing `VK_NULL_HANDLE` as `allocation` is valid. Such function call is just skipped.
*/
	[CLink] public static extern void vmaFreeMemory(
		VmaAllocator allocator,
		VmaAllocation allocation);

/** \brief Frees memory and destroys multiple allocations.

Word "pages" is just a suggestion to use this function to free pieces of memory used for sparse binding.
It is just a general purpose function to free memory and destroy allocations made using e.g. vmaAllocateMemory(),
vmaAllocateMemoryPages() and other functions.
It may be internally optimized to be more efficient than calling vmaFreeMemory() `allocationCount` times.

Allocations in `pAllocations` array can come from any memory pools and types.
Passing `VK_NULL_HANDLE` as elements of `pAllocations` array is valid. Such entries are just skipped.
*/
	[CLink] public static extern void vmaFreeMemoryPages(
		VmaAllocator allocator,
		uint allocationCount,
		VmaAllocation* pAllocations);

/** \brief Returns current information about specified allocation.

Current parameters of given allocation are returned in `pAllocationInfo`.

Although this function doesn't lock any mutex, so it should be quite efficient,
you should avoid calling it too often.
You can retrieve same VmaAllocationInfo structure while creating your resource, from function
vmaCreateBuffer(), vmaCreateImage(). You can remember it if you are sure parameters don't change
(e.g. due to defragmentation).

There is also a new function vmaGetAllocationInfo2() that offers extended information
about the allocation, returned using new structure #VmaAllocationInfo2.
*/
	[CLink] public static extern void vmaGetAllocationInfo(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief Returns extended information about specified allocation.

Current parameters of given allocation are returned in `pAllocationInfo`.
Extended parameters in structure #VmaAllocationInfo2 include memory block size
and a flag telling whether the allocation has dedicated memory.
It can be useful e.g. for interop with OpenGL.
*/
	[CLink] public static extern void vmaGetAllocationInfo2(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VmaAllocationInfo2* pAllocationInfo);

/** \brief Sets pUserData in given allocation to new value.

The value of pointer `pUserData` is copied to allocation's `pUserData`.
It is opaque, so you can use it however you want - e.g.
as a pointer, ordinal number or some handle to you own data.
*/
	[CLink] public static extern void vmaSetAllocationUserData(
		VmaAllocator allocator,
		VmaAllocation allocation,
		void* pUserData);

/** \brief Sets pName in given allocation to new value.

`pName` must be either null, or pointer to a null-terminated string. The function
makes local copy of the string and sets it as allocation's `pName`. String
passed as pName doesn't need to be valid for whole lifetime of the allocation -
you can free it after this call. String previously pointed by allocation's
`pName` is freed from memory.
*/
	[CLink] public static extern void vmaSetAllocationName(
		VmaAllocator allocator,
		VmaAllocation allocation,
		char8* pName);

/**
\brief Given an allocation, returns Property Flags of its memory type.

This is just a convenience function. Same information can be obtained using
vmaGetAllocationInfo() + vmaGetMemoryProperties().
*/
	[CLink] public static extern void vmaGetAllocationMemoryProperties(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkMemoryPropertyFlags* pFlags);


#if BF_PLATFORM_WINDOWS //VMA_EXTERNAL_MEMORY_WIN32
/**
\brief Given an allocation, returns Win32 handle that may be imported by other processes or APIs.

\param hTargetProcess Must be a valid handle to target process or null. If it's null, the function returns
	handle for the current process.
\param[out] pHandle Output parameter that returns the handle.

The function fills `pHandle` with handle that can be used in target process.
The handle is fetched using function `vkGetMemoryWin32HandleKHR`.
When no longer needed, you must close it using:

\code
CloseHandle(handle);
\endcode

You can close it any time, before or after destroying the allocation object.
It is reference-counted internally by Windows.

Note the handle is returned for the entire `VkDeviceMemory` block that the allocation belongs to.
If the allocation is sub-allocated from a larger block, you may need to consider the offset of the allocation
(VmaAllocationInfo::offset).

If the function fails with `VK_ERROR_FEATURE_NOT_PRESENT` error code, please double-check
that VmaVulkanFunctions::vkGetMemoryWin32HandleKHR function pointer is set, e.g. either by using `VMA_DYNAMIC_VULKAN_FUNCTIONS`
or by manually passing it through VmaAllocatorCreateInfo::pVulkanFunctions.

For more information, see chapter \ref vk_khr_external_memory_win32.
*/
	[CLink] public static extern VkResult vmaGetMemoryWin32Handle(VmaAllocator allocator,
		VmaAllocation allocation, void* hTargetProcess, void** pHandle);
#endif // VMA_EXTERNAL_MEMORY_WIN32

/** \brief Maps memory represented by given allocation and returns pointer to it.

Maps memory represented by given allocation to make it accessible to CPU code.
When succeeded, `*ppData` contains pointer to first byte of this memory.

\warning
If the allocation is part of a bigger `VkDeviceMemory` block, returned pointer is
correctly offsetted to the beginning of region assigned to this particular allocation.
Unlike the result of `vkMapMemory`, it points to the allocation, not to the beginning of the whole block.
You should not add VmaAllocationInfo::offset to it!

Mapping is internally reference-counted and synchronized, so despite raw Vulkan
function `vkMapMemory()` cannot be used to map same block of `VkDeviceMemory`
multiple times simultaneously, it is safe to call this function on allocations
assigned to the same memory block. Actual Vulkan memory will be mapped on first
mapping and unmapped on last unmapping.

If the function succeeded, you must call vmaUnmapMemory() to unmap the
allocation when mapping is no longer needed or before freeing the allocation, at
the latest.

It also safe to call this function multiple times on the same allocation. You
must call vmaUnmapMemory() same number of times as you called vmaMapMemory().

It is also safe to call this function on allocation created with
	#VMA_ALLOCATION_CREATE_MAPPED_BIT flag. Its memory stays mapped all the time.
You must still call vmaUnmapMemory() same number of times as you called
vmaMapMemory(). You must not call vmaUnmapMemory() additional time to free the
"0-th" mapping made automatically due to #VMA_ALLOCATION_CREATE_MAPPED_BIT flag.

This function fails when used on allocation made in memory type that is not
`HOST_VISIBLE`.

This function doesn't automatically flush or invalidate caches.
If the allocation is made from a memory types that is not `HOST_COHERENT`,
you also need to use vmaInvalidateAllocation() / vmaFlushAllocation(), as required by Vulkan specification.
*/
	[CLink] public static extern VkResult vmaMapMemory(
		VmaAllocator allocator,
		VmaAllocation allocation,
		void** ppData);

/** \brief Unmaps memory represented by given allocation, mapped previously using vmaMapMemory().

For details, see description of vmaMapMemory().

This function doesn't automatically flush or invalidate caches.
If the allocation is made from a memory types that is not `HOST_COHERENT`,
you also need to use vmaInvalidateAllocation() / vmaFlushAllocation(), as required by Vulkan specification.
*/
	[CLink] public static extern void vmaUnmapMemory(
		VmaAllocator allocator,
		VmaAllocation allocation);

/** \brief Flushes memory of given allocation.

Calls `vkFlushMappedMemoryRanges()` for memory associated with given range of given allocation.
It needs to be called after writing to a mapped memory for memory types that are not `HOST_COHERENT`.
Unmap operation doesn't do that automatically.

- `offset` must be relative to the beginning of allocation.
- `size` can be `VK_WHOLE_SIZE`. It means all memory from `offset` the the end of given allocation.
- `offset` and `size` don't have to be aligned.
  They are internally rounded down/up to multiply of `nonCoherentAtomSize`.
- If `size` is 0, this call is ignored.
- If memory type that the `allocation` belongs to is not `HOST_VISIBLE` or it is `HOST_COHERENT`,
  this call is ignored.

Warning! `offset` and `size` are relative to the contents of given `allocation`.
If you mean whole allocation, you can pass 0 and `VK_WHOLE_SIZE`, respectively.
Do not pass allocation's offset as `offset`!!!

This function returns the `VkResult` from `vkFlushMappedMemoryRanges` if it is
called, otherwise `VK_SUCCESS`.
*/
	[CLink] public static extern VkResult vmaFlushAllocation(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize offset,
		VkDeviceSize size);

/** \brief Invalidates memory of given allocation.

Calls `vkInvalidateMappedMemoryRanges()` for memory associated with given range of given allocation.
It needs to be called before reading from a mapped memory for memory types that are not `HOST_COHERENT`.
Map operation doesn't do that automatically.

- `offset` must be relative to the beginning of allocation.
- `size` can be `VK_WHOLE_SIZE`. It means all memory from `offset` the the end of given allocation.
- `offset` and `size` don't have to be aligned.
  They are internally rounded down/up to multiply of `nonCoherentAtomSize`.
- If `size` is 0, this call is ignored.
- If memory type that the `allocation` belongs to is not `HOST_VISIBLE` or it is `HOST_COHERENT`,
  this call is ignored.

Warning! `offset` and `size` are relative to the contents of given `allocation`.
If you mean whole allocation, you can pass 0 and `VK_WHOLE_SIZE`, respectively.
Do not pass allocation's offset as `offset`!!!

This function returns the `VkResult` from `vkInvalidateMappedMemoryRanges` if
it is called, otherwise `VK_SUCCESS`.
*/
	[CLink] public static extern VkResult vmaInvalidateAllocation(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize offset,
		VkDeviceSize size);

/** \brief Flushes memory of given set of allocations.

Calls `vkFlushMappedMemoryRanges()` for memory associated with given ranges of given allocations.
For more information, see documentation of vmaFlushAllocation().

\param allocator
\param allocationCount
\param allocations
\param offsets If not null, it must point to an array of offsets of regions to flush, relative to the beginning of respective allocations. Null means all offsets are zero.
\param sizes If not null, it must point to an array of sizes of regions to flush in respective allocations. Null means `VK_WHOLE_SIZE` for all allocations.

This function returns the `VkResult` from `vkFlushMappedMemoryRanges` if it is
called, otherwise `VK_SUCCESS`.
*/
	[CLink] public static extern VkResult vmaFlushAllocations(
		VmaAllocator allocator,
		uint32 allocationCount,
		VmaAllocation*  allocations,
		VkDeviceSize*  offsets,
		VkDeviceSize*  sizes);

/** \brief Invalidates memory of given set of allocations.

Calls `vkInvalidateMappedMemoryRanges()` for memory associated with given ranges of given allocations.
For more information, see documentation of vmaInvalidateAllocation().

\param allocator
\param allocationCount
\param allocations
\param offsets If not null, it must point to an array of offsets of regions to flush, relative to the beginning of respective allocations. Null means all offsets are zero.
\param sizes If not null, it must point to an array of sizes of regions to flush in respective allocations. Null means `VK_WHOLE_SIZE` for all allocations.

This function returns the `VkResult` from `vkInvalidateMappedMemoryRanges` if it is
called, otherwise `VK_SUCCESS`.
*/
	[CLink] public static extern VkResult vmaInvalidateAllocations(
		VmaAllocator allocator,
		uint32 allocationCount,
		VmaAllocation*  allocations,
		VkDeviceSize*  offsets,
		VkDeviceSize*  sizes);

/** \brief Maps the allocation temporarily if needed, copies data from specified host pointer to it, and flushes the memory from the host caches if needed.

\param allocator
\param pSrcHostPointer Pointer to the host data that become source of the copy.
\param dstAllocation   Handle to the allocation that becomes destination of the copy.
\param dstAllocationLocalOffset  Offset within `dstAllocation` where to write copied data, in bytes.
\param size            Number of bytes to copy.

This is a convenience function that allows to copy data from a host pointer to an allocation easily.
Same behavior can be achieved by calling vmaMapMemory(), `memcpy()`, vmaUnmapMemory(), vmaFlushAllocation().

This function can be called only for allocations created in a memory type that has `VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT` flag.
It can be ensured e.g. by using #VMA_MEMORY_USAGE_AUTO and #VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT or
	#VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT.
Otherwise, the function will fail and generate a Validation Layers error.

`dstAllocationLocalOffset` is relative to the contents of given `dstAllocation`.
If you mean whole allocation, you should pass 0.
Do not pass allocation's offset within device memory block this parameter!
*/
	[CLink] public static extern VkResult vmaCopyMemoryToAllocation(
		VmaAllocator allocator,
		void* pSrcHostPointer,
		VmaAllocation dstAllocation,
		VkDeviceSize dstAllocationLocalOffset,
		VkDeviceSize size);

/** \brief Invalidates memory in the host caches if needed, maps the allocation temporarily if needed, and copies data from it to a specified host pointer.

\param allocator
\param srcAllocation   Handle to the allocation that becomes source of the copy.
\param srcAllocationLocalOffset  Offset within `srcAllocation` where to read copied data, in bytes.
\param pDstHostPointer Pointer to the host memory that become destination of the copy.
\param size            Number of bytes to copy.

This is a convenience function that allows to copy data from an allocation to a host pointer easily.
Same behavior can be achieved by calling vmaInvalidateAllocation(), vmaMapMemory(), `memcpy()`, vmaUnmapMemory().

This function should be called only for allocations created in a memory type that has `VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT`
and `VK_MEMORY_PROPERTY_HOST_CACHED_BIT` flag.
It can be ensured e.g. by using #VMA_MEMORY_USAGE_AUTO and #VMA_ALLOCATION_CREATE_HOST_ACCESS_RANDOM_BIT.
Otherwise, the function may fail and generate a Validation Layers error.
It may also work very slowly when reading from an uncached memory.

`srcAllocationLocalOffset` is relative to the contents of given `srcAllocation`.
If you mean whole allocation, you should pass 0.
Do not pass allocation's offset within device memory block as this parameter!
*/
	[CLink] public static extern VkResult vmaCopyAllocationToMemory(
		VmaAllocator allocator,
		VmaAllocation srcAllocation,
		VkDeviceSize srcAllocationLocalOffset,
		void* pDstHostPointer,
		VkDeviceSize size);

/** \brief Checks magic number in margins around all allocations in given memory types (in both default and custom pools) in search for corruptions.

\param allocator
\param memoryTypeBits Bit mask, where each bit set means that a memory type with that index should be checked.

Corruption detection is enabled only when `VMA_DEBUG_DETECT_CORRUPTION` macro is defined to nonzero,
`VMA_DEBUG_MARGIN` is defined to nonzero and only for memory types that are
`HOST_VISIBLE` and `HOST_COHERENT`. For more information, see [Corruption detection](@ref debugging_memory_usage_corruption_detection).

Possible return values:

- `VK_ERROR_FEATURE_NOT_PRESENT` - corruption detection is not enabled for any of specified memory types.
- `VK_SUCCESS` - corruption detection has been performed and succeeded.
- `VK_ERROR_UNKNOWN` - corruption detection has been performed and found memory corruptions around one of the allocations.
  `VMA_ASSERT` is also fired in that case.
- Other value: Error returned by Vulkan, e.g. memory mapping failure.
*/
	[CLink] public static extern VkResult vmaCheckCorruption(
		VmaAllocator allocator,
		uint32 memoryTypeBits);

/** \brief Begins defragmentation process.

\param allocator Allocator object.
\param pInfo Structure filled with parameters of defragmentation.
\param[out] pContext Context object that must be passed to vmaEndDefragmentation() to finish defragmentation.
\returns
- `VK_SUCCESS` if defragmentation can begin.
- `VK_ERROR_FEATURE_NOT_PRESENT` if defragmentation is not supported.

For more information about defragmentation, see documentation chapter:
[Defragmentation](@ref defragmentation).
*/
	[CLink] public static extern VkResult vmaBeginDefragmentation(
		VmaAllocator allocator,
		VmaDefragmentationInfo* pInfo,
		VmaDefragmentationContext* pContext);

/** \brief Ends defragmentation process.

\param allocator Allocator object.
\param context Context object that has been created by vmaBeginDefragmentation().
\param[out] pStats Optional stats for the defragmentation. Can be null.

Use this function to finish defragmentation started by vmaBeginDefragmentation().
*/
	[CLink] public static extern void vmaEndDefragmentation(
		VmaAllocator allocator,
		VmaDefragmentationContext context,
		VmaDefragmentationStats* pStats);

/** \brief Starts single defragmentation pass.

\param allocator Allocator object.
\param context Context object that has been created by vmaBeginDefragmentation().
\param[out] pPassInfo Computed information for current pass.
\returns
- `VK_SUCCESS` if no more moves are possible. Then you can omit call to vmaEndDefragmentationPass() and simply end whole defragmentation.
- `VK_INCOMPLETE` if there are pending moves returned in `pPassInfo`. You need to perform them, call vmaEndDefragmentationPass(),
  and then preferably try another pass with vmaBeginDefragmentationPass().
*/
	[CLink] public static extern VkResult vmaBeginDefragmentationPass(
		VmaAllocator allocator,
		VmaDefragmentationContext context,
		VmaDefragmentationPassMoveInfo* pPassInfo);

/** \brief Ends single defragmentation pass.

\param allocator Allocator object.
\param context Context object that has been created by vmaBeginDefragmentation().
\param pPassInfo Computed information for current pass filled by vmaBeginDefragmentationPass() and possibly modified by you.

Returns `VK_SUCCESS` if no more moves are possible or `VK_INCOMPLETE` if more defragmentations are possible.

Ends incremental defragmentation pass and commits all defragmentation moves from `pPassInfo`.
After this call:

- Allocations at `pPassInfo[i].srcAllocation` that had `pPassInfo[i].operation ==` #VMA_DEFRAGMENTATION_MOVE_OPERATION_COPY
  (which is the default) will be pointing to the new destination place.
- Allocation at `pPassInfo[i].srcAllocation` that had `pPassInfo[i].operation ==` #VMA_DEFRAGMENTATION_MOVE_OPERATION_DESTROY
  will be freed.

If no more moves are possible you can end whole defragmentation.
*/
	[CLink] public static extern VkResult vmaEndDefragmentationPass(
		VmaAllocator allocator,
		VmaDefragmentationContext context,
		VmaDefragmentationPassMoveInfo* pPassInfo);

/** \brief Binds buffer to allocation.

Binds specified buffer to region of memory represented by specified allocation.
Gets `VkDeviceMemory` handle and offset from the allocation.
If you want to create a buffer, allocate memory for it and bind them together separately,
you should use this function for binding instead of standard `vkBindBufferMemory()`,
because it ensures proper synchronization so that when a `VkDeviceMemory` object is used by multiple
allocations, calls to `vkBind*Memory()` or `vkMapMemory()` won't happen from multiple threads simultaneously
(which is illegal in Vulkan).

It is recommended to use function vmaCreateBuffer() instead of this one.
*/
	[CLink] public static extern VkResult vmaBindBufferMemory(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkBuffer  buffer);

/** \brief Binds buffer to allocation with additional parameters.

\param allocator
\param allocation
\param allocationLocalOffset Additional offset to be added while binding, relative to the beginning of the `allocation`. Normally it should be 0.
\param buffer
\param pNext A chain of structures to be attached to `VkBindBufferMemoryInfoKHR` structure used internally. Normally it should be null.

This function is similar to vmaBindBufferMemory(), but it provides additional parameters.

If `pNext` is not null, #VmaAllocator object must have been created with #VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT flag
or with VmaAllocatorCreateInfo::vulkanApiVersion `>= VK_API_VERSION_1_1`. Otherwise the call fails.
*/
	[CLink] public static extern VkResult vmaBindBufferMemory2(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize allocationLocalOffset,
		VkBuffer  buffer,
		void* pNext);

/** \brief Binds image to allocation.

Binds specified image to region of memory represented by specified allocation.
Gets `VkDeviceMemory` handle and offset from the allocation.
If you want to create an image, allocate memory for it and bind them together separately,
you should use this function for binding instead of standard `vkBindImageMemory()`,
because it ensures proper synchronization so that when a `VkDeviceMemory` object is used by multiple
allocations, calls to `vkBind*Memory()` or `vkMapMemory()` won't happen from multiple threads simultaneously
(which is illegal in Vulkan).

It is recommended to use function vmaCreateImage() instead of this one.
*/
	[CLink] public static extern VkResult vmaBindImageMemory(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkImage  image);

/** \brief Binds image to allocation with additional parameters.

\param allocator
\param allocation
\param allocationLocalOffset Additional offset to be added while binding, relative to the beginning of the `allocation`. Normally it should be 0.
\param image
\param pNext A chain of structures to be attached to `VkBindImageMemoryInfoKHR` structure used internally. Normally it should be null.

This function is similar to vmaBindImageMemory(), but it provides additional parameters.

If `pNext` is not null, #VmaAllocator object must have been created with #VMA_ALLOCATOR_CREATE_KHR_BIND_MEMORY2_BIT flag
or with VmaAllocatorCreateInfo::vulkanApiVersion `>= VK_API_VERSION_1_1`. Otherwise the call fails.
*/
	[CLink] public static extern VkResult vmaBindImageMemory2(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize allocationLocalOffset,
		VkImage  image,
		void* pNext);

/** \brief Creates a new `VkBuffer`, allocates and binds memory for it.

\param allocator
\param pBufferCreateInfo
\param pAllocationCreateInfo
\param[out] pBuffer Buffer that was created.
\param[out] pAllocation Allocation that was created.
\param[out] pAllocationInfo Optional. Information about allocated memory. It can be later fetched using function vmaGetAllocationInfo().

This function automatically:

-# Creates buffer.
-# Allocates appropriate memory for it.
-# Binds the buffer with the memory.

If any of these operations fail, buffer and allocation are not created,
returned value is negative error code, `*pBuffer` and `*pAllocation` are null.

If the function succeeded, you must destroy both buffer and allocation when you
no longer need them using either convenience function vmaDestroyBuffer() or
separately, using `vkDestroyBuffer()` and vmaFreeMemory().

If #VMA_ALLOCATOR_CREATE_KHR_DEDICATED_ALLOCATION_BIT flag was used,
VK_KHR_dedicated_allocation extension is used internally to query driver whether
it requires or prefers the new buffer to have dedicated allocation. If yes,
and if dedicated allocation is possible
(#VMA_ALLOCATION_CREATE_NEVER_ALLOCATE_BIT is not used), it creates dedicated
allocation for this buffer, just like when using
	#VMA_ALLOCATION_CREATE_DEDICATED_MEMORY_BIT.

\note This function creates a new `VkBuffer`. Sub-allocation of parts of one large buffer,
although recommended as a good practice, is out of scope of this library and could be implemented
by the user as a higher-level logic on top of VMA.
*/
	[CLink] public static extern VkResult vmaCreateBuffer(
		VmaAllocator allocator,
		VkBufferCreateInfo* pBufferCreateInfo,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		VkBuffer* pBuffer,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief Creates a buffer with additional minimum alignment.

Similar to vmaCreateBuffer() but provides additional parameter `minAlignment` which allows to specify custom,
minimum alignment to be used when placing the buffer inside a larger memory block, which may be needed e.g.
for interop with OpenGL.
*/
	[CLink] public static extern VkResult vmaCreateBufferWithAlignment(
		VmaAllocator allocator,
		VkBufferCreateInfo* pBufferCreateInfo,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		VkDeviceSize minAlignment,
		VkBuffer* pBuffer,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/** \brief Creates a new `VkBuffer`, binds already created memory for it.

\param allocator
\param allocation Allocation that provides memory to be used for binding new buffer to it.
\param pBufferCreateInfo
\param[out] pBuffer Buffer that was created.

This function automatically:

-# Creates buffer.
-# Binds the buffer with the supplied memory.

If any of these operations fail, buffer is not created,
returned value is negative error code and `*pBuffer` is null.

If the function succeeded, you must destroy the buffer when you
no longer need it using `vkDestroyBuffer()`. If you want to also destroy the corresponding
allocation you can use convenience function vmaDestroyBuffer().

\note There is a new version of this function augmented with parameter `allocationLocalOffset` - see vmaCreateAliasingBuffer2().
*/
	[CLink] public static extern VkResult vmaCreateAliasingBuffer(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkBufferCreateInfo* pBufferCreateInfo,
		VkBuffer* pBuffer);

/** \brief Creates a new `VkBuffer`, binds already created memory for it.

\param allocator
\param allocation Allocation that provides memory to be used for binding new buffer to it.
\param allocationLocalOffset Additional offset to be added while binding, relative to the beginning of the allocation. Normally it should be 0.
\param pBufferCreateInfo 
\param[out] pBuffer Buffer that was created.

This function automatically:

-# Creates buffer.
-# Binds the buffer with the supplied memory.

If any of these operations fail, buffer is not created,
returned value is negative error code and `*pBuffer` is null.

If the function succeeded, you must destroy the buffer when you
no longer need it using `vkDestroyBuffer()`. If you want to also destroy the corresponding
allocation you can use convenience function vmaDestroyBuffer().

\note This is a new version of the function augmented with parameter `allocationLocalOffset`.
*/
	[CLink] public static extern VkResult vmaCreateAliasingBuffer2(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize allocationLocalOffset,
		VkBufferCreateInfo* pBufferCreateInfo,
		VkBuffer* pBuffer);

/** \brief Destroys Vulkan buffer and frees allocated memory.

This is just a convenience function equivalent to:

\code
vkDestroyBuffer(device, buffer, allocationCallbacks);
vmaFreeMemory(allocator, allocation);
\endcode

It is safe to pass null as buffer and/or allocation.
*/
	[CLink] public static extern void vmaDestroyBuffer(
		VmaAllocator allocator,
		VkBuffer  buffer,
		VmaAllocation allocation);

/// Function similar to vmaCreateBuffer().
	[CLink] public static extern VkResult vmaCreateImage(
		VmaAllocator allocator,
		VkImageCreateInfo* pImageCreateInfo,
		VmaAllocationCreateInfo* pAllocationCreateInfo,
		VkImage* pImage,
		VmaAllocation* pAllocation,
		VmaAllocationInfo* pAllocationInfo);

/// Function similar to vmaCreateAliasingBuffer() but for images.
	[CLink] public static extern VkResult vmaCreateAliasingImage(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkImageCreateInfo* pImageCreateInfo,
		VkImage* pImage);

/// Function similar to vmaCreateAliasingBuffer2() but for images.
	[CLink] public static extern VkResult vmaCreateAliasingImage2(
		VmaAllocator allocator,
		VmaAllocation allocation,
		VkDeviceSize allocationLocalOffset,
		VkImageCreateInfo* pImageCreateInfo,
		VkImage* pImage);

/** \brief Destroys Vulkan image and frees allocated memory.

This is just a convenience function equivalent to:

\code
vkDestroyImage(device, image, allocationCallbacks);
vmaFreeMemory(allocator, allocation);
\endcode

It is safe to pass null as image and/or allocation.
*/
	[CLink] public static extern void vmaDestroyImage(
		VmaAllocator allocator,
		VkImage  image,
		VmaAllocation allocation);

/** @} */

/**
\addtogroup group_virtual
@{
*/

/** \brief Creates new #VmaVirtualBlock object.

\param pCreateInfo Parameters for creation.
\param[out] pVirtualBlock Returned virtual block object or `VMA_NULL` if creation failed.
*/
	[CLink] public static extern VkResult vmaCreateVirtualBlock(
		VmaVirtualBlockCreateInfo* pCreateInfo,
		VmaVirtualBlock* pVirtualBlock);

/** \brief Destroys #VmaVirtualBlock object.

Please note that you should consciously handle virtual allocations that could remain unfreed in the block.
You should either free them individually using vmaVirtualFree() or call vmaClearVirtualBlock()
if you are sure this is what you want. If you do neither, an assert is called.

If you keep pointers to some additional metadata associated with your virtual allocations in their `pUserData`,
don't forget to free them.
*/
	[CLink] public static extern void vmaDestroyVirtualBlock(
		VmaVirtualBlock virtualBlock);

/** \brief Returns true of the #VmaVirtualBlock is empty - contains 0 virtual allocations and has all its space available for new allocations.
*/
	[CLink] public static extern VkBool32 vmaIsVirtualBlockEmpty(
		VmaVirtualBlock virtualBlock);

/** \brief Returns information about a specific virtual allocation within a virtual block, like its size and `pUserData` pointer.
*/
	[CLink] public static extern void vmaGetVirtualAllocationInfo(
		VmaVirtualBlock virtualBlock,
		VmaVirtualAllocation  allocation, VmaVirtualAllocationInfo* pVirtualAllocInfo);

/** \brief Allocates new virtual allocation inside given #VmaVirtualBlock.

If the allocation fails due to not enough free space available, `VK_ERROR_OUT_OF_DEVICE_MEMORY` is returned
(despite the function doesn't ever allocate actual GPU memory).
`pAllocation` is then set to `VK_NULL_HANDLE` and `pOffset`, if not null, it set to `UINT64_MAX`.

\param virtualBlock Virtual block
\param pCreateInfo Parameters for the allocation
\param[out] pAllocation Returned handle of the new allocation
\param[out] pOffset Returned offset of the new allocation. Optional, can be null.
*/
	[CLink] public static extern VkResult vmaVirtualAllocate(
		VmaVirtualBlock virtualBlock,
		VmaVirtualAllocationCreateInfo* pCreateInfo,
		VmaVirtualAllocation* pAllocation,
		VkDeviceSize* pOffset);

/** \brief Frees virtual allocation inside given #VmaVirtualBlock.

It is correct to call this function with `allocation == VK_NULL_HANDLE` - it does nothing.
*/
	[CLink] public static extern void vmaVirtualFree(
		VmaVirtualBlock virtualBlock,
		VmaVirtualAllocation  allocation);

/** \brief Frees all virtual allocations inside given #VmaVirtualBlock.

You must either call this function or free each virtual allocation individually with vmaVirtualFree()
before destroying a virtual block. Otherwise, an assert is called.

If you keep pointer to some additional metadata associated with your virtual allocation in its `pUserData`,
don't forget to free it as well.
*/
	[CLink] public static extern void vmaClearVirtualBlock(
		VmaVirtualBlock virtualBlock);

/** \brief Changes custom pointer associated with given virtual allocation.
*/
	[CLink] public static extern void vmaSetVirtualAllocationUserData(
		VmaVirtualBlock virtualBlock,
		VmaVirtualAllocation  allocation,
		void* pUserData);

/** \brief Calculates and returns statistics about virtual allocations and memory usage in given #VmaVirtualBlock.

This function is fast to call. For more detailed statistics, see vmaCalculateVirtualBlockStatistics().
*/
	[CLink] public static extern void vmaGetVirtualBlockStatistics(
		VmaVirtualBlock virtualBlock,
		VmaStatistics* pStats);

/** \brief Calculates and returns detailed statistics about virtual allocations and memory usage in given #VmaVirtualBlock.

This function is slow to call. Use for debugging purposes.
For less detailed statistics, see vmaGetVirtualBlockStatistics().
*/
	[CLink] public static extern void vmaCalculateVirtualBlockStatistics(
		VmaVirtualBlock virtualBlock,
		VmaDetailedStatistics* pStats);
}
/** @} */

static
{
	public const uint8 VMA_ALLOCATION_FILL_PATTERN_CREATED = 0xDC;
	public const uint8 VMA_ALLOCATION_FILL_PATTERN_DESTROYED = 0xEF;
	// Decimal 2139416166, float NaN, little-endian binary 66 E6 84 7F.
	public const uint32 VMA_CORRUPTION_DETECTION_MAGIC_VALUE = 0x7F84E666;

	// Copy of some Vulkan definitions so we don't need to check their existence just to handle few constants.
	public const uint32 VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD_COPY = 0x00000040;
	public const uint32 VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD_COPY = 0x00000080;
	public const uint32 VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_COPY = 0x00020000;
	public const uint32 VK_IMAGE_CREATE_DISJOINT_BIT_COPY = 0x00000200;
	public const int32 VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT_COPY = 1000158000;
	public const uint32 VMA_ALLOCATION_INTERNAL_STRATEGY_MIN_OFFSET = 0x10000000u;
	public const uint32 VMA_ALLOCATION_TRY_COUNT = 32;
	public const uint32 VMA_VENDOR_ID_AMD = 4098;
}

[CRepr]
enum VmaSuballocationType : int32
{
	VMA_SUBALLOCATION_TYPE_FREE = 0,
	VMA_SUBALLOCATION_TYPE_UNKNOWN = 1,
	VMA_SUBALLOCATION_TYPE_BUFFER = 2,
	VMA_SUBALLOCATION_TYPE_IMAGE_UNKNOWN = 3,
	VMA_SUBALLOCATION_TYPE_IMAGE_LINEAR = 4,
	VMA_SUBALLOCATION_TYPE_IMAGE_OPTIMAL = 5,
	VMA_SUBALLOCATION_TYPE_MAX_ENUM = 0x7FFFFFFF
}

[CRepr]
enum VMA_CACHE_OPERATION : int32
{
	VMA_CACHE_FLUSH,
	VMA_CACHE_INVALIDATE
}

[CRepr]
enum VmaAllocationRequestType : int32
{
	Normal,
	TLSF,
	// Used by "Linear" algorithm.
	UpperAddress,
	EndOf1st,
	EndOf2nd,
}