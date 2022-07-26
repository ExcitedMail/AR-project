// Generated by gencpp from file line_lbd/Keyline_vec.msg
// DO NOT EDIT!


#ifndef LINE_LBD_MESSAGE_KEYLINE_VEC_H
#define LINE_LBD_MESSAGE_KEYLINE_VEC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <line_lbd/Keyline.h>

namespace line_lbd
{
template <class ContainerAllocator>
struct Keyline_vec_
{
  typedef Keyline_vec_<ContainerAllocator> Type;

  Keyline_vec_()
    : id()
    , length(0)
    , Keylines()  {
    }
  Keyline_vec_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , length(0)
    , Keylines(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef uint32_t _length_type;
  _length_type length;

   typedef std::vector< ::line_lbd::Keyline_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::line_lbd::Keyline_<ContainerAllocator> >::other >  _Keylines_type;
  _Keylines_type Keylines;





  typedef boost::shared_ptr< ::line_lbd::Keyline_vec_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::line_lbd::Keyline_vec_<ContainerAllocator> const> ConstPtr;

}; // struct Keyline_vec_

typedef ::line_lbd::Keyline_vec_<std::allocator<void> > Keyline_vec;

typedef boost::shared_ptr< ::line_lbd::Keyline_vec > Keyline_vecPtr;
typedef boost::shared_ptr< ::line_lbd::Keyline_vec const> Keyline_vecConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::line_lbd::Keyline_vec_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::line_lbd::Keyline_vec_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::line_lbd::Keyline_vec_<ContainerAllocator1> & lhs, const ::line_lbd::Keyline_vec_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.length == rhs.length &&
    lhs.Keylines == rhs.Keylines;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::line_lbd::Keyline_vec_<ContainerAllocator1> & lhs, const ::line_lbd::Keyline_vec_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace line_lbd

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::Keyline_vec_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::Keyline_vec_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::Keyline_vec_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::Keyline_vec_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::Keyline_vec_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::Keyline_vec_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::line_lbd::Keyline_vec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66d8e92245e6e28ba0b9fa23e5b92a2d";
  }

  static const char* value(const ::line_lbd::Keyline_vec_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66d8e92245e6e28bULL;
  static const uint64_t static_value2 = 0xa0b9fa23e5b92a2dULL;
};

template<class ContainerAllocator>
struct DataType< ::line_lbd::Keyline_vec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "line_lbd/Keyline_vec";
  }

  static const char* value(const ::line_lbd::Keyline_vec_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::line_lbd::Keyline_vec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"uint32 length\n"
"Keyline[] Keylines\n"
"================================================================================\n"
"MSG: line_lbd/Keyline\n"
"float32 startPointX\n"
"float32 startPointY\n"
"float32 endPointX\n"
"float32 endPointY\n"
;
  }

  static const char* value(const ::line_lbd::Keyline_vec_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::line_lbd::Keyline_vec_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.length);
      stream.next(m.Keylines);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Keyline_vec_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::line_lbd::Keyline_vec_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::line_lbd::Keyline_vec_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "length: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.length);
    s << indent << "Keylines[]" << std::endl;
    for (size_t i = 0; i < v.Keylines.size(); ++i)
    {
      s << indent << "  Keylines[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::line_lbd::Keyline_<ContainerAllocator> >::stream(s, indent + "    ", v.Keylines[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LINE_LBD_MESSAGE_KEYLINE_VEC_H
