.class public abstract Lcom/sponsorpay/c/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/c/o;",
        "Ljava/lang/Void;",
        "TV;>;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "SignedResponseRequester"

    sput-object v0, Lcom/sponsorpay/c/i;->TAG:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "User-Agent"

    sput-object v0, Lcom/sponsorpay/c/i;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "Accept-Language"

    sput-object v0, Lcom/sponsorpay/c/i;->b:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "Android"

    sput-object v0, Lcom/sponsorpay/c/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sponsorpay/c/o;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sponsorpay/c/o;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/c/i;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 56
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->d()Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/sponsorpay/c/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request will be sent to URL + params: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {v0}, Lcom/sponsorpay/c/t;->b(Ljava/lang/String;)Lcom/sponsorpay/c/t;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/c/i;->a:Ljava/lang/String;

    sget-object v2, Lcom/sponsorpay/c/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/a;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/c/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sponsorpay/c/i;->makeAcceptLanguageHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/a;->a()Lcom/sponsorpay/c/a;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/c/t;

    .line 66
    invoke-virtual {v0}, Lcom/sponsorpay/c/t;->b()I

    move-result v2

    .line 67
    invoke-virtual {v0}, Lcom/sponsorpay/c/t;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    const-string/jumbo v3, "X-Sponsorpay-Response-Signature"

    invoke-virtual {v0, v3}, Lcom/sponsorpay/c/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    :goto_0
    sget-object v3, Lcom/sponsorpay/c/i;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "Server Response, status code: %d, response body: %s, signature: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Lcom/sponsorpay/c/aa;

    invoke-direct {v3, v2, v1, v0}, Lcom/sponsorpay/c/aa;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p0, v3}, Lcom/sponsorpay/c/i;->parseSignedResponse(Lcom/sponsorpay/c/aa;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 69
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/sponsorpay/c/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception triggered when executing request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/sponsorpay/c/i;->noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Lcom/sponsorpay/c/o;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/c/i;->doInBackground([Lcom/sponsorpay/c/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected hasErrorStatusCode(I)Z
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12b

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeAcceptLanguageHeaderValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 125
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", %s;q=0.8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TV;"
        }
    .end annotation
.end method

.method protected abstract parseSignedResponse(Lcom/sponsorpay/c/aa;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/c/aa;",
            ")TV;"
        }
    .end annotation
.end method

.method protected verifySignature(Lcom/sponsorpay/c/aa;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sponsorpay/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
