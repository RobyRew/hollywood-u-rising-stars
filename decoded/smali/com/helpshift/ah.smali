.class final Lcom/helpshift/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z

.field private static b:Lcom/helpshift/al;

.field private static c:I

.field private static d:I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/ah;->b:Lcom/helpshift/al;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/helpshift/ah;->b:Lcom/helpshift/al;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/ah;->b:Lcom/helpshift/al;

    .line 19
    :cond_0
    sget v0, Lcom/helpshift/ah;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/ah;->c:I

    .line 21
    sget-boolean v0, Lcom/helpshift/ah;->e:Z

    if-nez v0, :cond_1

    .line 22
    sget-boolean v0, Lcom/helpshift/ah;->a:Z

    if-eqz v0, :cond_2

    .line 23
    const-string/jumbo v0, "d"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 27
    :goto_0
    invoke-static {}, Lcom/helpshift/ea;->a()Lcom/helpshift/eg;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v0}, Lcom/helpshift/eg;->a()V

    .line 32
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/ah;->e:Z

    .line 33
    return-void

    .line 25
    :cond_2
    const-string/jumbo v0, "o"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 36
    sget v0, Lcom/helpshift/ah;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/ah;->d:I

    .line 37
    sget v0, Lcom/helpshift/ah;->c:I

    sget v1, Lcom/helpshift/ah;->d:I

    if-ne v0, v1, :cond_0

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/ah;->e:Z

    .line 39
    const-string/jumbo v0, "q"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/helpshift/ah;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->e()V

    .line 41
    invoke-static {}, Lcom/helpshift/ea;->a()Lcom/helpshift/eg;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/helpshift/eg;->b()V

    .line 46
    :cond_0
    return-void
.end method
