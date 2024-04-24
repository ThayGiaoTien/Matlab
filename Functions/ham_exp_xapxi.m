function y = ham_exp_xapxi(x)
% Đây là hàm tính exp của véc-tơ x
% Hàm này tính exp mà không phụ thuộc vào giá trị của các phần tử của
% véc-tơ x.
% Hàm này sẽ trả kết quả đầu ra cho một biến
% Ví dụ: cách sử dụng
% x = [2 3 4 -5]
% y = ham_exp_xapxi(x)


ex_xapxi = zeros(1, length(x));
for i = 1:length(x)

    if x(i) >=0
        for k = 1:50
            ex_xapxi(i) =  ex_xapxi(i) + x(i)^(k-1)/factorial(k-1);
        end
    else

        for k = 1:50
            ex_xapxi(i) =  ex_xapxi(i) + ...
                (-1)^(k-1)*abs(x(i))^(k-1)/factorial(k-1);
        end
    end
end
y = ex_xapxi;
end
