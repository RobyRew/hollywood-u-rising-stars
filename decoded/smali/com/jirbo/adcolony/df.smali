.class Lcom/jirbo/adcolony/df;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:Lcom/jirbo/adcolony/dp;

.field m:Lcom/jirbo/adcolony/dp;

.field n:Lcom/jirbo/adcolony/dp;

.field o:Lcom/jirbo/adcolony/dt;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 1998
    iget-boolean v2, p0, Lcom/jirbo/adcolony/df;->a:Z

    if-nez v2, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return v0

    .line 2001
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v3, p0, Lcom/jirbo/adcolony/df;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2004
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2009
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/dt;->a()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 2011
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 2014
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v1, v1, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    const-string/jumbo v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2016
    sput v4, Lcom/jirbo/adcolony/ba;->aa:I

    .line 2017
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Video not ready due to VIEW_FILTER_ONLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2019
    :cond_7
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v1, v1, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/jirbo/adcolony/en;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2021
    sput v4, Lcom/jirbo/adcolony/ba;->aa:I

    .line 2022
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Video not ready due to VIEW_FILTER_WIFI"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2024
    :cond_8
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v1, v1, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    const-string/jumbo v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/jirbo/adcolony/en;->b()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2026
    sput v4, Lcom/jirbo/adcolony/ba;->aa:I

    .line 2027
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Video not ready due to VIEW_FILTER_CELL"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 2029
    :cond_9
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v1, v1, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    const-string/jumbo v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2031
    sput v4, Lcom/jirbo/adcolony/ba;->aa:I

    .line 2032
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Video not ready due to VIEW_FILTER_OFFLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2044
    if-nez p1, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return v0

    .line 2046
    :cond_1
    const-string/jumbo v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/df;->a:Z

    .line 2047
    iget-boolean v2, p0, Lcom/jirbo/adcolony/df;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2049
    :cond_2
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/df;->b:I

    .line 2050
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/df;->c:I

    .line 2051
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->d:Ljava/lang/String;

    .line 2052
    const-string/jumbo v2, "last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->e:Ljava/lang/String;

    .line 2053
    const-string/jumbo v2, "video_frame_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->f:Ljava/lang/String;

    .line 2054
    const-string/jumbo v2, "audio_channels"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->g:Ljava/lang/String;

    .line 2055
    const-string/jumbo v2, "audio_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->h:Ljava/lang/String;

    .line 2056
    const-string/jumbo v2, "audio_sample_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->i:Ljava/lang/String;

    .line 2057
    const-string/jumbo v2, "video_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->j:Ljava/lang/String;

    .line 2058
    const-string/jumbo v2, "duration"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/df;->k:D

    .line 2061
    new-instance v2, Lcom/jirbo/adcolony/dp;

    invoke-direct {v2}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    .line 2062
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v3, "skip_video"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2065
    new-instance v2, Lcom/jirbo/adcolony/dp;

    invoke-direct {v2}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    .line 2066
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    new-instance v2, Lcom/jirbo/adcolony/dt;

    invoke-direct {v2}, Lcom/jirbo/adcolony/dt;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    .line 2069
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    const-string/jumbo v3, "haptic"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/dt;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2071
    new-instance v2, Lcom/jirbo/adcolony/dp;

    invoke-direct {v2}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    .line 2072
    iget-object v2, p0, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    const-string/jumbo v4, "image_overlay"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2074
    goto/16 :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2039
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/df;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2079
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/df;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/df;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-object v0, p0, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    .line 2081
    iget-object v0, p0, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    .line 2082
    iget-object v0, p0, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dt;->b()V

    .line 2083
    iget-object v0, p0, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    .line 2084
    return-void
.end method
