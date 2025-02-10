package com.example.dao;

import com.example.model.Task;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TaskDAO {
    public List<Task> getAllTasks() {
        List<Task> tasks = new ArrayList<>();
        String sql = "SELECT * FROM tasks";

        try (Connection conn = DataBaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                tasks.add(new Task(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getString("status"),
                    rs.getDate("deadline").toLocalDate(),
                    rs.getInt("user_id")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tasks;
    }
}
