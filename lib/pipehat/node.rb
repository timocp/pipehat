module Pipehat
  # Parent class of all accessor types (Field, Repeat, (Sub)Component
  # providing common methods
  class Node
    def fnum
      1
    end

    def rnum
      1
    end

    def cnum
      1
    end

    def snum
      1
    end

    def to_s
      segment.parser.unescape(unescaped)
    end

    def unescaped
      segment.get(fnum, rnum, cnum, snum)
    end
  end
end
