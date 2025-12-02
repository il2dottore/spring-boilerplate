INSERT INTO PUBLIC."users" ("userId", "username", "password", "email", "fullname", "avatar", "phoneNumber", "createdAt", "updatedAt") VALUES
(1, 'test', '$2b$10$kLsiaDUHHT0kx2bufYDfwup5Ms3f/8IES1irUkjeoD.svav7ppnOq', 'baovn.23itb@vku.udn.vn', 'Vo Ngoc Bao 23IT.B010', NULL, '0335237597', '2025-05-18 00:05:59', '2025-05-18 00:07:33'),
(2, 'florentino', '$2b$10$kLsiaDUHHT0kx2bufYDfwup5Ms3f/8IES1irUkjeoD.svav7ppnOq', 'florentino@vku.udn.vn', 'florentino', NULL, '0987654321', '2025-05-18 12:30:14', '2025-05-18 12:30:14');

------------- COMMENT CHO BẢNG `users` -------------
COMMENT ON COLUMN users.avatar IS 'Địa chỉ URL avatar của người dùng';
------------- COMMENT CHO BẢNG `users` -------------

INSERT INTO PUBLIC."addresses" ("addressId", "detailAddress", "addressName", "addressPhone", "department", "addressNote", "userId") VALUES
(1, 'Số 36 đường 2 tháng 9, Hải Châu, Đà Nẵng, ', 'Nhà của tôi', '09876543221', 'Trọ', 'Ném đồ trước cửa', 1),
(2, '484 Trần Đại Nghĩa, Điện Ngọc, Ngũ Hành Sơn, Đà Nẵng', 'Nhà riêng', '0987654321', '1', 'Ném đồ lên lầu 2 giùm', 2);

------------- COMMENT CHO BẢNG `addresses` -------------
COMMENT ON COLUMN addresses."detailAddress" IS 'Địa chỉ chi tiết (Số nhà, tên quận/huyện)';
COMMENT ON COLUMN addresses."addressName" IS 'Tên nơi ở (Nhà riêng, trọ, chung cư)';
COMMENT ON COLUMN addresses."addressNote" IS 'Cách thức nhận hàng (Tận nơi, để ở đâu đó)';
------------- COMMENT CHO BẢNG `addresses` -------------

INSERT INTO PUBLIC."stores" ("storeId", "storeName", "storeAddress", "storePhoneNumber", "storeStatus", "openingHours", "closingHours", "userId", "createdAt", "updatedAt") VALUES
(1, 'Quán ăn vặt (Cơ sở 1)', 'Cổng Trường Đại Học Công Nghệ Thông Tin và Truyền Thông Việt Hàn, Ngũ Hành Sơn, Đà Nẵng', '0977547658', 'active', '7:00', '04:00', 1, '2025-05-18 00:05:59', '2025-05-18 12:22:48'),
(2, 'Quán ăn vặt (Cơ sở 2)', 'Thôn Ngọc Sơn, xã Hành Thiện, huyện Nghĩa Hành, tỉnh Quảng Ngãi', '0756432758', 'active', '9:00', '09:00', 2, '2025-05-18 00:05:59', '2025-05-18 12:22:48');

------------- COMMENT CHO BẢNG `stores` -------------
COMMENT ON COLUMN stores."storeStatus" IS 'active: Cửa hàng đang hoạt động | inactive: Cửa hàng đang đóng cửa do hết thời gian làm việc (openingHours và closingHours) | closed: Cửa hàng đóng cửa do không còn bán nữa';
------------- COMMENT CHO BẢNG `stores` -------------

INSERT INTO PUBLIC."store_images" ("storeImageId", "imageUrl", "storeId") VALUES (1, 'https://fastly.picsum.photos/id/777/200/200.jpg?hmac=ztlrKXJq3EjICHZm7VdNUEexuiMEGRpOrp-QWzBRYng', 1);
INSERT INTO PUBLIC."store_images" ("storeImageId", "imageUrl", "storeId") VALUES (2, 'https://fastly.picsum.photos/id/648/200/200.jpg?hmac=Kb_qhDdDfOGevrbabLvz4Tp3fu-M7DxQE6APqQRnwVw', 2);

