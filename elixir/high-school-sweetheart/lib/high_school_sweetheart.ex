defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
      |> String.trim()
      |> String.first()
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.capitalize()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    names = String.split(full_name)
    first = initial(hd(names))
    last = initial(hd(tl(names)))
    first <> " " <> last
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
