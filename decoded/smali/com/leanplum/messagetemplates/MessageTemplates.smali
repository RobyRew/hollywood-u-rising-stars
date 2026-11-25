.class public Lcom/leanplum/messagetemplates/MessageTemplates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/leanplum/messagetemplates/MessageTemplates;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized register(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 74
    const-class v1, Lcom/leanplum/messagetemplates/MessageTemplates;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/leanplum/messagetemplates/MessageTemplates;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    monitor-exit v1

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/leanplum/messagetemplates/MessageTemplates;->a:Ljava/lang/Boolean;

    .line 1031
    const-string/jumbo v0, "Open URL"

    sget v2, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    new-instance v3, Lcom/leanplum/ActionArgs;

    invoke-direct {v3}, Lcom/leanplum/ActionArgs;-><init>()V

    const-string/jumbo v4, "URL"

    const-string/jumbo v5, "http://www.example.com"

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    new-instance v4, Lcom/leanplum/messagetemplates/t;

    invoke-direct {v4}, Lcom/leanplum/messagetemplates/t;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/leanplum/Leanplum;->defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 2028
    const-string/jumbo v0, "Alert"

    sget v2, Lcom/leanplum/Leanplum;->ACTION_KIND_MESSAGE:I

    sget v3, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/leanplum/ActionArgs;

    invoke-direct {v3}, Lcom/leanplum/ActionArgs;-><init>()V

    const-string/jumbo v4, "Title"

    invoke-static {p0}, Lcom/leanplum/messagetemplates/MessageTemplates;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Message"

    const-string/jumbo v5, "Alert message goes here."

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Dismiss text"

    const-string/jumbo v5, "OK"

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Dismiss action"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->withAction(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    new-instance v4, Lcom/leanplum/messagetemplates/b;

    invoke-direct {v4}, Lcom/leanplum/messagetemplates/b;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/leanplum/Leanplum;->defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 3028
    const-string/jumbo v0, "Confirm"

    sget v2, Lcom/leanplum/Leanplum;->ACTION_KIND_MESSAGE:I

    sget v3, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/leanplum/ActionArgs;

    invoke-direct {v3}, Lcom/leanplum/ActionArgs;-><init>()V

    const-string/jumbo v4, "Title"

    invoke-static {p0}, Lcom/leanplum/messagetemplates/MessageTemplates;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Message"

    const-string/jumbo v5, "Confirmation message goes here."

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Accept text"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Cancel text"

    const-string/jumbo v5, "No"

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Accept action"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->withAction(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    const-string/jumbo v4, "Cancel action"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/leanplum/ActionArgs;->withAction(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;

    move-result-object v3

    new-instance v4, Lcom/leanplum/messagetemplates/m;

    invoke-direct {v4}, Lcom/leanplum/messagetemplates/m;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/leanplum/Leanplum;->defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 81
    invoke-static {p0}, Lcom/leanplum/messagetemplates/CenterPopup;->register(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/leanplum/messagetemplates/Interstitial;->register(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/leanplum/messagetemplates/WebInterstitial;->register(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
