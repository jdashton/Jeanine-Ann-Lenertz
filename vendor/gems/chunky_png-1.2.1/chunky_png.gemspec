Gem::Specification.new do |s|
  s.name    = 'chunky_png'

  # Do not change the version and date fields by hand. This will be done
  # automatically by the gem release script.
  s.version = "1.2.1"
  s.date    = "2011-08-10"

  s.summary     = "Pure ruby library for read/write, chunk-level access to PNG files"
  s.description = <<-EOT
    This pure Ruby library can read and write PNG images without depending on an external 
    image library, like RMagick. It tries to be memory efficient and reasonably fast.
    
    It supports reading and writing all PNG variants that are defined in the specification, 
    with one limitation: only 8-bit color depth is supported. It supports all transparency, 
    interlacing and filtering options the PNG specifications allows. It can also read and 
    write textual metadata from PNG files. Low-level read/write access to PNG chunks is
    also possible.
    
    This library supports simple drawing on the image canvas and simple operations like
    alpha composition and cropping. Finally, it can import from and export to RMagick for 
    interoperability.
    
    Also, have a look at OilyPNG at http://github.com/wvanbergen/oily_png. OilyPNG is a 
    drop in mixin module that implements some of the ChunkyPNG algorithms in C, which 
    provides a massive speed boost to encoding and decoding.
  EOT

  s.authors  = ['Willem van Bergen']
  s.email    = ['willem@railsdoctors.com']
  s.homepage = 'http://wiki.github.com/wvanbergen/chunky_png'

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 2.2')

  s.rdoc_options << '--title' << s.name << '--main' << 'README.rdoc' << '--line-numbers' << '--inline-source'
  s.extra_rdoc_files = ['README.rdoc', 'BENCHMARKS.rdoc']

  # Do not change the files and test_files fields by hand. This will be done
  # automatically by the gem release script.
  s.files      = %w(.gitignore .infinity_test .travis.yml .yardopts BENCHMARKS.rdoc Gemfile LICENSE README.rdoc Rakefile benchmarks/decoding_benchmark.rb benchmarks/encoding_benchmark.rb benchmarks/filesize_benchmark.rb chunky_png.gemspec lib/chunky_png.rb lib/chunky_png/canvas.rb lib/chunky_png/canvas/adam7_interlacing.rb lib/chunky_png/canvas/drawing.rb lib/chunky_png/canvas/masking.rb lib/chunky_png/canvas/operations.rb lib/chunky_png/canvas/png_decoding.rb lib/chunky_png/canvas/png_encoding.rb lib/chunky_png/canvas/resampling.rb lib/chunky_png/canvas/stream_exporting.rb lib/chunky_png/canvas/stream_importing.rb lib/chunky_png/chunk.rb lib/chunky_png/color.rb lib/chunky_png/compatibility.rb lib/chunky_png/datastream.rb lib/chunky_png/dimension.rb lib/chunky_png/image.rb lib/chunky_png/palette.rb lib/chunky_png/point.rb lib/chunky_png/rmagick.rb lib/chunky_png/vector.rb spec/chunky_png/canvas/adam7_interlacing_spec.rb spec/chunky_png/canvas/drawing_spec.rb spec/chunky_png/canvas/masking_spec.rb spec/chunky_png/canvas/operations_spec.rb spec/chunky_png/canvas/png_decoding_spec.rb spec/chunky_png/canvas/png_encoding_spec.rb spec/chunky_png/canvas/resampling_spec.rb spec/chunky_png/canvas/stream_exporting_spec.rb spec/chunky_png/canvas/stream_importing_spec.rb spec/chunky_png/canvas_spec.rb spec/chunky_png/color_spec.rb spec/chunky_png/datastream_spec.rb spec/chunky_png/dimension_spec.rb spec/chunky_png/image_spec.rb spec/chunky_png/point_spec.rb spec/chunky_png/rmagick_spec.rb spec/chunky_png/vector_spec.rb spec/chunky_png_spec.rb spec/png_suite/background_chunks/bgai4a08.png spec/png_suite/background_chunks/bgai4a16.png spec/png_suite/background_chunks/bgan6a08.png spec/png_suite/background_chunks/bgan6a16.png spec/png_suite/background_chunks/bgbn4a08.png spec/png_suite/background_chunks/bggn4a16.png spec/png_suite/background_chunks/bgwn6a08.png spec/png_suite/background_chunks/bgyn6a16.png spec/png_suite/basic/basi0g01.png spec/png_suite/basic/basi0g01.rgba spec/png_suite/basic/basi0g02.png spec/png_suite/basic/basi0g02.rgba spec/png_suite/basic/basi0g04.png spec/png_suite/basic/basi0g04.rgba spec/png_suite/basic/basi0g08.png spec/png_suite/basic/basi0g08.rgba spec/png_suite/basic/basi0g16.png spec/png_suite/basic/basi0g16.rgba spec/png_suite/basic/basi2c08.png spec/png_suite/basic/basi2c08.rgba spec/png_suite/basic/basi2c16.png spec/png_suite/basic/basi2c16.rgba spec/png_suite/basic/basi3p01.png spec/png_suite/basic/basi3p01.rgba spec/png_suite/basic/basi3p02.png spec/png_suite/basic/basi3p02.rgba spec/png_suite/basic/basi3p04.png spec/png_suite/basic/basi3p04.rgba spec/png_suite/basic/basi3p08.png spec/png_suite/basic/basi3p08.rgba spec/png_suite/basic/basi4a08.png spec/png_suite/basic/basi4a08.rgba spec/png_suite/basic/basi4a16.png spec/png_suite/basic/basi4a16.rgba spec/png_suite/basic/basi6a08.png spec/png_suite/basic/basi6a08.rgba spec/png_suite/basic/basi6a16.png spec/png_suite/basic/basi6a16.rgba spec/png_suite/basic/basn0g01.png spec/png_suite/basic/basn0g01.rgba spec/png_suite/basic/basn0g02.png spec/png_suite/basic/basn0g02.rgba spec/png_suite/basic/basn0g04.png spec/png_suite/basic/basn0g04.rgba spec/png_suite/basic/basn0g08.png spec/png_suite/basic/basn0g08.rgba spec/png_suite/basic/basn0g16.png spec/png_suite/basic/basn0g16.rgba spec/png_suite/basic/basn2c08.png spec/png_suite/basic/basn2c08.rgba spec/png_suite/basic/basn2c16.png spec/png_suite/basic/basn2c16.rgba spec/png_suite/basic/basn3p01.png spec/png_suite/basic/basn3p01.rgba spec/png_suite/basic/basn3p02.png spec/png_suite/basic/basn3p02.rgba spec/png_suite/basic/basn3p04.png spec/png_suite/basic/basn3p04.rgba spec/png_suite/basic/basn3p08.png spec/png_suite/basic/basn3p08.rgba spec/png_suite/basic/basn4a08.png spec/png_suite/basic/basn4a08.rgba spec/png_suite/basic/basn4a16.png spec/png_suite/basic/basn4a16.rgba spec/png_suite/basic/basn6a08.png spec/png_suite/basic/basn6a08.rgba spec/png_suite/basic/basn6a16.png spec/png_suite/basic/basn6a16.rgba spec/png_suite/broken/x00n0g01.png spec/png_suite/broken/xcrn0g04.png spec/png_suite/broken/xlfn0g04.png spec/png_suite/chunk_ordering/oi1n0g16.png spec/png_suite/chunk_ordering/oi1n2c16.png spec/png_suite/chunk_ordering/oi2n0g16.png spec/png_suite/chunk_ordering/oi2n2c16.png spec/png_suite/chunk_ordering/oi4n0g16.png spec/png_suite/chunk_ordering/oi4n2c16.png spec/png_suite/chunk_ordering/oi9n0g16.png spec/png_suite/chunk_ordering/oi9n2c16.png spec/png_suite/compression_levels/z00n2c08.png spec/png_suite/compression_levels/z03n2c08.png spec/png_suite/compression_levels/z06n2c08.png spec/png_suite/compression_levels/z09n2c08.png spec/png_suite/filtering/f00n0g08.png spec/png_suite/filtering/f00n0g08.rgba spec/png_suite/filtering/f00n0g08_reference.png spec/png_suite/filtering/f00n0g08_reference.rgba spec/png_suite/filtering/f00n2c08.png spec/png_suite/filtering/f00n2c08.rgba spec/png_suite/filtering/f00n2c08_reference.png spec/png_suite/filtering/f00n2c08_reference.rgba spec/png_suite/filtering/f01n0g08.png spec/png_suite/filtering/f01n0g08.rgba spec/png_suite/filtering/f01n0g08_reference.png spec/png_suite/filtering/f01n0g08_reference.rgba spec/png_suite/filtering/f01n2c08.png spec/png_suite/filtering/f01n2c08.rgba spec/png_suite/filtering/f01n2c08_reference.png spec/png_suite/filtering/f01n2c08_reference.rgba spec/png_suite/filtering/f02n0g08.png spec/png_suite/filtering/f02n0g08.rgba spec/png_suite/filtering/f02n0g08_reference.png spec/png_suite/filtering/f02n0g08_reference.rgba spec/png_suite/filtering/f02n2c08.png spec/png_suite/filtering/f02n2c08.rgba spec/png_suite/filtering/f02n2c08_reference.png spec/png_suite/filtering/f02n2c08_reference.rgba spec/png_suite/filtering/f03n0g08.png spec/png_suite/filtering/f03n0g08.rgba spec/png_suite/filtering/f03n0g08_reference.png spec/png_suite/filtering/f03n0g08_reference.rgba spec/png_suite/filtering/f03n2c08.png spec/png_suite/filtering/f03n2c08.rgba spec/png_suite/filtering/f03n2c08_reference.png spec/png_suite/filtering/f03n2c08_reference.rgba spec/png_suite/filtering/f04n0g08.png spec/png_suite/filtering/f04n0g08.rgba spec/png_suite/filtering/f04n0g08_reference.png spec/png_suite/filtering/f04n0g08_reference.rgba spec/png_suite/filtering/f04n2c08.png spec/png_suite/filtering/f04n2c08.rgba spec/png_suite/filtering/f04n2c08_reference.png spec/png_suite/filtering/f04n2c08_reference.rgba spec/png_suite/gamma/g03n0g16.png spec/png_suite/gamma/g03n2c08.png spec/png_suite/gamma/g03n3p04.png spec/png_suite/gamma/g04n0g16.png spec/png_suite/gamma/g04n2c08.png spec/png_suite/gamma/g04n3p04.png spec/png_suite/gamma/g05n0g16.png spec/png_suite/gamma/g05n2c08.png spec/png_suite/gamma/g05n3p04.png spec/png_suite/gamma/g07n0g16.png spec/png_suite/gamma/g07n2c08.png spec/png_suite/gamma/g07n3p04.png spec/png_suite/gamma/g10n0g16.png spec/png_suite/gamma/g10n2c08.png spec/png_suite/gamma/g10n3p04.png spec/png_suite/gamma/g25n0g16.png spec/png_suite/gamma/g25n2c08.png spec/png_suite/gamma/g25n3p04.png spec/png_suite/metadata/cm0n0g04.png spec/png_suite/metadata/cm7n0g04.png spec/png_suite/metadata/cm9n0g04.png spec/png_suite/other/ccwn2c08.png spec/png_suite/other/ccwn3p08.png spec/png_suite/other/cdfn2c08.png spec/png_suite/other/cdhn2c08.png spec/png_suite/other/cdsn2c08.png spec/png_suite/other/cdun2c08.png spec/png_suite/other/ch1n3p04.png spec/png_suite/other/ch2n3p08.png spec/png_suite/other/cs3n2c16.png spec/png_suite/other/cs3n3p08.png spec/png_suite/other/cs5n2c08.png spec/png_suite/other/cs5n3p08.png spec/png_suite/other/cs8n2c08.png spec/png_suite/other/cs8n3p08.png spec/png_suite/other/ct0n0g04.png spec/png_suite/other/ct1n0g04.png spec/png_suite/other/ctzn0g04.png spec/png_suite/other/pp0n2c16.png spec/png_suite/other/pp0n6a08.png spec/png_suite/other/ps1n0g08.png spec/png_suite/other/ps1n2c16.png spec/png_suite/other/ps2n0g08.png spec/png_suite/other/ps2n2c16.png spec/png_suite/sizes/s01i3p01.png spec/png_suite/sizes/s01n3p01.png spec/png_suite/sizes/s02i3p01.png spec/png_suite/sizes/s02n3p01.png spec/png_suite/sizes/s03i3p01.png spec/png_suite/sizes/s03n3p01.png spec/png_suite/sizes/s04i3p01.png spec/png_suite/sizes/s04n3p01.png spec/png_suite/sizes/s05i3p02.png spec/png_suite/sizes/s05n3p02.png spec/png_suite/sizes/s06i3p02.png spec/png_suite/sizes/s06n3p02.png spec/png_suite/sizes/s07i3p02.png spec/png_suite/sizes/s07n3p02.png spec/png_suite/sizes/s08i3p02.png spec/png_suite/sizes/s08n3p02.png spec/png_suite/sizes/s09i3p02.png spec/png_suite/sizes/s09n3p02.png spec/png_suite/sizes/s32i3p04.png spec/png_suite/sizes/s32n3p04.png spec/png_suite/sizes/s33i3p04.png spec/png_suite/sizes/s33n3p04.png spec/png_suite/sizes/s34i3p04.png spec/png_suite/sizes/s34n3p04.png spec/png_suite/sizes/s35i3p04.png spec/png_suite/sizes/s35n3p04.png spec/png_suite/sizes/s36i3p04.png spec/png_suite/sizes/s36n3p04.png spec/png_suite/sizes/s37i3p04.png spec/png_suite/sizes/s37n3p04.png spec/png_suite/sizes/s38i3p04.png spec/png_suite/sizes/s38n3p04.png spec/png_suite/sizes/s39i3p04.png spec/png_suite/sizes/s39n3p04.png spec/png_suite/sizes/s40i3p04.png spec/png_suite/sizes/s40n3p04.png spec/png_suite/transparency/tbbn1g04.png spec/png_suite/transparency/tbbn2c16.png spec/png_suite/transparency/tbbn3p08.png spec/png_suite/transparency/tbgn2c16.png spec/png_suite/transparency/tbgn3p08.png spec/png_suite/transparency/tbrn2c08.png spec/png_suite/transparency/tbwn1g16.png spec/png_suite/transparency/tbwn3p08.png spec/png_suite/transparency/tbyn3p08.png spec/png_suite/transparency/tp0n1g08.png spec/png_suite/transparency/tp0n2c08.png spec/png_suite/transparency/tp0n3p08.png spec/png_suite/transparency/tp1n3p08.png spec/png_suite_spec.rb spec/resources/adam7.png spec/resources/bezier_five_point.png spec/resources/bezier_four_point.png spec/resources/bezier_four_point_flipped.png spec/resources/bezier_four_point_s.png spec/resources/bezier_six_point.png spec/resources/bezier_three_point.png spec/resources/bezier_three_point_flipped.png spec/resources/circles.png spec/resources/clock.png spec/resources/clock_base.png spec/resources/clock_bl_xdown_ydown.png spec/resources/clock_bl_xdown_yup.png spec/resources/clock_bl_xup_yup.png spec/resources/clock_mask.png spec/resources/clock_mask_updated.png spec/resources/clock_nn_xdown_ydown.png spec/resources/clock_nn_xdown_yup.png spec/resources/clock_nn_xup_yup.png spec/resources/clock_updated.png spec/resources/composited.png spec/resources/cropped.png spec/resources/damaged_chunk.png spec/resources/damaged_signature.png spec/resources/lines.png spec/resources/operations.png spec/resources/operations_grayscale.png spec/resources/partial_circles.png spec/resources/pixelstream.rgb spec/resources/pixelstream.rgba spec/resources/pixelstream_best_compression.png spec/resources/pixelstream_fast_rgba.png spec/resources/pixelstream_reference.png spec/resources/polygon_filled_horizontal.png spec/resources/polygon_filled_vertical.png spec/resources/polygon_triangle_filled.png spec/resources/polygon_unfilled.png spec/resources/rect.png spec/resources/replaced.png spec/resources/text_chunk.png spec/resources/ztxt_chunk.png spec/spec_helper.rb tasks/benchmarks.rake tasks/github-gem.rake)
  s.test_files = %w(spec/chunky_png/canvas/adam7_interlacing_spec.rb spec/chunky_png/canvas/drawing_spec.rb spec/chunky_png/canvas/masking_spec.rb spec/chunky_png/canvas/operations_spec.rb spec/chunky_png/canvas/png_decoding_spec.rb spec/chunky_png/canvas/png_encoding_spec.rb spec/chunky_png/canvas/resampling_spec.rb spec/chunky_png/canvas/stream_exporting_spec.rb spec/chunky_png/canvas/stream_importing_spec.rb spec/chunky_png/canvas_spec.rb spec/chunky_png/color_spec.rb spec/chunky_png/datastream_spec.rb spec/chunky_png/dimension_spec.rb spec/chunky_png/image_spec.rb spec/chunky_png/point_spec.rb spec/chunky_png/rmagick_spec.rb spec/chunky_png/vector_spec.rb spec/chunky_png_spec.rb spec/png_suite_spec.rb)
end
