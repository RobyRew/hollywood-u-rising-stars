.class public Lcom/helpshift/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/ew;->a:J

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/ew;->b:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/ew;->d:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/helpshift/ew;->a:J

    .line 20
    iput-object p3, p0, Lcom/helpshift/ew;->b:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/helpshift/ew;->d:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/ew;->a:J

    .line 35
    iput-object p1, p0, Lcom/helpshift/ew;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/helpshift/ew;->d:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/helpshift/ew;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/helpshift/ew;->a:J

    .line 56
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/helpshift/ew;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 64
    check-cast p1, Lcom/helpshift/ew;

    .line 66
    iget-wide v0, p0, Lcom/helpshift/ew;->a:J

    iget-wide v2, p1, Lcom/helpshift/ew;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/ew;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/ew;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/ew;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/ew;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/ew;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/ew;->c:Ljava/lang/String;

    return-object v0
.end method
