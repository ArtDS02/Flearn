/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author quoct
 */
public class Collection {

    private CollectionDetail collectionDetailId;
    private Question questionId;

    public Collection() {
    }

    public Collection(CollectionDetail collectionDetailId, Question questionId) {
        this.collectionDetailId = collectionDetailId;
        this.questionId = questionId;
    }

    public CollectionDetail getCollectionDetailId() {
        return collectionDetailId;
    }

    public void setCollectionDetailId(CollectionDetail collectionDetailId) {
        this.collectionDetailId = collectionDetailId;
    }

    public Question getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Question questionId) {
        this.questionId = questionId;
    }

    @Override
    public String toString() {
        return "Collection{" + "collectionDetailId=" + collectionDetailId + ", questionId=" + questionId + '}';
    }

}
