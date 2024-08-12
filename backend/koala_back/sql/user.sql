use koala;
-- 권한 설정
insert into auth(auth_id, auth_name)
    value('0', 'admin'),
('1', 'user'),
('2', 'teacher');

-- 유저 설정
INSERT INTO users (user_id, login_id, password, auth_id, name, nickname) VALUES
 ('1292', 'uuas5866', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '고동연', '관리자란희'),
 ('1293', 'ssyoung102', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '윤서영', '관리자서영'),
 ('1294', 'wewqwew153', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '대주형', '관리자주형'),
 ('1295', 'tjdgus2308', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '김성현', '관리자성현x3'),
 ('1296', 'one_pst', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '박수진', '관리자박박'),
 ('1297', 'kyg0954', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '0', '김유갱', '관리자유갱'),
 ('1298', 'user1', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'John Doe', '존도'),
 ('1299', 'user2', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Jane Smith', '열정소녀'),
 ('1300', 'user3', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Alice Johnson', '커피중독자'),
 ('1301', 'user4', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Bob Brown', '브라운곰'),
 ('1302', 'user5', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Charlie Davis', '햄버거광'),
 ('1303', 'user6', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Diana Evans', '고양이집사'),
 ('1304', 'user7', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Frank Green', '프랭크왕자'),
 ('1305', 'user8', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Grace Hill', '반짝반짝'),
 ('1306', 'user9', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Henry Scott', '헨리호'),
 ('1307', 'user10', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', 'Ivy Taylor', '하이브이비'),
 ('1308', 'user11', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '김철수', '대한민국철수'),
 ('1309', 'user12', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '이영희', '영희는귀여워'),
 ('1310', 'user13', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '박민수', '민수짱'),
 ('1311', 'user14', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '최수정', '수정크리스탈'),
 ('1312', 'user15', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '정호석', '호석파워'),
 ('1313', 'user16', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '한예은', '예쁜예은'),
 ('1314', 'user17', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '신동엽', '동엽이형'),
 ('1315', 'user18', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '고혜민', '미녀혜민'),
 ('1316', 'user19', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '문지호', '지호의모험'),
 ('1317', 'user20', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '오서준', '서준이도전'),
 ('1318', 'user21', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '에밀리 해일럿', '에밀리햇'),
 ('1319', 'user22', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '제이콥 리차드슨', '제이콥'),
 ('1320', 'user23', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '올리비아 윌슨', '올리비아'),
 ('1321', 'user24', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '루카스 브라운', '루카스'),
 ('1322', 'user25', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '이사벨라 테일러', '벨라'),
 ('1323', 'user26', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '헨리 존슨', '헨리'),
 ('1324', 'user27', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '샬롯 데이비스', '샬롯'),
 ('1325', 'user28', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '메이슨 가르시아', '메이슨'),
 ('1326', 'user29', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '소피아 로드리게즈', '소피'),
 ('1327', 'user30', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '1', '제임스 마르티네즈', '제임스');


-- 선생님
INSERT INTO users (user_id, login_id, password, auth_id, name, nickname) VALUES
 ('1328', 'teacher1', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '2', '김지희', '김지희선생님'),
 ('1329', 'teacher2', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '2', '최미주', '최미주선생님'),
 ('1330', 'teacher3', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '2', '조수빈', '조수빈선생님'),
 ('1331', 'teacher4', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '2', '남지현', '남지현선생님'),
 ('1332', 'teacher5', '{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS', '2', '정지훈', '정지훈선생님');


-- 유저 공부 시간
INSERT INTO time_tracking (time_cal_type, user_id) VALUES
(0, '1292'), (1, '1292'), (2, '1292'),
(0, '1293'), (1, '1293'), (2, '1293'),
(0, '1294'), (1, '1294'), (2, '1294'),
(0, '1295'), (1, '1295'), (2, '1295'),
(0, '1296'), (1, '1296'), (2, '1296'),
(0, '1297'), (1, '1297'), (2, '1297'),
(0, '1298'), (1, '1298'), (2, '1298'),
(0, '1299'), (1, '1299'), (2, '1299'),
(0, '1300'), (1, '1300'), (2, '1300'),
(0, '1301'), (1, '1301'), (2, '1301'),
(0, '1302'), (1, '1302'), (2, '1302'),
(0, '1303'), (1, '1303'), (2, '1303'),
(0, '1304'), (1, '1304'), (2, '1304'),
(0, '1305'), (1, '1305'), (2, '1305'),
(0, '1306'), (1, '1306'), (2, '1306'),
(0, '1307'), (1, '1307'), (2, '1307'),
(0, '1308'), (1, '1308'), (2, '1308'),
(0, '1309'), (1, '1309'), (2, '1309'),
(0, '1310'), (1, '1310'), (2, '1310'),
(0, '1311'), (1, '1311'), (2, '1311'),
(0, '1312'), (1, '1312'), (2, '1312'),
(0, '1313'), (1, '1313'), (2, '1313'),
(0, '1314'), (1, '1314'), (2, '1314'),
(0, '1315'), (1, '1315'), (2, '1315'),
(0, '1316'), (1, '1316'), (2, '1316'),
(0, '1317'), (1, '1317'), (2, '1317'),
(0, '1318'), (1, '1318'), (2, '1318'),
(0, '1319'), (1, '1319'), (2, '1319'),
(0, '1320'), (1, '1320'), (2, '1320'),
(0, '1321'), (1, '1321'), (2, '1321'),
(0, '1322'), (1, '1322'), (2, '1322'),
(0, '1323'), (1, '1323'), (2, '1323'),
(0, '1324'), (1, '1324'), (2, '1324'),
(0, '1325'), (1, '1325'), (2, '1325'),
(0, '1326'), (1, '1326'), (2, '1326'),
(0, '1327'), (1, '1327'), (2, '1327'),
(0, '1328'), (1, '1328'), (2, '1328'),
(0, '1329'), (1, '1329'), (2, '1329'),
(0, '1330'), (1, '1330'), (2, '1330'),
(0, '1331'), (1, '1331'), (2, '1331'),
(0, '1332'), (1, '1332'), (2, '1332');

-- 코알라 만들기
INSERT INTO koala (user_id) VALUES
('1292'),
('1293'),
('1294'),
('1295'),
('1296'),
('1297'),
('1298'),
('1299'),
('1300'),
('1301'),
('1302'),
('1303'),
('1304'),
('1305'),
('1306'),
('1307'),
('1308'),
('1309'),
('1310'),
('1311'),
('1312'),
('1313'),
('1314'),
('1315'),
('1316'),
('1317'),
('1318'),
('1319'),
('1320'),
('1321'),
('1322'),
('1323'),
('1324'),
('1325'),
('1326'),
('1327'),
('1328'),
('1329'),
('1330'),
('1331'),
('1332');

-- 지금까지 넣은 사람들로 rank 테이블 구성
SET SQL_SAFE_UPDATES = 0;
DELETE from ranking;
INSERT INTO ranking (user_id, ranking)
SELECT user_id,
       RANK() OVER (ORDER BY user_level DESC, user_exp DESC) AS ranking
FROM users;
SET SQL_SAFE_UPDATES = 1;

