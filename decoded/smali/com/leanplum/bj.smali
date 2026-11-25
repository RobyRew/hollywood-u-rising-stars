.class final Lcom/leanplum/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/leanplum/au;

.field private b:Z

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/leanplum/bj;->d:Z

    .line 34
    iput-boolean v0, p0, Lcom/leanplum/bj;->e:Z

    .line 38
    :try_start_0
    new-instance v0, Lcom/leanplum/au;

    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/leanplum/cu;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/leanplum/cu;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/leanplum/bk;

    invoke-direct {v2, p0}, Lcom/leanplum/bk;-><init>(Lcom/leanplum/bj;)V

    invoke-direct {v0, v1, v2}, Lcom/leanplum/au;-><init>(Ljava/net/URI;Lcom/leanplum/ba;)V

    iput-object v0, p0, Lcom/leanplum/bj;->a:Lcom/leanplum/au;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/leanplum/bj;->a()V

    .line 155
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/leanplum/bj;->c:Ljava/util/Timer;

    .line 156
    iget-object v0, p0, Lcom/leanplum/bj;->c:Ljava/util/Timer;

    new-instance v1, Lcom/leanplum/bo;

    invoke-direct {v1, p0}, Lcom/leanplum/bo;-><init>(Lcom/leanplum/bj;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 166
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/bj;->e:Z

    .line 170
    iget-object v0, p0, Lcom/leanplum/bj;->a:Lcom/leanplum/au;

    .line 1226
    iget-object v1, v0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    if-nez v1, :cond_0

    .line 1228
    new-instance v1, Lcom/leanplum/az;

    invoke-direct {v1, v0}, Lcom/leanplum/az;-><init>(Lcom/leanplum/au;)V

    invoke-virtual {v1}, Lcom/leanplum/az;->start()V

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/leanplum/bj;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/leanplum/bj;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/leanplum/bj;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/leanplum/bj;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/leanplum/bj;)Lcom/leanplum/au;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/leanplum/bj;->a:Lcom/leanplum/au;

    return-object v0
.end method

.method static synthetic b(Lcom/leanplum/bj;Z)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/bj;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/leanplum/bj;)V
    .locals 1

    .prologue
    .line 29
    .line 2174
    iget-boolean v0, p0, Lcom/leanplum/bj;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/leanplum/bj;->e:Z

    if-nez v0, :cond_0

    .line 2175
    invoke-direct {p0}, Lcom/leanplum/bj;->a()V

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/leanplum/bj;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/leanplum/bj;->b:Z

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/bj;->a:Lcom/leanplum/au;

    new-instance v1, Lorg/json/JSONArray;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/leanplum/co;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/leanplum/au;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to create JSON data object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
