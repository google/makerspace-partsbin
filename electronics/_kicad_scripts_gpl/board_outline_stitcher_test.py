import unittest
import board_outline_stitcher

P = board_outline_stitcher.Path

class PathStitcherTest(unittest.TestCase):
  def test_start_point(self):
    p = P('M 1 2 L 3 4')
    self.assertEqual(p.start_point, [1.0, 2.0])
    self.assertEqual(p.end_point, [3.0, 4.0])

  def test_stitch_case_2(self):
    p1 = P('M 1 2 L 3 4')
    p2 = P('M 3 4 L 5 6')
    self.assertEqual(p1.check(p2, 0.1), 2)

    p1.adopt(p2, 0.1)
    self.assertEqual(p1.start_point, [1.0, 2.0])
    self.assertEqual(p1.end_point, [5.0, 6.0])
    self.assertEqual(p1.cmds, ["M 1 2", "L 3 4", "L 5 6"])

  def test_stitch_case_3(self):
    p1 = P('M 1 2 L 3 4')
    p2 = P('M 3 4 L 5 6')
    self.assertEqual(p2.check(p1, 0.1), 3)

    p2.adopt(p1, 0.1)
    self.assertEqual(p2.start_point, [1.0, 2.0])
    self.assertEqual(p2.end_point, [5.0, 6.0])
    self.assertEqual(p2.cmds, ["M 1 2", "L 3 4", "L 5 6"])

  def test_reverse(self):
    p = P('M 1 2 L 3 4 M 0 0 L 5 6')
    p.reverse()

    self.assertEqual([5.0, 6.0], p.start_point)
    self.assertEqual([1.0, 2.0], p.end_point)

    self.assertEqual(["M 5 6", "L 0 0", "M 3 4", "L 1 2"], p.cmds)

  def test_reverse_arc(self):
    p = P('M 0 0 A 1 2 3 4 1 6 7 L -1 -1')
    p.reverse()
    self.assertEqual(["M -1 -1", "L 6 7", "A 1 2 3 4 0 0 0"], p.cmds)

  def test_adopt_specific(self):
    # found by manual testing, this caused problems
    p1 = P('M 16266 2875 L 17323 3486')
    p2 = P('M 16929.6 4168.06 A 393.701 393.701 0.0 0 0 17323.3 3486.15')
    p1.adopt(p2, 50)
    self.assertEqual(["M 16266 2875", "L 17323 3486", "A 393.701 393.701 0.0 0 1 16929.6 4168.06"], p1.cmds)

  def test_extract_style_attr(self):
    self.assertEqual("foo", board_outline_stitcher.extract_style_attr("a:foo;b:bar", "a"))
    self.assertEqual("bar", board_outline_stitcher.extract_style_attr("a:foo;b:bar", "b"))
    self.assertEqual(None, board_outline_stitcher.extract_style_attr("a:foo;b:bar", "c"))

    self.assertEqual("foo", board_outline_stitcher.extract_style_attr(" a : foo ;; b : bar", "a"))
    self.assertEqual("bar", board_outline_stitcher.extract_style_attr(" a : foo ;; b : bar", "b"))
    self.assertEqual(None, board_outline_stitcher.extract_style_attr(" a : foo ;; b : bar", "c"))

    self.assertEqual("foo bar", board_outline_stitcher.extract_style_attr("a:foo bar;b:bar", "a"))

if __name__ == '__main__':
  unittest.main()
