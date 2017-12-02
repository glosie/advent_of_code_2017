defmodule InverseCaptchaTest do
  use ExUnit.Case
  doctest InverseCaptcha

  test "sum_adjacent 1122 produces 3" do
    assert InverseCaptcha.sum_adjacent("1122") == 3
  end

  test "sum_adjacent 1111 produces 4" do
    assert InverseCaptcha.sum_adjacent("1111") == 4
  end

  test "sum_adjacent 1234 produces 0" do
    assert InverseCaptcha.sum_adjacent("1234") == 0
  end

  test "sum_adjacent 91212129 produces 9" do
    assert InverseCaptcha.sum_adjacent("91212129") == 9
  end

  test "sum_across 1212 produces 6" do
    assert InverseCaptcha.sum_across("1212") == 6
  end

  test "sum_across 1221 produces 0" do
    assert InverseCaptcha.sum_across("1221") == 0
  end

  test "sum_across 123425 produces 4" do
    assert InverseCaptcha.sum_across("123425") == 4
  end

  test "sum_across 123123 produces 12" do
    assert InverseCaptcha.sum_across("123123") == 12
  end

  test "sum_across 12131415 produces 4" do
    assert InverseCaptcha.sum_across("12131415") == 4
  end
end
