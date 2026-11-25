.class public Lcom/jirbo/adcolony/ai;
.super Lcom/jirbo/adcolony/y;
.source "SourceFile"


# instance fields
.field x:Lcom/jirbo/adcolony/al;

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/jirbo/adcolony/y;-><init>()V

    .line 29
    sput-boolean v1, Lcom/jirbo/adcolony/ba;->s:Z

    .line 30
    invoke-static {}, Lcom/jirbo/adcolony/ba;->e()V

    .line 31
    const-string/jumbo v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ai;->y:Z

    .line 34
    invoke-static {}, Lcom/jirbo/adcolony/bd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->h:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jirbo/adcolony/y;-><init>()V

    .line 39
    const-string/jumbo v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/jirbo/adcolony/ba;->e()V

    .line 42
    iput-object p1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ai;->y:Z

    .line 44
    invoke-static {}, Lcom/jirbo/adcolony/bd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->h:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/cb;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/jirbo/adcolony/cb;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/cb;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/t;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/16 v1, 0xc

    sput v1, Lcom/jirbo/adcolony/ba;->aa:I

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cb;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 140
    const-string/jumbo v1, "interstitial"

    iput-object v1, p0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "fullscreen"

    iput-object v1, p0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ai;->r:Z

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    invoke-interface {v1, p0}, Lcom/jirbo/adcolony/aa;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/y;)V

    .line 152
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    sget-boolean v1, Lcom/jirbo/adcolony/ba;->s:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->C:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 157
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/ba;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/jirbo/adcolony/ba;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->x:Lcom/jirbo/adcolony/al;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ai;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->s:Lcom/jirbo/adcolony/an;

    iput-boolean v3, v1, Lcom/jirbo/adcolony/an;->A:Z

    .line 150
    :goto_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->x:Lcom/jirbo/adcolony/al;

    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->s:Lcom/jirbo/adcolony/an;

    invoke-interface {v1, v3, v2}, Lcom/jirbo/adcolony/al;->b(ZLcom/jirbo/adcolony/an;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->s:Lcom/jirbo/adcolony/an;

    iput-boolean v0, v1, Lcom/jirbo/adcolony/an;->A:Z

    goto :goto_2

    .line 158
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/ba;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    :cond_4
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ai;->r:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/ba;->I:Lcom/jirbo/adcolony/ADCVideo;

    .line 163
    sput-boolean v3, Lcom/jirbo/adcolony/ba;->t:Z

    .line 164
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ai;->y:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/jirbo/adcolony/cx;->d:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 136
    :goto_0
    return-void

    .line 88
    :cond_0
    sput v3, Lcom/jirbo/adcolony/ba;->aa:I

    .line 89
    const-string/jumbo v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ai;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    sget v0, Lcom/jirbo/adcolony/ba;->aa:I

    iput v0, p0, Lcom/jirbo/adcolony/ai;->b:I

    .line 95
    new-instance v0, Lcom/jirbo/adcolony/aj;

    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/ai;Lcom/jirbo/adcolony/cb;)V

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/ai;->a:I

    .line 103
    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/aa;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/y;)V

    .line 104
    :cond_1
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ai;->y:Z

    goto :goto_0

    .line 107
    :cond_2
    sget v0, Lcom/jirbo/adcolony/ba;->aa:I

    iput v0, p0, Lcom/jirbo/adcolony/ai;->b:I

    .line 108
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ai;->y:Z

    .line 109
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->t:Z

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Lcom/jirbo/adcolony/ak;

    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/ak;-><init>(Lcom/jirbo/adcolony/ai;Lcom/jirbo/adcolony/cb;)V

    .line 119
    sput-boolean v3, Lcom/jirbo/adcolony/ba;->t:Z

    .line 120
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ai;->g()Z

    .line 121
    sput-object p0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    .line 123
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/cb;->b(Lcom/jirbo/adcolony/ai;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/aa;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/y;)V

    .line 126
    :cond_3
    sput-boolean v2, Lcom/jirbo/adcolony/ba;->t:Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->t:Lcom/jirbo/adcolony/aa;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/aa;->onAdColonyAdStarted(Lcom/jirbo/adcolony/y;)V

    .line 135
    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/jirbo/adcolony/ai;->a:I

    goto :goto_0
.end method
