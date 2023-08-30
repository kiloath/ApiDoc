//! crate 文件範例
//! - 詳細說明
#![doc(html_no_source)]

/// 兩數相加
/// - 輸入兩數
/// - 輸出相加結果
pub fn add(left: usize, right: usize) -> usize {
    left + right
}

/// 這裡是測試 module, 不會被輸出
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
