.class public Lcom/helpshift/ei;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/helpshift/ei;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "__hs__db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    invoke-virtual {p0}, Lcom/helpshift/ei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/helpshift/ei;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/helpshift/ei;

    invoke-direct {v0, p0}, Lcom/helpshift/ei;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    .line 26
    :cond_0
    sget-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    return-object v0
.end method

.method public static declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/helpshift/ei;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/helpshift/ei;->a:Lcom/helpshift/ei;

    invoke-virtual {v0}, Lcom/helpshift/ei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/helpshift/bl;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    sget-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/helpshift/dn;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    sget-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/helpshift/ei;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    :cond_0
    sget-object v0, Lcom/helpshift/ei;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p1}, Lcom/helpshift/dn;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    invoke-static {p1}, Lcom/helpshift/bl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/helpshift/dn;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 46
    invoke-static {p1, p2, p3}, Lcom/helpshift/bl;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/helpshift/ei;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method
