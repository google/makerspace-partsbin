# This file is intended to be run by nosetests.
#
import resize_fp

def test_fixer():
  resize_fp.MULT = 2.0
  assert resize_fp.fixer(resize_fp.RE.match("at 1.0 2.0")) == "at 2.0 4.0"
  assert resize_fp.fixer(resize_fp.RE.match("xy 1.0 2.0")) == "xy 2.0 4.0"
  assert resize_fp.RE.sub(resize_fp.fixer, "xy 1.0 2.0") == "xy 2.0 4.0"
  a = "pts (xy 0.284256 -3.001128) (xy 0.547425 -2.965017)"
  b = "pts (xy 0.568512 -6.002256) (xy 1.09485 -5.930034)"
  assert resize_fp.RE.sub(resize_fp.fixer, a) == b


