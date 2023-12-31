require_relative 'test_helper'

GNUPLOT_CODE = <<-eos
plot [0:5][0:20] x**2 title 'O(n^2)'
eos

describe Asciidoctor::Diagram::GnuplotInlineMacroProcessor do
  include_examples "inline_macro", :gnuplot, GNUPLOT_CODE, [:png, :svg, :gif]
end

describe Asciidoctor::Diagram::GnuplotBlockMacroProcessor do
  include_examples "block_macro", :gnuplot, GNUPLOT_CODE, [:png, :svg, :gif, :txt]
end

describe Asciidoctor::Diagram::GnuplotBlockProcessor do
  include_examples "block", :gnuplot, GNUPLOT_CODE, [:png, :svg, :gif, :txt]

  it "should generate images with user defined size" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png",width="800", height="600"]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it "should generate nocrop/notrasparent images" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", crop=false, transparent=false]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it "should generate crop/trasparent images" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", crop=true, transparent=true]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it "should generate image with font name" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", font="Arial"]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it "should generate image with font name and size" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", font="Arial,11"]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it "should generate image with font name and scale" do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", font="Arial", scale="0.5"]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end

  it %(should generate image with font background="red") do
    doc = <<-eos
= Hello, Gnuplot!
Doc Writer <doc@example.com>

== First Section

[gnuplot, format="png", background="red"]
----
#{GNUPLOT_CODE}
----
    eos

    d = load_asciidoc doc
    expect(d).to_not be_nil

    b = d.find { |bl| bl.context == :image }
    expect(b).to_not be_nil

    expect(b.content_model).to eq :empty

    target = b.attributes['target']
    expect(target).to_not be_nil
    expect(target).to match(/\.png$/)
    expect(File.exist?(target)).to be true

    expect(b.attributes['width']).to_not be_nil
    expect(b.attributes['height']).to_not be_nil
  end


end