INSERT INTO PUBLIC."categories" ("categoryId", "categoryName", "categoryDescription") VALUES
(1, 'Món chính', 'Các món ăn chính trong bữa ăn như cơm, phở, bún, mì.'),
(2, 'Món khai vị', 'Những món ăn nhẹ dùng trước bữa chính như gỏi cuốn, súp.'),
(3, 'Món tráng miệng', 'Các món ngọt dùng sau bữa ăn như chè, kem, bánh ngọt.'),
(4, 'Đồ uống', 'Các loại nước giải khát như nước ép, trà, sinh tố.'),
(5, 'Đồ ăn nhanh', 'Các món ăn tiện lợi như bánh mì, hamburger, khoai tây chiên.'),
(6, 'Đồ ăn vặt', 'Là những món ăn nhỏ, thường được dùng giữa các bữa chính để ăn chơi, nhâm nhi hoặc tụ tập cùng bạn bè.'),
(7, 'Món chay', 'Các món ăn không sử dụng thịt động vật, chủ yếu là rau củ, đậu hũ.'),
(8, 'Món nướng', 'Các loại thịt, hải sản hoặc rau củ được chế biến bằng cách nướng trên than hoặc bếp nướng.'),
(9, 'Món lẩu', 'Món ăn có nước dùng nóng, thường ăn kèm với thịt, hải sản, rau và bún/mì.'),
(10, 'Hải sản', 'Các món ăn được chế biến từ tôm, cua, cá, mực và các loại sinh vật biển khác.'),
(11, 'Món xào', 'Các món ăn được chế biến bằng cách xào nhanh trên lửa lớn, giữ được độ tươi giòn.'),
(12, 'Món canh/súp', 'Các món nước dùng kèm trong bữa ăn, có tác dụng giải nhiệt và bổ sung dinh dưỡng.'),
(13, 'Bánh ngọt', 'Các loại bánh như bánh kem, cupcake, tiramisu, thường dùng làm tráng miệng.'),
(14, 'Cà phê', 'Các loại đồ uống được pha chế từ hạt cà phê, nóng hoặc lạnh.'),
(15, 'Trà', 'Các loại đồ uống được pha từ lá trà, có thể là trà nóng truyền thống hoặc trà trái cây, trà sữa.'),
(16, 'Rau củ quả', 'Các món ăn chủ yếu là rau xanh và trái cây, dùng để bổ sung vitamin và chất xơ.'),
(17, 'Món ăn truyền thống Việt Nam', 'Các món ăn đặc trưng, mang đậm bản sắc văn hóa ẩm thực Việt Nam như Bánh chưng, Giò lụa.'),
(18, 'Món ăn quốc tế', 'Các món ăn không phải của Việt Nam, ví dụ: Pizza, Sushi, Pasta, Taco.'),
(19, 'Món ăn theo mùa', 'Các món ăn đặc trưng và phổ biến trong một mùa cụ thể (Xuân, Hạ, Thu, Đông).'),
(20, 'Gia vị/Nước chấm', 'Các loại sốt, mắm, gia vị dùng để tăng hương vị cho món ăn.');

