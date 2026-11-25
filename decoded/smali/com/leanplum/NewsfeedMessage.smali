.class public Lcom/leanplum/NewsfeedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Z

.field private e:Lcom/leanplum/ActionContext;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/leanplum/NewsfeedMessage;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/leanplum/NewsfeedMessage;->b:Ljava/lang/Long;

    .line 27
    iput-object p3, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    .line 28
    iput-boolean p4, p0, Lcom/leanplum/NewsfeedMessage;->d:Z

    .line 29
    iput-object p5, p0, Lcom/leanplum/NewsfeedMessage;->e:Lcom/leanplum/ActionContext;

    .line 30
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/util/Map;)Lcom/leanplum/NewsfeedMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/NewsfeedMessage;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 1083
    const-string/jumbo v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 34
    :goto_0
    if-nez v0, :cond_1

    .line 35
    const-string/jumbo v0, "Leanplum"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed newsfeed messageId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1083
    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v5, Lcom/leanplum/ActionContext;

    const-string/jumbo v0, "__name__"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {v5, v0, p4, v1}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5}, Lcom/leanplum/ActionContext;->a()V

    .line 43
    invoke-virtual {v5}, Lcom/leanplum/ActionContext;->b()V

    .line 44
    new-instance v0, Lcom/leanplum/NewsfeedMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/leanplum/NewsfeedMessage;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/leanplum/ActionContext;)V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/NewsfeedMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/NewsfeedMessage;"
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "deliveryTimestamp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string/jumbo v1, "expirationTimestamp"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string/jumbo v2, "isRead"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string/jumbo v2, "messageData"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p0, v0, v1, v3, v2}, Lcom/leanplum/NewsfeedMessage;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/util/Map;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string/jumbo v1, "deliveryTimestamp"

    iget-object v2, p0, Lcom/leanplum/NewsfeedMessage;->b:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "expirationTimestamp"

    iget-object v2, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "messageData"

    .line 2066
    iget-object v2, p0, Lcom/leanplum/NewsfeedMessage;->e:Lcom/leanplum/ActionContext;

    invoke-virtual {v2}, Lcom/leanplum/ActionContext;->e()Ljava/util/Map;

    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "isRead"

    invoke-virtual {p0}, Lcom/leanplum/NewsfeedMessage;->isRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method final b()Z
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 79
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0
.end method

.method public deliveryTimestamp()Ljava/util/Date;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/leanplum/NewsfeedMessage;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public expirationTimestamp()Ljava/util/Date;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/leanplum/NewsfeedMessage;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/leanplum/NewsfeedMessage;->d:Z

    return v0
.end method

.method public messageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/leanplum/NewsfeedMessage;->d:Z

    if-nez v0, :cond_1

    .line 2070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/NewsfeedMessage;->d:Z

    .line 143
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/Newsfeed;->unreadCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 144
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leanplum/Newsfeed;->a(I)V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string/jumbo v1, "newsfeedMessageId"

    iget-object v2, p0, Lcom/leanplum/NewsfeedMessage;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v1, "markNewsfeedMessageAsRead"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->e:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Open action"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->runTrackedActionNamed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/NewsfeedMessage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leanplum/Newsfeed;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->e:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Subtitle"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/leanplum/NewsfeedMessage;->e:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Title"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
