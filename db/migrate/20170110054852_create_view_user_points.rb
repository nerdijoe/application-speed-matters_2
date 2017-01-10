class CreateViewUserPoints < ActiveRecord::Migration
  def up
    execute "
      CREATE MATERIALIZED VIEW user_points AS
      SELECT u.username, u.id AS user_id, u.first_name, u.last_name, u.email, sum(p.value) as total_points FROM points p inner join users u on u.id = p.user_id GROUP BY u.id ORDER BY total_points DESC;

      CREATE UNIQUE INDEX user_points_getter
      ON user_points (user_id, total_points, first_name, last_name, email, username);"
  end

  def down
    execute "DROP MATERIALIZED VIEW user_points"
  end
end