INSERT INTO PUBLIC."products" ("productId", "productName", "productPrice", "productDescription", "productStatus", "storeId", "createdAt", "updatedAt") VALUES
(1, 'Trà sữa trân châu đường đen', 30000, 'Thức uống trà sữa truyền thống kết hợp trân châu đường đen dẻo dai, vị béo ngọt đậm đà.', 'available', 1, '2025-05-18 00:05:59', '2025-05-18 00:21:33'),
(2, 'Mì cay 7 cấp độ', 35000, 'Mì nấu với nước dùng cay nồng, có kim chi, tôm, mực, bò viên. Có 7 cấp độ cay để lựa chọn.', 'available', 2, '2025-05-18 00:05:59', '2025-05-18 00:21:54'),
(3, 'Chân gà sả tắc', 35000, 'Chân gà rút xương ngâm sả, tắc, ớt, có vị chua cay mặn ngọt hài hòa, giòn sần sật.', 'available', 1, '2025-05-18 00:05:59', '2025-05-18 00:21:43'),
(4, 'Xôi xéo truyền thống', 15000, 'Xôi nếp dẻo vàng ươm, ăn kèm đậu xanh nghiền, hành phi thơm lừng và ruốc.', 'available', 2, '2025-05-18 00:15:19', '2025-05-18 00:15:19'),
(5, 'Bánh tráng trộn bò khô Tây Ninh', 15000, 'Bánh tráng được trộn với bò khô, trứng cút, khô mực, rau răm, sa tế và nước sốt me chua ngọt.', 'available', 1, '2025-05-18 00:36:52', '2025-05-18 00:36:52'),
(6, 'Bánh mì nướng muối ớt phô mai', 15000, 'Bánh mì nướng giòn, quét sốt muối ớt cay đặc trưng, phủ thêm lớp phô mai béo ngậy.', 'available', 2, '2025-05-18 00:38:08', '2025-05-18 00:38:08'),
(7, 'Gỏi cuốn tôm thịt', 35000, 'Tôm luộc, thịt ba chỉ, bún, rau thơm cuộn trong bánh tráng, chấm cùng nước tương đậu phộng.', 'available', 1, '2025-05-18 00:42:13', '2025-05-18 00:42:13'),
(8, 'Cá viên chiên thập cẩm', 50000, 'Thập cẩm các loại viên chiên như cá viên, bò viên, tôm viên, ăn kèm tương ớt xí muội.', 'available', 2, '2025-05-18 00:43:30', '2025-05-18 00:43:30'),
(9, 'Phở bò tái lăn', 55000, 'Phở nước dùng đậm đà, thịt bò tái lăn mềm, hành tây, ngò gai, ăn kèm quẩy giòn.', 'available', 1, '2025-05-18 01:00:10', '2025-05-18 01:00:10'),
(10, 'Bún chả Hà Nội', 45000, 'Bún tươi ăn kèm chả nướng than hoa thơm lừng và nem rán, chấm nước mắm chua ngọt.', 'available', 2, '2025-05-18 01:10:20', '2025-05-18 01:10:20'),
(11, 'Sữa chua dẻo vị dâu', 25000, 'Sữa chua dẻo mịn, có vị chua ngọt thanh mát của dâu tây, ăn lạnh rất ngon.', 'available', 1, '2025-05-18 01:20:30', '2025-05-18 01:20:30'),
(12, 'Nước ép cam tươi', 30000, 'Nước ép từ cam sành tươi nguyên chất, giàu vitamin C, giải khát tức thì.', 'available', 2, '2025-05-18 01:30:40', '2025-05-18 01:30:40'),
(13, 'Hamburger bò phô mai', 65000, 'Bánh mì kẹp bò xay nướng, lớp phô mai tan chảy, rau tươi và sốt đặc biệt.', 'available', 1, '2025-05-18 01:40:50', '2025-05-18 01:40:50'),
(14, 'Khoai tây chiên lắc phô mai', 30000, 'Khoai tây cắt thanh chiên giòn rụm, lắc bột phô mai thơm béo.', 'available', 2, '2025-05-18 01:50:00', '2025-05-18 01:50:00'),
(15, 'Trà đào cam sả', 35000, 'Thức uống thanh nhiệt với trà, miếng đào giòn, cam tươi và sả thơm lừng.', 'available', 1, '2025-05-18 02:00:10', '2025-05-18 02:00:10'),
(16, 'Bánh su kem mini', 15000, 'Bánh su kem nhỏ xinh, nhân kem tươi mát lạnh, vỏ bánh mềm xốp.', 'available', 2, '2025-05-18 02:10:20', '2025-05-18 02:10:20'),
(17, 'Bò bít tết khoai tây nghiền', 120000, 'Thịt bò phi lê áp chảo, dùng kèm sốt tiêu đen, trứng ốp la và khoai tây nghiền béo.', 'available', 1, '2025-05-18 02:20:30', '2025-05-18 02:20:30'),
(18, 'Cơm rang dưa bò', 40000, 'Cơm rang với dưa cải muối chua, thịt bò xào, trứng, hạt cơm tơi xốp, đậm vị.', 'available', 2, '2025-05-18 02:30:40', '2025-05-18 02:30:40'),
(19, 'Bánh canh cua', 50000, 'Bánh canh sợi to, nước dùng sệt từ cua biển, ăn kèm chả cua, huyết và hành phi.', 'available', 1, '2025-05-18 02:40:50', '2025-05-18 02:40:50'),
(20, 'Kem dừa Thái Lan', 45000, 'Kem dừa tươi béo ngậy, đựng trong gáo dừa, rắc thêm dừa non, đậu phộng và thạch.', 'available', 2, '2025-05-18 02:50:00', '2025-05-18 02:50:00'),
(21, 'Bánh flan caramel', 20000, 'Bánh flan mềm tan, vị trứng sữa béo thơm, phủ lớp caramel đắng nhẹ, ngọt ngào.', 'available', 1, '2025-05-18 03:00:10', '2025-05-18 03:00:10'),
(22, 'Súp hải sản nấm tuyết', 40000, 'Súp nóng hổi với tôm, mực, nấm tuyết, có vị ngọt thanh, thích hợp làm món khai vị.', 'available', 2, '2025-05-18 03:10:20', '2025-05-18 03:10:20'),
(23, 'Pizza hải sản sốt phô mai', 180000, 'Đế bánh Pizza giòn, phủ sốt cà chua, phô mai Mozzarella, tôm, mực và ớt chuông.', 'available', 1, '2025-05-18 03:20:30', '2025-05-18 03:20:30'),
(24, 'Nước chanh muối đá bào', 25000, 'Thức uống giải nhiệt với chanh muối, đá bào mịn, vị chua mặn ngọt cân bằng.', 'available', 2, '2025-05-18 03:30:40', '2025-05-18 03:30:40'),
(25, 'Bánh mì kẹp thịt nguội', 35000, 'Bánh mì baguette giòn, kẹp jambon, pate, dưa chuột, đồ chua và sốt mayonnaise.', 'available', 1, '2025-05-18 03:40:50', '2025-05-18 03:40:50'),
(26, 'Sinh tố bơ cốt dừa', 40000, 'Sinh tố từ bơ tươi xay mịn, kết hợp cốt dừa béo thơm và đá lạnh.', 'available', 2, '2025-05-18 03:50:00', '2025-05-18 03:50:00'),
(27, 'Salad Caesar gà nướng', 70000, 'Rau xà lách tươi, bánh mì croutons, gà nướng thái lát, trộn sốt Caesar và phô mai bào.', 'available', 1, '2025-05-18 04:00:10', '2025-05-18 04:00:10'),
(28, 'Bánh bao nhân thịt trứng cút', 20000, 'Bánh bao hấp nóng, nhân thịt heo xay, mộc nhĩ, nấm hương và trứng cút.', 'available', 2, '2025-05-18 04:10:20', '2025-05-18 04:10:20'),
(29, 'Chè khúc bạch', 35000, 'Chè có thạch khúc bạch sữa tươi, hạnh nhân lát, vải/nhãn và nước đường phèn thanh mát.', 'available', 1, '2025-05-18 04:20:30', '2025-05-18 04:20:30'),
(30, 'Cà phê đen đá', 25000, 'Cà phê pha phin truyền thống, đậm đặc, phục vụ với đá.', 'available', 2, '2025-05-18 04:30:40', '2025-05-18 04:30:40'),
(31, 'Hủ tiếu Nam Vang khô', 50000, 'Hủ tiếu trộn với gan, tôm, thịt băm, xá xíu, ăn kèm chén nước súp riêng.', 'available', 1, '2025-05-18 04:40:50', '2025-05-18 04:40:50'),
(32, 'Lẩu Thái Tom Yum', 250000, 'Nước lẩu Thái chua cay đặc trưng, nhúng hải sản, bò, nấm và rau tươi.', 'available', 2, '2025-05-18 04:50:00', '2025-05-18 04:50:00'),
(33, 'Bánh bông lan trứng muối', 40000, 'Bánh bông lan mềm xốp, phủ lớp sốt dầu trứng, ruốc và trứng muối béo mặn.', 'available', 1, '2025-05-18 05:00:10', '2025-05-18 05:00:10'),
(34, 'Trà Atiso đỏ', 30000, 'Trà pha từ bông Atiso đỏ, có vị chua nhẹ, giúp thanh nhiệt và giải độc.', 'available', 2, '2025-05-18 05:10:20', '2025-05-18 05:10:20'),
(35, 'Ốc hương rang muối ớt', 80000, 'Ốc hương tươi, rang với muối, ớt, sả, có vị cay mặn đậm đà, thơm lừng.', 'available', 1, '2025-05-18 05:20:30', '2025-05-18 05:20:30'),
(36, 'Nem nướng cuốn bánh tráng', 60000, 'Nem nướng thơm phức cuốn cùng bánh tráng, rau sống, xoài xanh, chấm nước lèo đặc biệt.', 'available', 2, '2025-05-18 05:30:40', '2025-05-18 05:30:40'),
(37, 'Bánh mì chảo trứng ốp la', 45000, 'Bánh mì ăn kèm chảo gồm trứng ốp la, pate, xúc xích, thịt nguội và sốt cà chua.', 'available', 1, '2025-05-18 05:40:50', '2025-05-18 05:40:50'),
(38, 'Mochi kem Nhật Bản', 25000, 'Bánh mochi vỏ dẻo dai, bên trong là nhân kem lạnh với nhiều hương vị (trà xanh, dâu, xoài).', 'available', 2, '2025-05-18 05:50:00', '2025-05-18 05:50:00'),
(39, 'Sườn non heo nướng mật ong', 90000, 'Sườn non tẩm ướp gia vị và mật ong, nướng trên than hồng, có vị ngọt thơm, mềm thịt.', 'available', 1, '2025-05-18 06:00:10', '2025-05-18 06:00:10'),
(40, 'Tiramisu cổ điển', 55000, 'Bánh Tiramisu Ý với lớp kem Mascarpone béo, bánh Ladyfingers tẩm cà phê và bột cacao.', 'available', 2, '2025-05-18 06:10:20', '2025-05-18 06:10:20'),
(41, 'Nước suối đóng chai', 10000, 'Nước tinh khiết đóng chai.', 'available', 1, '2025-05-18 06:20:30', '2025-05-18 06:20:30'),
(42, 'Trà tắc xí muội', 25000, 'Trà tắc chua ngọt thanh mát, thêm vị mặn nhẹ của xí muội, giải khát hiệu quả.', 'available', 2, '2025-05-18 06:30:40', '2025-05-18 06:30:40'),
(43, 'Sushi cuộn cá hồi', 85000, 'Cơm cuộn rong biển, nhân cá hồi tươi sống, bơ, dưa chuột, ăn kèm wasabi và gừng muối.', 'available', 1, '2025-05-18 06:40:50', '2025-05-18 06:40:50'),
(44, 'Mì ý sốt bò bằm (Spaghetti)', 75000, 'Mì Ý dai, sốt cà chua thịt bò bằm đậm đà, rắc phô mai Parmesan bào.', 'available', 2, '2025-05-18 06:50:00', '2025-05-18 06:50:00'),
(45, 'Chả giò rế hải sản', 50000, 'Chả giò cuốn bằng bánh rế giòn tan, nhân hải sản, thịt, rau củ, chấm nước mắm chua ngọt.', 'available', 1, '2025-05-18 07:00:10', '2025-05-18 07:00:10'),
(46, 'Bánh bao chiên kim sa', 30000, 'Bánh bao chiên vàng giòn, nhân kem trứng muối tan chảy, ngọt béo.', 'available', 2, '2025-05-18 07:10:20', '2025-05-18 07:10:20'),
(47, 'Thịt kho trứng', 60000, 'Thịt ba chỉ kho với trứng cút/trứng gà, nước dừa, vị mặn ngọt đậm đà, ăn kèm cơm trắng.', 'available', 1, '2025-05-18 07:20:30', '2025-05-18 07:20:30'),
(48, 'Rau muống xào tỏi', 30000, 'Rau muống tươi xanh xào nhanh với tỏi phi thơm, là món rau quen thuộc trong bữa cơm Việt.', 'available', 2, '2025-05-18 07:30:40', '2025-05-18 07:30:40'),
(49, 'Bánh chuối nướng', 25000, 'Chuối sứ chín trộn cốt dừa và đường, nướng lên có màu vàng đẹp mắt, vị ngọt béo.', 'available', 1, '2025-05-18 07:40:50', '2025-05-18 07:40:50'),
(50, 'Nước dừa tươi', 30000, 'Nước dừa xiêm tươi nguyên trái, ngọt thanh, mát lạnh.', 'available', 2, '2025-05-18 07:50:00', '2025-05-18 07:50:00');

