.class public Lcom/leanplum/LeanplumInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/leanplum/LeanplumResources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/leanplum/LeanplumInflater;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/leanplum/LeanplumInflater;

    invoke-direct {v0, p0}, Lcom/leanplum/LeanplumInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getLeanplumResources()Lcom/leanplum/LeanplumResources;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leanplum/LeanplumInflater;->getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;

    move-result-object v0

    return-object v0
.end method

.method public getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->b:Lcom/leanplum/LeanplumResources;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->b:Lcom/leanplum/LeanplumResources;

    .line 48
    :goto_0
    return-object v0

    .line 41
    :cond_0
    if-nez p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    :goto_1
    instance-of v1, v0, Lcom/leanplum/LeanplumResources;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/leanplum/LeanplumResources;

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lcom/leanplum/LeanplumResources;

    invoke-direct {v1, v0}, Lcom/leanplum/LeanplumResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/leanplum/LeanplumInflater;->b:Lcom/leanplum/LeanplumResources;

    .line 48
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->b:Lcom/leanplum/LeanplumResources;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public inflate(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/leanplum/LeanplumInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/leanplum/LeanplumInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leanplum/LeanplumInflater;->getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/leanplum/LeanplumResources;->a(I)Lcom/leanplum/Var;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/leanplum/Var;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/leanplum/Var;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v2}, Lcom/leanplum/Var;->overrideResId()I

    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    iget-object v1, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    instance-of v1, v0, Landroid/view/InflateException;

    if-nez v1, :cond_2

    .line 82
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    invoke-virtual {v2}, Lcom/leanplum/Var;->stream()Ljava/io/InputStream;

    move-result-object v1

    .line 90
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 92
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_4

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    const-string/jumbo v1, "Leanplum"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not inflate resource "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/leanplum/Var;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v0, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 96
    const-string/jumbo v1, "android.content.res.XmlBlock"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    .line 100
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "newParser"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :try_start_4
    iget-object v1, p0, Lcom/leanplum/LeanplumInflater;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 106
    if-eqz v0, :cond_5

    .line 107
    :try_start_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    .line 103
    :catch_2
    move-exception v0

    .line 104
    :goto_2
    :try_start_6
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    .line 107
    :try_start_7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 106
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 103
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method
