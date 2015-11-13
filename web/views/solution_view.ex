defmodule LearnEx.SolutionView do
  use LearnEx.Web, :view

  def image_for_test(tests, index) do
    case Enum.fetch(tests, index) do
      {:ok, true}  -> "/images/greenlight.png"
      {:ok, false} -> "/images/redlight.png"
      :error       -> "/images/bluelight.png"
    end
  end
end