INSERT INTO PUBLIC."product_images" ("productImageId", "imageUrl", "productId") VALUES
(1, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/1.jpg', 1),
(2, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/2.jpg', 2),
(3, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/3.jpg', 3),
(4, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/4.jpg', 4),
(5, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/5.jpg', 5),
(6, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/6.jpg', 6),
(7, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/7.jpg', 7),
(8, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/8.jpg', 8),
(9, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/9.jpg', 9),
(10, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/10.jpg', 10),
(11, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/11.jpg', 11),
(12, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/12.jpg', 12),
(13, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/13.jpg', 13),
(14, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/14.jpg', 14),
(15, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/15.jpg', 15),
(16, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/16.jpg', 16),
(17, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/17.jpg', 17),
(18, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/18.jpg', 18),
(19, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/19.jpg', 19),
(20, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/20.jpg', 20),
(21, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/21.jpg', 21),
(22, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/22.jpg', 22),
(23, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/23.jpg', 23),
(24, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/24.jpg', 24),
(25, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/25.jpg', 25),
(26, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/26.jpg', 26),
(27, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/27.jpg', 27),
(28, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/28.jpg', 28),
(29, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/29.jpg', 29),
(30, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/30.jpg', 30),
(31, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/31.jpg', 31),
(32, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/32.jpg', 32),
(33, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/33.jpg', 33),
(34, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/34.jpg', 34),
(35, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/35.jpg', 35),
(36, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/36.jpg', 36),
(37, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/37.jpg', 37),
(38, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/38.jpg', 38),
(39, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/39.jpg', 39),
(40, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/40.jpg', 40),
(41, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/41.jpg', 41),
(42, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/42.jpg', 42),
(43, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/43.jpg', 43),
(44, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/44.jpg', 44),
(45, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/45.jpg', 45),
(46, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/46.jpg', 46),
(47, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/47.jpg', 47),
(48, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/48.jpg', 48),
(49, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/49.jpg', 49),
(50, 'https://raw.githubusercontent.com/webwizards23gitb/assets/refs/heads/main/product_images/50.jpg', 50);

INSERT INTO PUBLIC."products_categories" ("productCategoryId", "productId", "categoryId") VALUES
(1, 4, 1),
(2, 1, 4),
(3, 2, 1),
(4, 3, 6),
(5, 5, 6),
(6, 6, 6),
(7, 7, 2),
(8, 8, 6),
(9, 9, 1),
(10, 10, 1),
(11, 11, 3),
(12, 12, 4),
(13, 13, 5),
(14, 14, 5),
(15, 15, 4),
(16, 16, 3),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 3),
(21, 21, 3),
(22, 22, 2),
(23, 23, 18),
(24, 24, 4),
(25, 25, 5),
(26, 26, 4),
(27, 27, 2),
(28, 28, 5),
(29, 29, 3),
(30, 30, 14),
(31, 31, 1),
(32, 32, 9),
(33, 33, 13),
(34, 34, 15),
(35, 35, 10),
(36, 36, 8),
(37, 37, 1),
(38, 38, 3),
(39, 39, 8),
(40, 40, 13),
(41, 41, 4),
(42, 42, 15),
(43, 43, 18),
(44, 44, 18),
(45, 45, 2),
(46, 46, 13),
(47, 47, 17),
(48, 48, 11),
(49, 49, 3),
(50, 50, 4);

INSERT INTO PUBLIC."toppings" ("toppingId", "toppingName", "multiple", "shopId") VALUES
(1, 'Size', false, 1),
(2, 'Size', false, 2);

------------- COMMENT CHO BẢNG `toppings` -------------
COMMENT ON COLUMN toppings."toppingName" IS 'Tên loại topping (Size, đồ ăn kèm)';
COMMENT ON COLUMN toppings."multiple" IS 'Cho phép topping này chọn nhiều hay không';
COMMENT ON COLUMN toppings."shopId" IS 'Cửa hàng mà topping này thuộc về';
------------- COMMENT CHO BẢNG `toppings` -------------

INSERT INTO PUBLIC."topping_values" ("toppingValueId", "toppingValueName", "toppingPrice", "toppingId") VALUES
(1, 'S (Nhỏ)', 5000, 1),
(2, 'M (Vừa)', 10000, 1),
(3, 'L (Lớn)', 20000, 1),
(4, 'S (Nhỏ)', 5000, 2),
(5, 'M (Vừa)', 10000, 2),
(6, 'L (Lớn)', 20000, 2);

INSERT INTO public.products_toppings ("productId","toppingId") VALUES
	 (1,1),
	 (15,1),
	 (41,1),
	 (3,1),
	 (5,1),
	 (7,1),
	 (27,1),
	 (45,1),
	 (9,1),
	 (17,1),
	 (19,1),
	 (31,1),
	 (37,1),
	 (11,1),
	 (21,1),
	 (29,1),
	 (49,1),
	 (13,1),
	 (25,1),
	 (23,1),
	 (43,1),
	 (33,1),
	 (35,1),
	 (39,1),
	 (47,1),
	 (2,2),
	 (4,2),
	 (10,2),
	 (18,2),
	 (6,2),
	 (8,2),
	 (12,2),
	 (24,2),
	 (26,2),
	 (50,2),
	 (14,2),
	 (28,2),
	 (16,2),
	 (20,2),
	 (38,2),
	 (22,2),
	 (30,2),
	 (32,2),
	 (34,2),
	 (42,2),
	 (36,2),
	 (40,2),
	 (46,2),
	 (44,2),
	 (48,2);

INSERT INTO public.orders ("vnpayOrderId", "orderTotalPrice", "isDraft", "purchaseMethod", "userId","addressId", "createdAt", "updatedAt")
VALUES
('2051740', 30000.0, false, 'bank', 1, 1, '2025-12-02 05:17:11.262+07', '2025-12-02 05:17:11.263+07');

------------- COMMENT CHO BẢNG `orders` -------------
COMMENT ON COLUMN orders."isDraft" IS 'true: Nếu đơn hàng nằm trong giỏ hàng | flase: Nếu đơn hàng đã được thanh toán';
COMMENT ON COLUMN orders."vnpayOrderId" IS 'Số hoá đơn VNPAY, luôn luôn là "draft" nếu `isDraft` = true';
COMMENT ON COLUMN orders."orderTotalPrice" IS 'Tổng tiền hoá đơn, luôn luôn là -1 nếu `isDraft` = true';
COMMENT ON COLUMN orders."purchaseMethod" IS 'Luôn luôn là bank nếu đơn hàng đã được thanh toán';
COMMENT ON COLUMN orders."userId" IS 'Người đặt hoá đơn';
COMMENT ON COLUMN orders."addressId" IS 'Địa chỉ giao hàng trong bảng `addresses`, luôn luôn là null nếu `isDraft` = true';
------------- COMMENT CHO BẢNG `orders` -------------

INSERT INTO public."order_items" ("totalPrice", "quantity", "note", "deliveryStatus", "productId","orderId", "createdAt", "updatedAt")
VALUES
(30000.0, 1, '', 'canceled', 11, 1, '2025-12-02 05:17:11.263+07', '2025-12-01 22:18:38.212+07');

------------- COMMENT CHO BẢNG `order_items` -------------
COMMENT ON COLUMN order_items."deliveryStatus" IS 'verifying: Đơn đang chờ xác nhận | preparing: Đơn đang chủ shop chuẩn bị hàng | delivering: Đơn đang giao | delivered: Đã giao tới nơi | canceled: Đơn đã bị huỷ';
COMMENT ON COLUMN order_items."note" IS 'Ghi chú cho đơn. Ví dụ: Bỏ ít gia vị,...';
------------- COMMENT CHO BẢNG `order_items` -------------

INSERT INTO public."orders_toppings" ("orderItemId", "toppingValueId")
VALUES
(1, 1);

-- Create a temporary function to reset sequences
CREATE OR REPLACE FUNCTION reset_all_sequences() RETURNS void AS '
DECLARE
    rec RECORD;
    max_id BIGINT;
BEGIN
    FOR rec IN (
        SELECT
            t.table_name,
            c.column_name,
            pg_get_serial_sequence(t.table_name, c.column_name) AS seq_name
        FROM information_schema.tables t
        JOIN information_schema.columns c ON t.table_name = c.table_name
        WHERE t.table_schema = ''public''
        AND c.table_name IN (
            ''addresses'', ''categories'', ''order_items'', ''orders'', ''orders_toppings'',
            ''product_images'', ''products'', ''products_categories'', ''products_toppings'',
            ''reviews'', ''roles'', ''sessions'', ''store_images'', ''stores'',
            ''topping_values'', ''toppings'', ''users'', ''users_roles''
        )
        AND pg_get_serial_sequence(t.table_name, c.column_name) IS NOT NULL
    ) LOOP
        EXECUTE ''SELECT COALESCE(MAX('' || quote_ident(rec.column_name) || ''), 0) FROM '' || quote_ident(rec.table_name) INTO max_id;

        IF max_id = 0 THEN
            EXECUTE ''SELECT setval('' || quote_literal(rec.seq_name) || '', 1, false)'';
        ELSE
            EXECUTE ''SELECT setval('' || quote_literal(rec.seq_name) || '', '' || max_id || '')'';
        END IF;

        RAISE NOTICE ''Set sequence % to % for table %'', rec.seq_name, max_id, rec.table_name;
    END LOOP;
END;
' LANGUAGE plpgsql;

-- Execute the function
SELECT reset_all_sequences();

SET session_replication_role = 'origin';
