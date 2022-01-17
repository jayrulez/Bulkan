using System;
namespace Bulkan
{
	[CRepr] struct VkDeviceSize : uint64 { }
	[CRepr] struct VkDeviceAddress : uint64 { }
	[CRepr] struct VkSampleMask : uint32 { }
	[CRepr] struct VkFlags : uint32 { }
	[CRepr] struct VkBufferViewCreateFlags : VkFlags { }
}
