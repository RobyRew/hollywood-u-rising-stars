.class public final Lcom/sponsorpay/c/t;
.super Lcom/sponsorpay/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/c/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sponsorpay/c/a;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/sponsorpay/c/t;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/sponsorpay/c/t;

    invoke-direct {v0, p0}, Lcom/sponsorpay/c/t;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 15
    .line 1031
    invoke-virtual {p0, p1}, Lcom/sponsorpay/c/t;->c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 1033
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1034
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1035
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 1036
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1040
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 15
    return-object v0
.end method
