.class final Lcom/leanplum/cx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/leanplum/cx;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/leanplum/cx;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/cx;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/leanplum/cx;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/leanplum/g;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/leanplum/cx;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
