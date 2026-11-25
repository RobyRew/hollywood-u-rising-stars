.class public Lcom/helpshift/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/bl;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "__hs__qid"

    aput-object v1, v0, v4

    const-string/jumbo v1, "__hs__publish_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "__hs__section_id"

    aput-object v1, v0, v6

    const-string/jumbo v1, "__hs__title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "__hs__body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "__hs__is_helpful"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "__hs__is_rtl"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/helpshift/bk;->b:[Ljava/lang/String;

    .line 31
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "__hs__qid"

    aput-object v1, v0, v3

    const-string/jumbo v1, "__hs__publish_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "__hs__section_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "__hs__title"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/helpshift/bk;->c:[Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/helpshift/bl;

    invoke-direct {v0, p1}, Lcom/helpshift/bl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/bk;->a:Lcom/helpshift/bl;

    .line 38
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/helpshift/l;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 225
    new-instance v1, Lcom/helpshift/l;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/helpshift/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 234
    return-object v1

    :cond_0
    move v0, v10

    .line 225
    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lcom/helpshift/l;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 238
    new-instance v1, Lcom/helpshift/l;

    const-wide/16 v2, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/helpshift/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 247
    return-object v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 203
    monitor-enter v2

    .line 204
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    monitor-exit v2

    .line 220
    :goto_0
    return v0

    .line 208
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 209
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 210
    :goto_1
    const-string/jumbo v1, "__hs__is_helpful"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string/jumbo v0, "__hs__faqs"

    const-string/jumbo v1, "__hs__qid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 220
    monitor-exit v2

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected a(Lcom/helpshift/l;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 51
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    const-string/jumbo v8, ""

    .line 54
    const-string/jumbo v1, "__hs__faqs"

    iget-object v2, p0, Lcom/helpshift/bk;->b:[Ljava/lang/String;

    const-string/jumbo v3, "__hs__qid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/helpshift/l;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 62
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/helpshift/l;->a()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 68
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 70
    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 71
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_0
    move-object v1, v8

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    monitor-enter v0

    .line 104
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 108
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const-string/jumbo v1, "__hs__faqs"

    iget-object v2, p0, Lcom/helpshift/bk;->b:[Ljava/lang/String;

    const-string/jumbo v3, "__hs__section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 121
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-direct {p0, v2}, Lcom/helpshift/bk;->a(Landroid/database/Cursor;)Lcom/helpshift/l;

    move-result-object v1

    .line 124
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 132
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 129
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 131
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v8

    goto :goto_0
.end method

.method protected b(Lcom/helpshift/l;)Lcom/helpshift/l;
    .locals 7

    .prologue
    .line 75
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 76
    monitor-enter v2

    .line 77
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string/jumbo v1, "__hs__title"

    invoke-virtual {p1}, Lcom/helpshift/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "__hs__publish_id"

    invoke-virtual {p1}, Lcom/helpshift/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "__hs__section_id"

    invoke-virtual {p1}, Lcom/helpshift/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "__hs__body"

    invoke-virtual {p1}, Lcom/helpshift/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "__hs__is_helpful"

    invoke-virtual {p1}, Lcom/helpshift/l;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string/jumbo v1, "__hs__is_rtl"

    invoke-virtual {p1}, Lcom/helpshift/l;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/helpshift/bk;->a(Lcom/helpshift/l;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const-string/jumbo v1, "__hs__qid"

    invoke-virtual {p1}, Lcom/helpshift/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "__hs__faqs"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 96
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/helpshift/l;->a(J)V

    .line 97
    monitor-exit v2

    return-object p1

    .line 91
    :cond_0
    const-string/jumbo v3, "__hs__faqs"

    const-string/jumbo v4, "__hs__qid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    monitor-enter v0

    .line 138
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    .line 142
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    const-string/jumbo v1, "__hs__faqs"

    iget-object v2, p0, Lcom/helpshift/bk;->c:[Ljava/lang/String;

    const-string/jumbo v3, "__hs__section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 155
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    invoke-direct {p0, v2}, Lcom/helpshift/bk;->b(Landroid/database/Cursor;)Lcom/helpshift/l;

    move-result-object v1

    .line 158
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 166
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 163
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v8

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Lcom/helpshift/l;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 170
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    monitor-enter v0

    .line 172
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    new-instance v1, Lcom/helpshift/l;

    invoke-direct {v1}, Lcom/helpshift/l;-><init>()V

    monitor-exit v0

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const-string/jumbo v1, "__hs__faqs"

    iget-object v2, p0, Lcom/helpshift/bk;->b:[Ljava/lang/String;

    const-string/jumbo v3, "__hs__publish_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 189
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-direct {p0, v2}, Lcom/helpshift/bk;->a(Landroid/database/Cursor;)Lcom/helpshift/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 194
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 196
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 197
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    move-object v1, v8

    goto :goto_1
.end method
