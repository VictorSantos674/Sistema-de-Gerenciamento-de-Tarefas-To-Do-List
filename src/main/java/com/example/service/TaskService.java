package com.example.service;

import com.example.dao.TaskDAO;
import com.example.model.Task;
import java.util.List;

public class TaskService {
    private TaskDAO taskDAO = new TaskDAO();

    public List<Task> listTasks() {
        return taskDAO.getAllTasks();
    }
}
