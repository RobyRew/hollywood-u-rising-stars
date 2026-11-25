.class Lcom/jirbo/adcolony/di;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Lcom/jirbo/adcolony/de;

.field c:I

.field d:Ljava/lang/String;

.field e:Z

.field f:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1333
    if-nez p1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v0

    .line 1335
    :cond_1
    const-string/jumbo v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/di;->a:Z

    .line 1336
    iget-boolean v2, p0, Lcom/jirbo/adcolony/di;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1338
    :cond_2
    new-instance v2, Lcom/jirbo/adcolony/de;

    invoke-direct {v2}, Lcom/jirbo/adcolony/de;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/di;->b:Lcom/jirbo/adcolony/de;

    .line 1339
    iget-object v2, p0, Lcom/jirbo/adcolony/di;->b:Lcom/jirbo/adcolony/de;

    const-string/jumbo v3, "limits"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/de;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1341
    const-string/jumbo v0, "reward_amount"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/di;->c:I

    .line 1342
    const-string/jumbo v0, "reward_name"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/di;->d:Ljava/lang/String;

    .line 1343
    const-string/jumbo v0, "client_side"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/di;->e:Z

    .line 1344
    const-string/jumbo v0, "videos_per_reward"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/di;->f:I

    move v0, v1

    .line 1346
    goto :goto_0
.end method
