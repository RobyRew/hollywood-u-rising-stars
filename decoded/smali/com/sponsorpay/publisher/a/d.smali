.class public Lcom/sponsorpay/publisher/a/d;
.super Lcom/sponsorpay/c/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/c/i",
        "<",
        "Lcom/sponsorpay/publisher/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/sponsorpay/publisher/a/f;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "SPCurrencyServerRequester"

    sput-object v0, Lcom/sponsorpay/publisher/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sponsorpay/publisher/a/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sponsorpay/c/i;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/sponsorpay/publisher/a/d;->b:Lcom/sponsorpay/publisher/a/f;

    .line 114
    iput-object p2, p0, Lcom/sponsorpay/publisher/a/d;->c:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/e;
    .locals 4

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :try_start_1
    const-string/jumbo v1, "message"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    sget-object v1, Lcom/sponsorpay/publisher/a/c;->d:Lcom/sponsorpay/publisher/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_0
    new-instance v3, Lcom/sponsorpay/publisher/a/a;

    invoke-direct {v3, v1, v0, v2}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 153
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 154
    :goto_1
    sget-object v1, Lcom/sponsorpay/publisher/a/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "An exception was triggered while parsing error response"

    invoke-static {v1, v3, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    sget-object v1, Lcom/sponsorpay/publisher/a/c;->e:Lcom/sponsorpay/publisher/a/c;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_1
.end method

.method public static a(Lcom/sponsorpay/publisher/a/f;Lcom/sponsorpay/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/publisher/a/f;",
            "Lcom/sponsorpay/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .line 1078
    invoke-static {p2}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    const-string/jumbo p2, "ltid"

    .line 1081
    :cond_0
    const-string/jumbo v0, "vcs"

    invoke-static {v0}, Lcom/sponsorpay/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v0, p1}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)Lcom/sponsorpay/c/o;

    move-result-object v0

    const-string/jumbo v1, "ltid"

    invoke-virtual {v0, v1, p2}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sponsorpay/c/o;->b(Ljava/util/Map;)Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->a()Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->b()Lcom/sponsorpay/c/o;

    move-result-object v0

    .line 1088
    invoke-static {p3}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    const-string/jumbo v1, "currency_id"

    invoke-virtual {v0, v1, p3}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/o;

    .line 1092
    :cond_1
    new-instance v1, Lcom/sponsorpay/publisher/a/d;

    invoke-virtual {p1}, Lcom/sponsorpay/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sponsorpay/publisher/a/d;-><init>(Lcom/sponsorpay/publisher/a/f;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sponsorpay/c/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/publisher/a/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/e;
    .locals 8

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "delta_of_coins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 166
    const-string/jumbo v1, "latest_transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    const-string/jumbo v1, "currency_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    const-string/jumbo v1, "currency_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string/jumbo v1, "is_default"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 171
    new-instance v1, Lcom/sponsorpay/publisher/a/g;

    invoke-direct/range {v1 .. v7}, Lcom/sponsorpay/publisher/a/g;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    sget-object v2, Lcom/sponsorpay/publisher/a/c;->b:Lcom/sponsorpay/publisher/a/c;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/sponsorpay/publisher/a/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/sponsorpay/c/aa;)Lcom/sponsorpay/publisher/a/e;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 200
    if-eqz p1, :cond_3

    .line 201
    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->c()Ljava/lang/String;

    move-result-object v3

    .line 1125
    new-instance v4, Lcom/sponsorpay/c/aa;

    invoke-direct {v4, v0, v2, v3}, Lcom/sponsorpay/c/aa;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/a/d;->hasErrorStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    invoke-static {v2}, Lcom/sponsorpay/publisher/a/d;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/e;

    move-result-object v0

    .line 205
    :goto_0
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/sponsorpay/publisher/a/a;

    sget-object v1, Lcom/sponsorpay/publisher/a/c;->e:Lcom/sponsorpay/publisher/a/c;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Unknown error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-object v0

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/sponsorpay/publisher/a/d;->verifySignature(Lcom/sponsorpay/c/aa;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1130
    new-instance v0, Lcom/sponsorpay/publisher/a/a;

    sget-object v2, Lcom/sponsorpay/publisher/a/c;->c:Lcom/sponsorpay/publisher/a/c;

    const-string/jumbo v3, "The signature received in the request did not match the expected one"

    invoke-direct {v0, v2, v1, v3}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    :cond_2
    invoke-static {v2}, Lcom/sponsorpay/publisher/a/d;->b(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/e;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/a/e;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Lcom/sponsorpay/publisher/a/a;

    sget-object v1, Lcom/sponsorpay/publisher/a/c;->a:Lcom/sponsorpay/publisher/a/c;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lcom/sponsorpay/publisher/a/e;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/d;->b:Lcom/sponsorpay/publisher/a/f;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/a/f;->a(Lcom/sponsorpay/publisher/a/e;)V

    .line 188
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/sponsorpay/publisher/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/a/d;->a(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/sponsorpay/publisher/a/e;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/a/d;->a(Lcom/sponsorpay/publisher/a/e;)V

    return-void
.end method

.method protected synthetic parseSignedResponse(Lcom/sponsorpay/c/aa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/a/d;->a(Lcom/sponsorpay/c/aa;)Lcom/sponsorpay/publisher/a/e;

    move-result-object v0

    return-object v0
.end method
