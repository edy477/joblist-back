module WithStatsScopes
  def this_month
    now = Time.current
    where(created_at: now.all_month)
  end
end
