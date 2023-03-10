defmodule WhisperStream.MixProject do
  use Mix.Project

  def project do
    [
      app: :whisper_stream,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:membrane_core, "~> 0.10.2"},
      {:membrane_file_plugin, "~> 0.12", only: :test},
      {:req, "~> 0.3.3", only: :test},
      {:membrane_mp3_mad_plugin, "~> 0.13.0", only: :test},
      {:membrane_ffmpeg_swresample_plugin, "~> 0.15", only: :test},
      {:membrane_fake_plugin, "~> 0.8.0", only: :test},
      {:bumblebee, github: "elixir-nx/bumblebee"},
      {:nx, github: "elixir-nx/nx", sparse: "nx", override: true},
      {:exla, github: "elixir-nx/nx", sparse: "exla", override: true},
      {:membrane_transcription, github: "lawik/membrane_transcription"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
