defmodule ConvexHull do
  @moduledoc """
  Module providing functions for computing a convex hull from a list of points.

  Each point should be a tuple with as many elements as dimensions. Each available convex hull algorithm specifies
  how many dimensions are supported and the running time in asymptotic notation.
  """
  @moduledoc since: "1.0.0"

  @doc """
  Gift wrapping has a time complixity of O(nh), where n is the number of points and h is the number of points on the convex hull.

  Simple but not the most efficient algorithm, also known as Jarvis' march. Created independently by Chand & Kapur in
  1970 and R. A. Jarvis in 1973. This algorithm can be used when n is small or when h is expected to be very small with
  respect to n. The algorithm only supports two-dimensional points.
  """
  @doc since: "1.0.0"

  def gift_wrapping(points) do
    ConvexHull.GiftWrapping.gift_wrapping(points)
  end

  @doc """
  Graham scan has a time complexity of O(n log n), where n is the number of points.

  Slighty more sophisticated, but much more efficient than the gift wrapping algorithm. Named after Ronald Graham,
  who published the algorithm in 1972. The algorithm only supports two-dimensional points.
  """
  @doc since: "1.0.0"
  def graham_scan(points) do
    ConvexHull.GrahamScan.graham_scan(points)
  end

  @doc """
  Chan's algorithm has a time complexity of O(n log h), where n is the number of points and h is the number of points on the convex hull.

  Note that this algorithm is not only the most efficient in terms of time complexity but also significantly faster due to the distributed fashion
  in which the convex hull subsets are calculated. Named after Timothy M. Chan, who published the algorithm in 1996. The algorithm only supports
  two-dimensional points.
  """
  @doc since: "1.0.0"
  def chans_algorithm(points) do
    ConvexHull.ChansAlgorithm.chans_algorithm(points)
  end
end
