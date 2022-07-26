# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from line_lbd/anchor_objects.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import line_lbd.msg

class anchor_objects(genpy.Message):
  _md5sum = "22c7b348a4a51cbd4089c0505dd161bb"
  _type = "line_lbd/anchor_objects"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string id
int8 size
anchor_pose[] AnchorPoses
================================================================================
MSG: line_lbd/anchor_pose
float32 top
float32 bottom
float32 left
float32 right"""
  __slots__ = ['id','size','AnchorPoses']
  _slot_types = ['string','int8','line_lbd/anchor_pose[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,size,AnchorPoses

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(anchor_objects, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.size is None:
        self.size = 0
      if self.AnchorPoses is None:
        self.AnchorPoses = []
    else:
      self.id = ''
      self.size = 0
      self.AnchorPoses = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.size
      buff.write(_get_struct_b().pack(_x))
      length = len(self.AnchorPoses)
      buff.write(_struct_I.pack(length))
      for val1 in self.AnchorPoses:
        _x = val1
        buff.write(_get_struct_4f().pack(_x.top, _x.bottom, _x.left, _x.right))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.AnchorPoses is None:
        self.AnchorPoses = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      start = end
      end += 1
      (self.size,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.AnchorPoses = []
      for i in range(0, length):
        val1 = line_lbd.msg.anchor_pose()
        _x = val1
        start = end
        end += 16
        (_x.top, _x.bottom, _x.left, _x.right,) = _get_struct_4f().unpack(str[start:end])
        self.AnchorPoses.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.size
      buff.write(_get_struct_b().pack(_x))
      length = len(self.AnchorPoses)
      buff.write(_struct_I.pack(length))
      for val1 in self.AnchorPoses:
        _x = val1
        buff.write(_get_struct_4f().pack(_x.top, _x.bottom, _x.left, _x.right))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.AnchorPoses is None:
        self.AnchorPoses = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      start = end
      end += 1
      (self.size,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.AnchorPoses = []
      for i in range(0, length):
        val1 = line_lbd.msg.anchor_pose()
        _x = val1
        start = end
        end += 16
        (_x.top, _x.bottom, _x.left, _x.right,) = _get_struct_4f().unpack(str[start:end])
        self.AnchorPoses.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
