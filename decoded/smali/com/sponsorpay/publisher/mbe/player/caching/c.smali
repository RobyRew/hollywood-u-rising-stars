.class public Lcom/sponsorpay/publisher/mbe/player/caching/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/q;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->d:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->f:I

    .line 31
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a:Ljava/io/File;

    .line 32
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c:I

    .line 34
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->g()V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a:Ljava/io/File;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iput p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c:I

    .line 51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->f:I

    .line 54
    :cond_0
    return-void
.end method

.method public a(Lcom/sponsorpay/publisher/mbe/player/caching/q;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->g()V

    .line 71
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->f:I

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->f:I

    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 93
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->d:Ljava/util/Set;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->e:J

    .line 80
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->e:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
