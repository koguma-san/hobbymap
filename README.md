## users_テーブル

| Column   | Type    | Options                   |
| -------- | ------  | ------------------------- |
| name     | string  | null: false               |
| email    | string  | null: false, unique: true |
| password | string  | null: false               |

### Association

- belongs_to :target
- has_many   :records
- has_many   :rounds


## targets_テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| target_score | integer    | null: false                    |
| deadline     | date       | null: false                    |

### Association

- belongs_to :user


## rounds_テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| course     | string     | null: false                    |
| round_memo | text       |                                |
| round_date | date       | null: false                    |

### Association

- belongs_to :user
- has_one :score


## records_テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| record_date | date       | null: false                    |
| title       | string     | null: false                    |
| record_memo | text       | null: false                    |

### Association

- belongs_to :user


## scores_テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| hole_number | integer    | null: false                    |

### Association

- belongs_to :round