-- Cards table cleaned.

CREATE TABLE cards_clean AS
SELECT 
	user_id,
    card_index,
    card_brand,
    card_type,
    card_number,
    expires,
    cvv,
    has_chip,
    cards_issued,
    CAST(REPLACE(credit_limit,"$","") AS DOUBLE) AS credit_limit,
    Acct_open_date,
    Year_pin_last_changed,
    Card_on_dark_web
FROM cards;

-- Transactions table cleaned
CREATE TABLE trans_clean AS
SELECT 
	id,
    user_id,
    card_id,
    year,
    month,
    time,
    CAST(REPLACE(amount,"$","") AS DOUBLE) AS amount,
    use_chip,
    merchant_name,
    merchant_city,
    merchant_state,
    zip,
    mcc,
    errors,
    is_fraud
FROM transactions;

-- Users table cleaned

CREATE TABLE users_clean AS
SELECT 
	user_id,
    person,
    current_age,
    retirement_age,
    birth_year,
    gender,
    address,
    Apartment,
    city,
    state,
    zipcode,
    latitude,
    longitude,
    CAST(REPLACE(Per_capita_income_zipcode,"$","") AS DOUBLE) AS per_capita_income_zip,
    CAST(REPLACE(Yearly_income_person, "$","") AS DOUBLE) AS yearly_income,
    CAST(REPLACE(total_debt, "$", "") AS DOUBLE) AS total_debt,
    fico_score,
    Num_credit_cards
FROM users;
