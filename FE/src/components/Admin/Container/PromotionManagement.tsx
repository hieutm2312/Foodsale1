import axios from "axios";
import React from "react";
import { useAppContext } from "../../Navbar/Navbar";

const data = [
  {
      "id": 1,
      "model": "Đồ ăn nhanh",
      "sale": 2
  },
  {
      "id": 2,
      "model": "Món ăn",
      "sale": 10
  },
  {
      "id": 3,
      "model": "Đồ uống",
      "sale": 5
  },
  {
      "id": 4,
      "model": "promotion",
      "sale": 10
  }
]

export default () => {

  const {promotion, setPromotion} =useAppContext();
  const {saleOf_Shirt, setSaleOf_Shirt}= useAppContext();
  const {saleOf_Shoes, setSaleOf_Shoes}= useAppContext();
  const {saleOf_Watch, setSaleOf_Watch}= useAppContext();

  const updateSale = (model: String, sale: Number) => {
    let id = 0;
    if(model == "Đồ ăn nhanh") id = 1;
    if(model == "Món ăn") id = 2;
    if(model == "Đồ uống") id = 3;
    if(model == "promotion") id = 4;

    axios({
      method: "put",
      url: "http://localhost:9191/updateSale",
      data: {
        "id": id,
        "model" : model,
        "sale" : sale
      },
    })
      .then((res) => {
        if(res.data.model == "Đồ ăn nhanh") setSaleOf_Shirt(res.data.sale)
        if(res.data.model == "Món ăn") setSaleOf_Shoes(res.data.sale)
        if(res.data.model == "Đồ uống") setSaleOf_Watch(res.data.sale)
        if(res.data.model == "promotion") setPromotion(res.data.sale)

      })
      .catch((err) => {
        console.log(err);
      });
  };
  return (
    <div className="container">
      <h1 className="h1-st1">Quản lí khuyến mại, giảm giá</h1>
      <div>
        <div>
          <span>Khuyến mại chung: {promotion} % </span>
          <input
            className="input"
            type="text"
            placeholder= {promotion+"%"}
            onChange={(e) => updateSale("promotion",Number(e.target.value))}         
          ></input>
        </div>
       
        <div>
          <span>Giám giá Đồ ăn nhanh: {saleOf_Shirt} %</span>
          <input
            className="input"
            type="text"
            placeholder= {saleOf_Shirt+"%"}
            onChange={(e) => updateSale("Đồ ăn nhanh",Number(e.target.value))}        
          ></input>
        </div>

        <div>
          <span>Giám giá Món ăn: {saleOf_Shoes} % </span>
          <input
            className="input"
            type="text"
            placeholder= {saleOf_Shoes+"%"}
            onChange={(e) => updateSale("Món ăn",Number(e.target.value))}
          ></input>
        </div>

        <div>
          <span>Giám giá Đồ uống: {saleOf_Watch} %</span>
          <input
            className="input"
            type="text"
            placeholder= {saleOf_Watch+"%"}
            onChange={(e) => updateSale("Đồ uống",Number(e.target.value))}
          ></input>
        </div>
      </div>
    </div>
  );
};
