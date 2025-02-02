import React, {useContext} from 'react'
import { ShopContext } from '../ShopContext'
import { useParams } from 'react-router-dom';
import Breadcrum from '../Components/Breadcrum';
import ProductDisplay from '../Components/ProductDisplay';
import DescriptionBox from '../Components/DescriptionBox'
 const Product = () => {
  const{all_product}=useContext(ShopContext);
  const{productId}=useParams();
  const product = all_product.find((e)=>e.id === Number(productId));
  return (
    <div>
      <Breadcrum product={product}/>
      <ProductDisplay product={product}/>
      <DescriptionBox/>
     
    </div>
  )
}

export default Product