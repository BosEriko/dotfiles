
# ============================================================================ [End Session] ===== #

end-session() {
  # .history
  (cd ~/.history && git diff)
  printf 'Do you want to push your History Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd ~/.history && git add .)
    (cd ~/.history && git commit -m ":pencil: History #$(date +%s)")
    (cd ~/.history && git push origin master)
    echo "History Repository: Pushed successfully."
  else
    echo "History Repository has not been pushed."
  fi
  # obsidian-personal
  (cd $STORAGE/Obsidian/personal && git diff)
  printf 'Do you want to push your Personal Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/personal && git add .)
    (cd $STORAGE/Obsidian/personal && git commit -m ":pencil: Personal Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/personal && git push origin master)
    echo "Personal Obsidian Repository: Pushed successfully."
  else
    echo "Personal Obsidian Repository has not been pushed."
  fi
  # obsidian-games
  (cd $STORAGE/Obsidian/games && git diff)
  printf 'Do you want to push your Games Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/games && git add .)
    (cd $STORAGE/Obsidian/games && git commit -m ":pencil: Games Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/games && git push origin master)
    echo "Games Obsidian Repository: Pushed successfully."
  else
    echo "Games Obsidian Repository has not been pushed."
  fi
  # obsidian-professional
  (cd $STORAGE/Obsidian/professional && git diff)
  printf 'Do you want to push your Professional Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/professional && git add .)
    (cd $STORAGE/Obsidian/professional && git commit -m ":pencil: Professional Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/professional && git push origin master)
    echo "Professional Obsidian Repository: Pushed successfully."
  else
    echo "Professional Obsidian Repository has not been pushed."
  fi
  # obsidian-til
  (cd $STORAGE/Obsidian/TIL && git diff)
  printf 'Do you want to push your TIL Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/til && git add .)
    (cd $STORAGE/Obsidian/til && git commit -m ":pencil: TIL Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/til && git push origin master)
    echo "TIL Obsidian Repository: Pushed successfully."
  else
    echo "TIL Obsidian Repository has not been pushed."
  fi
  # obsidian-morning-ritual
  (cd $STORAGE/Obsidian/morning-ritual && git diff)
  printf 'Do you want to push your Morning Ritual Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/morning-ritual && git add .)
    (cd $STORAGE/Obsidian/morning-ritual && git commit -m ":pencil: Morning Ritual Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/morning-ritual && git push origin master)
    echo "Morning Ritual Obsidian Repository: Pushed successfully."
  else
    echo "Morning Ritual Obsidian Repository has not been pushed."
  fi
  # obsidian-daily-journal
  (cd $STORAGE/Obsidian/daily-journal && git diff)
  printf 'Do you want to push your Daily Journal Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/daily-journal && git add .)
    (cd $STORAGE/Obsidian/daily-journal && git commit -m ":pencil: Daily Journal Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/daily-journal && git push origin master)
    echo "Daily Journal Obsidian Repository: Pushed successfully."
  else
    echo "Daily Journal Obsidian Repository has not been pushed."
  fi
  # obsidian-blogs
  (cd $STORAGE/Obsidian/blogs && git diff)
  printf 'Do you want to push your Blogs Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian/blogs && git add .)
    (cd $STORAGE/Obsidian/blogs && git commit -m ":pencil: Blogs Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian/blogs && git push origin master)
    echo "Blogs Obsidian Repository: Pushed successfully."
  else
    echo "Blogs Obsidian Repository has not been pushed."
  fi
  # obsidian
  (cd $STORAGE/Obsidian && git diff)
  printf 'Do you want to push your Obsidian Repository (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $STORAGE/Obsidian && git add .)
    (cd $STORAGE/Obsidian && git commit -m ":pencil: Obsidian #$(date +%s)")
    (cd $STORAGE/Obsidian && git push origin master)
    echo "Obsidian Repository: Pushed successfully."
  else
    echo "Obsidian Repository has not been pushed."
  fi
}
