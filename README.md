📱 Telco Customer Churn Prediction & Retention Dashboard
Project Overview
Proyek ini merupakan solusi analisis prediktif end-to-end yang bertujuan untuk menekan angka kehilangan pelanggan (customer churn) pada perusahaan telekomunikasi. Dengan menggunakan teknik Machine Learning, proyek ini mampu mengidentifikasi pelanggan yang berpotensi berhenti berlangganan sebelum hal itu terjadi, sehingga tim operasional dapat melakukan tindakan pencegahan yang tepat sasaran.

🚀 Key Features & Workflow
1. Data Pipeline & Machine Learning (Python)
Exploratory Data Analysis (EDA): Mengidentifikasi korelasi antara jenis kontrak, metode pembayaran, dan biaya bulanan terhadap status churn.

Data Preprocessing: Melakukan pembersihan data, penanganan missing values pada TotalCharges, dan encoding variabel kategorikal.

Predictive Modeling: Mengembangkan model Random Forest Classifier dengan tingkat akurasi ~80% untuk memprediksi probabilitas churn setiap pelanggan secara individu.

2. Database Integration (PostgreSQL)
Mengintegrasikan hasil prediksi Machine Learning (skor probabilitas) kembali ke database PostgreSQL.

Membuat skema data yang tervalidasi sebagai Single Source of Truth untuk kebutuhan pelaporan bisnis.

3. Business Intelligence Dashboard (Power BI)
Dashboard dirancang untuk bersifat Action-Oriented (berorientasi pada tindakan) dengan fitur utama:

Churn Risk Monitor: Menampilkan daftar prioritas pelanggan "Hampir Kabur" berdasarkan skor risiko tertinggi.

AI-Powered Insights: Menggunakan visual Key Influencers untuk menemukan secara otomatis bahwa pelanggan dengan kontrak Month-to-Month memiliki risiko churn 3.5x lebih tinggi.

Operational Action Table: Tabel dinamis yang memungkinkan tim Customer Service langsung melihat data teknis pelanggan (Tenure, Contract, Charges) untuk strategi retensi.

🛠️ Tech Stack
Language: Python (Pandas, Scikit-Learn, SQLAlchemy).

Database: PostgreSQL (pg8000).

Tool: Power BI Desktop.

📊 Business Impact
Melalui dashboard ini, perusahaan dapat:

Mengurangi pemborosan biaya pemasaran dengan hanya memberikan promo kepada pelanggan yang benar-benar berisiko tinggi.

Memperbaiki strategi produk pada segmen layanan internet atau metode pembayaran yang memiliki tingkat kegagalan retensi tertinggi.