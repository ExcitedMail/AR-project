// Generated by gencpp from file line_lbd/combined_boxes.msg
// DO NOT EDIT!


#ifndef LINE_LBD_MESSAGE_COMBINED_BOXES_H
#define LINE_LBD_MESSAGE_COMBINED_BOXES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace line_lbd
{
template <class ContainerAllocator>
struct combined_boxes_
{
  typedef combined_boxes_<ContainerAllocator> Type;

  combined_boxes_()
    : type_()
    , BoundingBox2D()
    , BoundingBox3D()
    , class_name()  {
    }
  combined_boxes_(const ContainerAllocator& _alloc)
    : type_(_alloc)
    , BoundingBox2D(_alloc)
    , BoundingBox3D(_alloc)
    , class_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _type__type;
  _type__type type_;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _BoundingBox2D_type;
  _BoundingBox2D_type BoundingBox2D;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _BoundingBox3D_type;
  _BoundingBox3D_type BoundingBox3D;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _class_name_type;
  _class_name_type class_name;





  typedef boost::shared_ptr< ::line_lbd::combined_boxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::line_lbd::combined_boxes_<ContainerAllocator> const> ConstPtr;

}; // struct combined_boxes_

typedef ::line_lbd::combined_boxes_<std::allocator<void> > combined_boxes;

typedef boost::shared_ptr< ::line_lbd::combined_boxes > combined_boxesPtr;
typedef boost::shared_ptr< ::line_lbd::combined_boxes const> combined_boxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::line_lbd::combined_boxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::line_lbd::combined_boxes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::line_lbd::combined_boxes_<ContainerAllocator1> & lhs, const ::line_lbd::combined_boxes_<ContainerAllocator2> & rhs)
{
  return lhs.type_ == rhs.type_ &&
    lhs.BoundingBox2D == rhs.BoundingBox2D &&
    lhs.BoundingBox3D == rhs.BoundingBox3D &&
    lhs.class_name == rhs.class_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::line_lbd::combined_boxes_<ContainerAllocator1> & lhs, const ::line_lbd::combined_boxes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace line_lbd

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::combined_boxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::combined_boxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::combined_boxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::combined_boxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::combined_boxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::combined_boxes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::line_lbd::combined_boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "341d13f258e59a300e2f47d716f31914";
  }

  static const char* value(const ::line_lbd::combined_boxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x341d13f258e59a30ULL;
  static const uint64_t static_value2 = 0x0e2f47d716f31914ULL;
};

template<class ContainerAllocator>
struct DataType< ::line_lbd::combined_boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "line_lbd/combined_boxes";
  }

  static const char* value(const ::line_lbd::combined_boxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::line_lbd::combined_boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8[] type_\n"
"float32[] BoundingBox2D\n"
"float32[] BoundingBox3D\n"
"string class_name\n"
;
  }

  static const char* value(const ::line_lbd::combined_boxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::line_lbd::combined_boxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type_);
      stream.next(m.BoundingBox2D);
      stream.next(m.BoundingBox3D);
      stream.next(m.class_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct combined_boxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::line_lbd::combined_boxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::line_lbd::combined_boxes_<ContainerAllocator>& v)
  {
    s << indent << "type_[]" << std::endl;
    for (size_t i = 0; i < v.type_.size(); ++i)
    {
      s << indent << "  type_[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.type_[i]);
    }
    s << indent << "BoundingBox2D[]" << std::endl;
    for (size_t i = 0; i < v.BoundingBox2D.size(); ++i)
    {
      s << indent << "  BoundingBox2D[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.BoundingBox2D[i]);
    }
    s << indent << "BoundingBox3D[]" << std::endl;
    for (size_t i = 0; i < v.BoundingBox3D.size(); ++i)
    {
      s << indent << "  BoundingBox3D[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.BoundingBox3D[i]);
    }
    s << indent << "class_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.class_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LINE_LBD_MESSAGE_COMBINED_BOXES_H
