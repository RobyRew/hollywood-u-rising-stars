.class public final Lcom/sponsorpay/c/u;
.super Lcom/sponsorpay/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/c/a",
        "<",
        "Lcom/sponsorpay/c/v;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/io/File;

.field private j:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/sponsorpay/c/a;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean v0, p0, Lcom/sponsorpay/c/u;->j:Z

    .line 25
    if-nez p2, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The localFile parameter is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/sponsorpay/c/u;->i:Ljava/io/File;

    .line 30
    iput-boolean v0, p0, Lcom/sponsorpay/c/u;->f:Z

    .line 31
    iput-boolean v0, p0, Lcom/sponsorpay/c/u;->g:Z

    .line 32
    iput-boolean v0, p0, Lcom/sponsorpay/c/u;->h:Z

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Lcom/sponsorpay/c/u;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/sponsorpay/c/u;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/c/u;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/c/u;)Ljava/io/File;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sponsorpay/c/u;->i:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/sponsorpay/c/u;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/sponsorpay/c/u;->j:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/sponsorpay/c/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sponsorpay/c/a",
            "<",
            "Lcom/sponsorpay/c/v;",
            ">;>()TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sponsorpay/c/u;->j:Z

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sponsorpay/c/u;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/c/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/a;

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/sponsorpay/c/a;->a()Lcom/sponsorpay/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/sponsorpay/c/u;
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sponsorpay/c/u;->j:Z

    .line 46
    return-object p0
.end method

.method protected final synthetic a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 1041
    new-instance v0, Lcom/sponsorpay/c/v;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/c/v;-><init>(Lcom/sponsorpay/c/u;Ljava/net/HttpURLConnection;)V

    .line 17
    return-object v0
.end method

.method protected final c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sponsorpay/c/u;->c:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
