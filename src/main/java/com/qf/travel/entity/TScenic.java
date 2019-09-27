package com.qf.travel.entity;

public class TScenic {
    private Integer id;

    private String title;

    private String scenic;

    private String image;

    private Double price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getScenic() {
        return scenic;
    }

    public void setScenic(String scenic) {
        this.scenic = scenic == null ? null : scenic.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }


    @Override
    public String toString() {
        return "TScenic{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", scenic='" + scenic + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                '}';
    }
}