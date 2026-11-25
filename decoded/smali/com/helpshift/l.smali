.class final Lcom/helpshift/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/l;->d:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/l;->e:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/l;->g:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/l;->f:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/helpshift/l;->h:I

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/l;->i:Ljava/lang/Boolean;

    .line 25
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/helpshift/l;->a:J

    .line 44
    iput-object p3, p0, Lcom/helpshift/l;->b:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/helpshift/l;->d:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "faq"

    iput-object v0, p0, Lcom/helpshift/l;->e:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/helpshift/l;->f:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/helpshift/l;->g:Ljava/lang/String;

    .line 50
    iput p8, p0, Lcom/helpshift/l;->h:I

    .line 51
    iput-object p9, p0, Lcom/helpshift/l;->i:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/helpshift/l;->d:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/helpshift/l;->e:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/helpshift/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/helpshift/l;->a:J

    .line 92
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helpshift/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helpshift/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helpshift/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 96
    check-cast p1, Lcom/helpshift/l;

    .line 98
    iget-wide v0, p0, Lcom/helpshift/l;->a:J

    iget-wide v2, p1, Lcom/helpshift/l;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpshift/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/l;->i:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/helpshift/l;->i:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpshift/l;->h:I

    iget v1, p0, Lcom/helpshift/l;->h:I

    if-eq v0, v1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helpshift/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/helpshift/l;->h:I

    return v0
.end method

.method protected h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/helpshift/l;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/helpshift/l;->c:Ljava/lang/String;

    return-object v0
.end method
