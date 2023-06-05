/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Thinh
 */
public class Exam {
    private String ExamID;
    private String Name;
    private int TimeLimit;
    private String Date;
    private int NumberOfQuestion;

    public Exam() {
    }

    public Exam(String ExamID, String Name, int TimeLimit, String Date, int NumberOfQuestion) {
        this.ExamID = ExamID;
        this.Name = Name;
        this.TimeLimit = TimeLimit;
        this.Date = Date;
        this.NumberOfQuestion = NumberOfQuestion;
    }

    public String getExamID() {
        return ExamID;
    }

    public void setExamID(String ExamID) {
        this.ExamID = ExamID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getTimeLimit() {
        return TimeLimit;
    }

    public void setTimeLimit(int TimeLimit) {
        this.TimeLimit = TimeLimit;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public int getNumberOfQuestion() {
        return NumberOfQuestion;
    }

    public void setNumberOfQuestion(int NumberOfQuestion) {
        this.NumberOfQuestion = NumberOfQuestion;
    }

    @Override
    public String toString() {
        return "Exam{" + "ExamID=" + ExamID + ", Name=" + Name + ", TimeLimit=" + TimeLimit + ", Date=" + Date + ", NumberOfQuestion=" + NumberOfQuestion + '}';
    }
    
}
