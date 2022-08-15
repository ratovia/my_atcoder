n, m = gets.split.map(&:to_i)


if n == 1
  1.upto(m) do |i1|
    puts i1
  end
elsif n == 2
  1.upto(m-1) do |i1|
    (i1+1).upto(m) do |i2|
      puts "#{i1} #{i2}"
    end
  end
elsif n == 3
  1.upto(m-2) do |i1|
    (i1+1).upto(m-1) do |i2|
      (i2+1).upto(m) do |i3|
        puts "#{i1} #{i2} #{i3}"
      end
    end
  end
elsif n == 4
  1.upto(m-3) do |i1|
    (i1+1).upto(m-2) do |i2|
      (i2+1).upto(m-1) do |i3|
        (i3+1).upto(m-0) do |i4|
          puts "#{i1} #{i2} #{i3} #{i4}"
        end
      end
    end
  end
elsif n == 5
  1.upto(m-4) do |i1|
    (i1+1).upto(m-3) do |i2|
      (i2+1).upto(m-2) do |i3|
        (i3+1).upto(m-1) do |i4|
          (i4+1).upto(m-0) do |i5|
            puts "#{i1} #{i2} #{i3} #{i4} #{i5}"
          end
        end
      end
    end
  end
elsif n == 6
  1.upto(m-5) do |i1|
    (i1+1).upto(m-4) do |i2|
      (i2+1).upto(m-3) do |i3|
        (i3+1).upto(m-2) do |i4|
          (i4+1).upto(m-1) do |i5|
            (i5+1).upto(m-0) do |i6|
              puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6}"
            end
          end
        end
      end
    end
  end
elsif n == 7
  1.upto(m-6) do |i1|
    (i1+1).upto(m-5) do |i2|
      (i2+1).upto(m-4) do |i3|
        (i3+1).upto(m-3) do |i4|
          (i4+1).upto(m-2) do |i5|
            (i5+1).upto(m-1) do |i6|
              (i6+1).upto(m-0) do |i7|
                puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6} #{i7}"
              end
            end
          end
        end
      end
    end
  end
elsif n == 8
  1.upto(m-7) do |i1|
    (i1+1).upto(m-6) do |i2|
      (i2+1).upto(m-5) do |i3|
        (i3+1).upto(m-4) do |i4|
          (i4+1).upto(m-3) do |i5|
            (i5+1).upto(m-2) do |i6|
              (i6+1).upto(m-1) do |i7|
                (i7+1).upto(m-0) do |i8|
                  puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6} #{i7} #{i8}"
                end
              end
            end
          end
        end
      end
    end
  end
elsif n == 9
  1.upto(m-8) do |i1|
    (i1+1).upto(m-7) do |i2|
      (i2+1).upto(m-6) do |i3|
        (i3+1).upto(m-5) do |i4|
          (i4+1).upto(m-4) do |i5|
            (i5+1).upto(m-3) do |i6|
              (i6+1).upto(m-2) do |i7|
                (i7+1).upto(m-1) do |i8|
                  (i8+1).upto(m-0) do |i9|
                    puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6} #{i7} #{i8} #{i9}"
                  end
                end
              end
            end
          end
        end
      end
    end
  end
elsif n == 10
  1.upto(m-9) do |i1|
    (i1+1).upto(m-8) do |i2|
      (i2+1).upto(m-7) do |i3|
        (i3+1).upto(m-6) do |i4|
          (i4+1).upto(m-5) do |i5|
            (i5+1).upto(m-4) do |i6|
              (i6+1).upto(m-3) do |i7|
                (i7+1).upto(m-2) do |i8|
                  (i8+1).upto(m-1) do |i9|
                    (i9+1).upto(m-0) do |i10|
                      puts "#{i1} #{i2} #{i3} #{i4} #{i5} #{i6} #{i7} #{i8} #{i9} #{i10}"
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
