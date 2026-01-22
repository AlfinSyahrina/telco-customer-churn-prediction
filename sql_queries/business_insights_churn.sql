-- ==========================================================
-- ANALISIS RISIKO CHURN (PREDICTIVE INSIGHTS)
-- ==========================================================

-- 1. Identifikasi Pelanggan Berisiko Tinggi (Prioritas Utama)
-- Menampilkan daftar pelanggan dengan peluang churn > 70% untuk tim Customer Service.
SELECT 
    "customerID", 
    "tenure", 
    "Contract", 
    "TotalCharges", 
    ROUND(CAST("Churn_Probability" AS NUMERIC), 2) as Risk_Score
FROM churn_predictions_results
WHERE "Churn_Probability" > 0.7
ORDER BY "Churn_Probability" DESC
LIMIT 10;

-- 2. Ringkasan Risiko berdasarkan Jenis Kontrak
-- Melihat kontrak mana yang paling rapuh dan menyumbang probabilitas churn tertinggi.
SELECT 
    "Contract", 
    COUNT(*) as Total_Customers,
    ROUND(AVG(CAST("Churn_Probability" AS NUMERIC)), 2) as Avg_Risk_Score
FROM churn_predictions_results
GROUP BY "Contract"
ORDER BY Avg_Risk_Score DESC;

-- 3. Analisis Metode Pembayaran terhadap Kehilangan Pelanggan
-- Memeriksa apakah ada kendala pada metode pembayaran tertentu (misal: Electronic Check).
SELECT 
    "PaymentMethod", 
    COUNT(*) as Total_Churn_Predicted
FROM churn_predictions_results
WHERE "Churn_Prediction" = 1
GROUP BY "PaymentMethod"
ORDER BY Total_Churn_Predicted DESC;