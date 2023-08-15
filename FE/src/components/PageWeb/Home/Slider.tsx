import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.css";
import Carousel from "react-bootstrap/Carousel";
import "./Home.css";

type item = {
  selectedIndex: number;
  e: () => void;
};

export default () => {
  return (
    <div className="slider">
      <Carousel className="slide-container">

      <Carousel.Item interval={1500}>
          <div className="slide-item">
            <div className="slide-image">
              <img
                className="d-block w-100"
                src={require("./../../../images/background/doan.jpg")}
                alt="Image One"
              />
            </div>
            <Carousel.Caption>
              <div className="slide-content">
                <h3>Chào mừng khách hàng đến với Foodsales</h3>
                <p>Đảm bảo chất lượng trong từng món ăn</p>
                <button className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                    e.preventDefault();
                    window.location.href = '/product';
                  }}
                > Show Now</button>
              </div>
            </Carousel.Caption>
          </div>
        </Carousel.Item>

        <Carousel.Item interval={1500}>
          <div className="slide-item">
            <div className="slide-image">
              <img
                className="d-block w-100"
                src={require("./../../../images/background/doanvat.jpg")}
                alt="Image One"
              />
            </div>
            <Carousel.Caption>
              <div className="slide-content">
                <h3>Đồ ăn nhanh</h3>
                <p>Nhanh gọn trong việc thưởng thức</p>
                <button className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                    e.preventDefault();
                    window.location.href = '/product/shirt';
                  }}
                > Show Now</button>
              </div>
            </Carousel.Caption>
          </div>
        </Carousel.Item>

        <Carousel.Item interval={1500}>
          <div className="slide-item">
            <div className="slide-image">
              <img
                className="d-block w-100"
                src={require("./../../../images/background/doan2.jpg")}
                alt="Image One"
              />
            </div>
            <Carousel.Caption>
              <div className="slide-content">
                <h3>Món ăn </h3>
                <p>Thực đơn cho bữa chính.</p>
                <button className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                    e.preventDefault();
                    window.location.href = '/product/shoe';
                  }}
                > Show Now</button>
              </div>
            </Carousel.Caption>
          </div>
        </Carousel.Item>

        <Carousel.Item interval={1500}>
          <div className="slide-item">
            <div className="slide-image">
              <img
                className="d-block w-100"
                src={require("./../../../images/background/douong.jpg")}
                alt="Image One"
              />
            </div>
            <Carousel.Caption>
              <div className="slide-content">
                <h3>Đồ uống</h3>
                <p>Sự tươi mát đến từ hoa quả</p>
                <button className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                    e.preventDefault();
                    window.location.href = '/product/watch';
                  }}
                > Show Now</button>
              </div>
            </Carousel.Caption>
          </div>
        </Carousel.Item>

        <Carousel.Item interval={1500}>
          <div className="slide-item">
            <div className="slide-image">
              <img
                className="d-block w-100"
                src={require("./../../../images/background/doan3.jpg")}
                alt="Image One"
              />
            </div>
            <Carousel.Caption>
              <div className="slide-content">
                <h3>Luôn luôn đảm bảo chất lượng và sự thoải mái!</h3>
                <p>Để tận hưởng những khoảnh khắc tuyệt vời, hãy đến với Foodsales.</p>
                <button className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                    e.preventDefault();
                    window.location.href = '/store';
                  }}
                > Read more</button>
              </div>
            </Carousel.Caption>
          </div>
        </Carousel.Item>

      </Carousel>
    </div>
  );
};
